




$regfile = "m88pdef.dat"
$crystal = 1000000
$hwstack = 40
$swstack = 16
$framesize = 32

' $baud = 4800


Config Portc = Output                                       ' Digits
Config Portd = Output                                       ' Segments

Dim Digit As Byte
Dim Count As Byte


Do

   For Digit = 0 To 5
     ' For Count = 0 To 5
         Portd = Digit
         Portc = Digit
         Waitms 1
     ' Next                                                  ' count
   Next                                                     ' digit

Loop

End