
'$crystal = 10000000
$regfile = "m88pdef.dat"


' $baud = 4800


Config Portc = Output                                       ' Digits
Config Portd = Output                                       ' Segments

Dim Digit As Byte



Do

For Digit = 0 To 6

   Portc = Digit

   Portd = 3                                                ' Segement A and B ON

   Waitms 500

   Portd = 0                                                ' All segments OFF
   Waitms 500

Next


Loop

End