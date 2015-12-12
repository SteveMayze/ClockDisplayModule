




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

   For Count = 0 To 9
      Portd = Count                                         ' Segement A and B ON
      For Digit = 0 To 5
         Portc = Digit
         Waitms 250
      Next
                                                      ' digit
   Next                                                     ' count

Loop

End