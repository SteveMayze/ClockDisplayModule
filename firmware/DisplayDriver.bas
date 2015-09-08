' ============================================================================
' Display Driver
'
' Register         Name              Note
' 0x01             Hour 10s          The 10s digit for the hour part of the
'                                    time
'                                    BCD value from 0-2
'
' 0x02             Hour units        The units digit for the hour part of the
'                                    time
'                                    BCD value from 0-9
'
' 0x03             Minuts 10s        The 10s digit for the minutes part of
'                                    the time
'                                    BCD value from 0-5
'
' 0x04             Minutes units     The units digit for the minutes part of
'                                    the time.
'                                    BCD value from 0-9
'
' 0x05             Colon             The colon (between the hours and minutes)
'
'                                    0x00 - Colon OFF
'                                    0x00 - Colon ON
'
' 0x06             Indicators        The indicator lamps that are featured on
'                                    the display
'
'                                    0x00 - All indicators OFF
'                                    0x01 - Top indicator ON
'                                    0x02 - Bottom indicator ON
'                                    0x03 - Top and Bottom indicator ON
'
' 0x0A             Intensity*        Controls the intensity of the display
'                                    0x00 -
'
' 0x0C             Power mode        Enables the display unit
'                                    0x00 - Display unit OFF
'                                    0x01 - Display unit ON
'
' 0x0D             Digit Blink*      Defines which digit or display element
'                                    should blink. The data value of the
'                                    register is a set of bit-wise flags for
'                                    each element. OR-ing the various bit
'                                    enables the digits to be selectively
'                                    enabled for blocking, or not.
'
'                                    0x00 - No blink
'                                    0x02 - Digit 1
'                                    0x04 - Digit 2
'                                    0x08 - Digit 3
'                                    0x10 - Digit 4
'                                    0x11 - Colon
'                                    0x12 - Indicators
'                                    0x1F - All
'
' 0x0E             Blink Rate*       Controls the blink rate of the digit
'
'                                    0x00 -
'
' 0x0F             Test              Lamp test
'
'                                    0x00 - Lamp Test Off
'                                    0x01 - All segements on
'                                    0x02 - Sequence run*
'
' * Optional features that may be implemented at some stage.
'
' ============================================================================



$regfile = "m88pdef.dat"
$crystal = 1000000
$hwstack = 40
$swstack = 16
$framesize = 32

Config Timer0 = Timer , Prescale = 256
On Timer0 Renderdisplay_isr
Const Timer0_count = 250                                    '200Hz For The Display


Config Timer1 = Timer , Prescale = 64
On Timer1 Tenthsecondtimer_isr
Const Timer1_tenthsecondcount = 63973                       ' 65535 - 1563

Dim Rbit As Bit
Config Pinb.6 = Output                                      ' MISO
Config Spi = Hard , Interrupt = On , Data Order = Msb , Master = No , Polarity = Low , Phase = 0 , Clockrate = 128
Spiinit

On Spi Spi_isr Nosave

Enable Timer0
Enable Timer1
Enable Interrupts



Config Portc = Output                                       ' Digits
Config Portd = Output                                       ' Segments

Dim Digit As Byte

Dim Position As Byte
Position = 1

Dim Value As Byte



Dim Digits(6) As Byte

Dim Tenthcount As Byte

Dim Spi_d As Byte
' Dim Spi_data(2) As Byte
Dim Spi_idx As Bit
Dim Idx As Byte
Dim Register(16) As Byte
Const Hours_10 = &H01                                       ' BCD value 0 - 2
Const Hours_unit = &H02                                     ' BCD value 0 - 9
Const Minutes_10 = &H03                                     ' BCD value 0 - 5
Const Minutes_unit = &H04                                   ' BCD value 0 - 9
Const Colon = &H05                                          ' &H00 = diabled, &H01 = enabled
Const Indicators = &H06                                     ' &H00 = All OFF, &H01 = Top, &H02 = Bottom, &H03 = Top and bottom
Const Intensity = &H0A                                      ' Not implemented
Const Power_mode = &H0C                                     ' &H00 = display disabled, &H01 display enabled
Const Digit_blink = &H0D                                    ' &H00 = none, &H02 = Digit 1, &H04 = Digit 2, &H08 = Digit 3, &H10 = Digit 4, &H20 = colon, &H40 = indicators, &H7F = ALL
Const Blink_rate = &H0E                                     ' Not implemented
Const Test_mode = &H0F                                      ' &H00 = disabled, &H01 = all segements on, &H02 = sequence run*,

Const Disabled = 0
Const Enabled = 1



Spdr = 0                                                    ' start with sending 0 the first time
Register(test_mode) = Disabled
Register(power_mode) = Enabled
Register(digit_blink) = Enabled

Digits(1) = 1
Digits(2) = 2
Digits(3) = 3
Digits(4) = 4
Digits(5) = 5
Digits(6) = 6

Position = 5

Spdr = 0
Reset Spi_idx
Do
   If Rbit = 1 Then
      Reset Rbit

   If Spi_idx = 0 Then
      Select Case Idx
         Case Hours_10:
            Digits(1) = Register(idx)
         Case Hours_unit:
             Digits(2) = Register(idx)
         Case Minutes_10:
            Digits(3) = Register(idx)
         Case Minutes_unit:
            Digits(4) = Register(idx)
         Case Colon:
            Digits(5) = Register(idx)
         Case Indicators:
            Digits(6) = Register(idx)
         ' Case Intensity:
         ' Case Power_mode:
         Case Digit_blink:
            If(register(idx) = 1 Then
            End If
         ' Case Blink_rate:
         Case Test_mode:
            If Register(idx) = Enabled Then
               Digits(1) = 8
               Digits(2) = 8
               Digits(3) = 8
               Digits(4) = 8
               Digits(5) = 8
               Digits(6) = 8
            Else
               Digits(1) = 0
               Digits(2) = 0
               Digits(3) = 0
               Digits(4) = 0
               Digits(5) = 0
               Digits(6) = 0
            End If
         Case Else
      End Select
      End If
   End If
Loop
End                                                         'end program



Renderdisplay_isr:                                          '50 Hz
   Timer0 = Timer0_count

   Incr Position
   If Position > 5 Then
      Position = 0
   End If

   Digit = Position + 1
   Portc = Makebcd(position)
   If Register(power_mode) > 0 Then
      Value = Digits(digit)
   Else
      Value = 0
   End If
   Portd = Value

Return



Tenthsecondtimer_isr:
   Timer1 = Timer1_tenthsecondcount

   Incr Tenthcount
   If Tenthcount = 5 Or Tenthcount = 10 Then                ' 0.5 Second

   End If

   If Tenthcount > 9 Then                                   ' One Second
      Tenthcount = 0
   End If

 Return



Spi_isr:
   push r24    ; save used register
   in r24,sreg ; save sreg
   push r24
   Set Rbit                                                 ' we received something
      If Spi_idx = 0 Then
         Idx = Spdr
         Set Spi_idx
      Else
         Register(idx) = Spdr
         Reset Spi_idx
      End If
   pop r24
   !out sreg,r24 ; restore sreg
   pop r24       ; and the used register


Return