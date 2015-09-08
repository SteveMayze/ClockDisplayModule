

' ============================================================================
' Alarm Clock
'
' Seven Segment display, plus Colon, plus AM/PM sign
' The display is driven from PORT-B, pins 1-7
' The Colon is driven by PORT-B pin 0
'
' The multiplexing of the four digits will be driven by PORTD, pins 0-3
'
' Five inputs are required for the following functions
'
'  Alarm enabled - Contact switch  - PORT-C 0
'  Alarm display/set - Press button - PORT-C 1
'  Fast set - Press button - PORT-C 2
'  Slow set - Press button - PORT-C 3
'  Summer/Winter toggle - Press button - PORT-C 4
'
' ============================================================================

$crystal = 1000000
$regfile = "m88adef.dat"
$hwstack = 40
$swstack = 40
$framesize = 60

$baud = 4800


Config Sda = Portc.4
Config Scl = Portc.5

Config Spi = Hard , Interrupt = Off , Data Order = Msb , Master = Yes , Polarity = Low , Phase = 0 , Clockrate = 128
Spiinit

' Timer and interrupt Configuration ==========================================

On Pcint1 Pcint2_isr
Pcmsk1.0 = 1                                                ' PCINT8 - 1 Second pulse    PC0 pin 23
Pcmsk1.1 = 1                                                ' PCINT9 - DCF message       PC1 pin 24

Enable Pcint1
Enable Interrupts

' I/O Configuration ===========================================================



Config Pinc.0 = Input
Second_interrupt Alias Pinc.0
Dim New_second As Bit
Dim Second_count As Byte

Config Pinc.1 = Input
Dcf_interrupt Alias Pinc.1

Config Portb.0 = Output
Heartbeat Alias Portb.0

Config Portb.1 = Output
Hb2 Alias Portb.1

' RTC-DCF
Const Write_slaveaddress = &H02
Const Read_slaveaddress = &H03
Dim Slaveaddress As Byte


' Display

Const Intensity_register = &H0A
Const Intensity_max = &H0F
Const Intensity_med = &H07
Const Intensity_min = &H00


Const Shutdown_register = &H0C
Const Normal_mode = &H01

Const Display_test_register = &H0F
Const Display_test_on = &H01
Const Display_test_off = &H00


' Scan Lmit 0xXB
Const Scan_limit_addr = &H0B
Const Scan_limit_value = &H05                               ' Display digits 0 1 2 3 4 5

' Decode mode 0xX9
Const Decode_mode_addr = &H09
Const Decode_mode_value = &H0F                              ' Code B decode for digits 3-0 No decode for digits 7-4

Const Digit1_addr = &H01
Const Digit2_addr = &H02
Const Digit3_addr = &H03
Const Digit4_addr = &H04
Const Colon_addr = &H05
Const Signal_addr = &H06


Dim Spi_data(2) As Byte

' Holding the values of the time as fields.
Dim Seconds As Byte
Dim Minutes As Byte
Dim Hours As Byte

Dim Hour_bcd As Byte
Dim Minute_bcd As Byte
Dim Second_bcd As Byte

Dim Colon_enabled As Bit

Dim Time_dcf As Byte
Time_dcf = 250



' Main Loop ===================================================================

Seconds = 0
Minutes = 6
Hours = 18


Heartbeat = 1
' Wait 2

Do
   Slaveaddress = Write_slaveaddress
   I2cstart
   I2cwbyte Slaveaddress
   If Err = 0 Then
      Hb2 = 1
      Wait 2
      Hb2 = 0
   Else
     Slaveaddress = Slaveaddress + 2
   End If
   I2cstop
Loop Until Err = 0

Heartbeat = 0

Wait 1

Gosub Rtc_dcf_initialisation

Gosub Init_display

Hb2 = 1
Wait 2
Hb2 = 0


Second_count = 0
Print "starting"
Do
   If New_second = 1 Then
      Gosub Read_time_from_dfc
      If Time_dcf = 0 Then
         Set Hb2
         Waitms 500
         Reset Hb2
         Gosub Delete_dcf_interrupt_flag
         Time_dcf = 250
      End If
      If Time_dcf < 250 Then Incr Time_dcf

      Toggle Heartbeat
      Toggle Colon_enabled

      Incr Second_count
      If Second_count > 60 Then
         Second_count = 0
         Gosub Write_time_to_display
      End If
         Print "TIME " ; Hours ; ":" ; Minutes
      New_second = 0
   End If
