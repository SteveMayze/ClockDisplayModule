




$regfile = "m88pdef.dat"
$crystal = 1000000
$hwstack = 40
$swstack = 16
$framesize = 32

' $baud = 4800


Config Timer0 = Timer , Prescale = 256
On Timer0 Renderdisplay_isr
Const Timer0_count = 236                                    '200Hz For The Display


Config Timer1 = Timer , Prescale = 64
On Timer1 Tenthsecondtimer_isr
Const Timer1_tenthsecondcount = 63973                       ' 65535 - 1563


Enable Timer0
Enable Timer1
Enable Interrupts



Config Portc = Output                                       ' Digits
Config Portd = Output                                       ' Segments

Dim Digit As Byte
Dim Count As Byte


Dim Position As Byte
Position = 1

Dim Displaystr As String * 4
Dim Digitstring As String * 1
Dim Value As Byte


Dim Seconds As Byte
Dim Minutes As Byte
Dim Hours As Byte

Dim Tenthcount As Byte
Dim Timestr As String * 4
Dim Tempstr As String * 4





Seconds = 4
Minutes = 3
Hours = 12

Displaystr = "1238"


Do

   Wait 1

Loop

End



Renderdisplay_isr:                                          '50 Hz
   Timer0 = Timer0_count

   Incr Position
   If Position > 4 Then
      Position = 0
   End If

   Digitstring = Mid(displaystr , Position , 1 )
   Digit = Position - 1
   Portc = Makebcd(digit)
   Value = Val(digitstring)
   Portd = Makebcd(value)

Return



Tenthsecondtimer_isr:
   Timer1 = Timer1_tenthsecondcount

   Incr Tenthcount
   Timestr = Displaystr
   If Tenthcount = 5 Or Tenthcount = 10 Then
   End If

   If Tenthcount > 9 Then                                   ' One Second

      Tenthcount = 0
      Timestr = Str(minutes)
      If Len(timestr) < 2 Then Timestr = "0" + Timestr
      Tempstr = Str(hours)
      Timestr = Tempstr + Timestr
      If Len(timestr) < 4 Then Timestr = "0" + Timestr
      Displaystr = Timestr
   End If

 Return
