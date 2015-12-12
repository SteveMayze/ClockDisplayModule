




$regfile = "m88pdef.dat"
$crystal = 4000000
$hwstack=40
$swstack=16
$framesize=32

' $baud = 4800


Config Portc = Output                                       ' Digits
Config Portd = Output                                       ' Segments

Dim Digit As Byte
Dim Count As Byte

Digit = 0
Portc = Digit

Do

   For Count = 0 To 9
      Portd = Count                                         ' Segement A and B ON
      Waitms 500
   Next

Loop

End