Loop
End





' Subroutines =================================================================

Init_display:

   Set Hb2
   Wait 5
   Reset Hb2

   Spi_data(1) = Shutdown_register
   Spi_data(2) = Normal_mode
   Spiout Spi_data(1) , 2

   Spi_data(1) = Display_test_register
   Spi_data(2) = Display_test_on
   Spiout Spi_data(1) , 2

   Wait 2

   Spi_data(1) = Display_test_register
   Spi_data(2) = Display_test_off
   Spiout Spi_data(1) , 2

   Spi_data(1) = Intensity_register
   Spi_data(2) = Intensity_max
   Spiout Spi_data(1) , 2

   Spi_data(1) = Scan_limit_addr
   Spi_data(2) = Scan_limit_value
   Spiout Spi_data(1) , 2

   Spi_data(1) = Decode_mode_addr
   Spi_data(2) = Decode_mode_value
   Spiout Spi_data(1) , 2

   Spi_data(1) = Signal_addr
   Spi_data(2) = 0
   Spiout Spi_data(1) , 2

   Spi_data(1) = Colon_addr
   Spi_data(2) = 0
   Spiout Spi_data(1) , 2

Return



Write_time_to_display:

   ' hours 10s
   Spi_data(1) = Digit1_addr
   Spi_data(2) = Makebcd(hours)
   Shift Spi_data(2) , Right , 4
   Spiout Spi_data(1) , 2

   ' hours units
   Spi_data(1) = Digit2_addr
   Spi_data(2) = Makebcd(hours)
   Shift Spi_data(2) , Left , 4
   Shift Spi_data(2) , Right , 4
   Spiout Spi_data(1) , 2

   ' Minutes 10s
   Spi_data(1) = Digit3_addr
   Spi_data(2) = Makebcd(minutes)
   Shift Spi_data(2) , Right , 4
   Spiout Spi_data(1) , 2

   ' Minutes units
   Spi_data(1) = Digit4_addr
   Spi_data(2) = Makebcd(minutes)
   Shift Spi_data(2) , Left , 4
   Shift Spi_data(2) , Right , 4
   Spiout Spi_data(1) , 2

   Spi_data(1) = Colon_addr
   If Colon_enabled = 1 Then
      Spi_data(2) = &B01100000
   Else
      Spi_data(2) = &H00
   End If
   Spiout Spi_data(1) , 2





Return


Rtc_dcf_initialisation:
   I2cstart
   I2cwbyte Write_slaveaddress
   I2cwbyte &H0A
   I2cwbyte &B00000000
   I2cwbyte 0
   I2cwbyte &B00000010
   I2cwbyte &B00000111
   I2cstop
Return



Write_time_to_dfc:
   Hour_bcd = Makebcd(hours)
   Minute_bcd = Makebcd(minutes)
   Second_bcd = 0
   I2cstart
   I2cwbyte Write_slaveaddress
   I2cwbyte &H00
   I2cwbyte Second_bcd
   I2cwbyte Minute_bcd
   I2cwbyte Hour_bcd
   I2cstop
Return


Read_time_from_dfc:
   I2cstart
   I2cwbyte Write_slaveaddress
   I2cwbyte &H00
   I2cstart
   I2cwbyte Read_slaveaddress
   I2crbyte Second_bcd , Ack
   I2crbyte Minute_bcd , Ack
   I2crbyte Hour_bcd , Nack
   I2cstop

   Hours = Makedec(hour_bcd)
   Minutes = Makedec(minute_bcd)
   Seconds = Makedec(second_bcd)

Return

Delete_dcf_interrupt_flag:
   I2cstart
   I2cwbyte Write_slaveaddress
   I2cwbyte &H0E
   I2cwbyte &B00000001
   I2cstop
Return


' Timer ISR ===================================================================


Pcint2_isr:
   If Second_interrupt = 0 Then New_second = 1
   If Dcf_interrupt = 0 Then Time_dcf = 0
Return