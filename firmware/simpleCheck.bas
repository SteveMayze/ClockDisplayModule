

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
$regfile = "m88def.dat"
$hwstack = 40
$swstack = 40
$framesize = 60

' $baud = 4800


Config Sda = Portc.4
Config Scl = Portc.5

Config Spi = Hard , Master = Yes , Data_order = Lsb
Spiinit

' Timer and interrupt Configuration ==========================================

On Pcint2 Pcint2_isr
Pcmsk2.0 = 1
Pcmsk2.1 = 1

Enable Pcint2
Enable Interrupts

' I/O Configuration ===========================================================


Config Pind.0 = Input
Second_interrupt Alias Pinb.1
Dim New_second As Bit

Config Pind.1 = Input
Dcf_interrupt Alias Pinb.2


' RTC-DCF
Const Write_slaveaddress = &H02
Const Read_slaveaddress = &H03
Dim Slaveaddress As Byte


' Display

' Scan Lmit 0xXB
Const Scan_limit_addr = &B00001011
Const Scan_limit_value = &B00000101                         ' Display digits 0 1 2 3 4 5

' Decode mode 0xX9
Const Decode_mode_addr = &B00001001
Const Decode_mode_value = &B00001111                        ' Code B decode for digits 3-0 No decode for digits 7-4


Dim Spi_data(2) As Byte

' Holding the values of the time as fields.
Dim Seconds As Byte
Dim Minutes As Byte
Dim Hours As Byte

Dim Hour_bcd As Byte
Dim Minute_bcd As Byte
Dim Second_bcd As Byte

Dim Tmins As Byte
Dim Thours As Byte

Dim Position As Byte
Position = 1

Dim Displaystr As String * 4
Dim Digitstring As String * 1
Dim Tempstr As String * 4
Dim Timestr As String * 4

Dim Value As Byte

Dim Tenthcount As Byte

Dim Time_dcf As Byte
Time_dcf = 250



' Main Loop ===================================================================

Seconds = 0
Minutes = 6
Hours = 18

Displaystr = "1806"


Do
   Slaveaddress = Write_slaveaddress
   I2cstart
   I2cwbyte Slaveaddress
   If Err = 0 Then
      Wait 2
   Else
     Slaveaddress = Slaveaddress + 2
   End If

   I2cstop
Loop Until Err = 0


Tenthcount = 0

Gosub Rtc_dcf_initialisation
Gosub Init_display

Do
   If Time_dcf = 0 Then
      Gosub Read_time_from_dfc
      Waitms 500
      Gosub Delete_dcf_interrupt_flag
   End If
   If Time_dcf < 250 Then Incr Time_dcf

   If New_second = 1 Then
      ' Could toggle a LED on a new second here...
      ' Write out the time to the display
      Gosub Write_time_to_display
      New_second = 0
   End If
Loop
End




' Subroutines =================================================================

Init_display:

   Spi_data(1) = Scan_limit_addr
   Spi_data(2) = Scan_limit_value
   Gosub Write_to_spi

   Spi_data(1) = Decode_mode_addr
   Spi_data(2) = Decode_mode_value
   Gosub Write_to_spi

Return

Write_time_to_display:



Return


Write_to_spi:

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


