
'$crystal = 10000000
$regfile = "m8adef.dat"


' $baud = 4800


Config Portb = Output


Portb.0 = 1

Do

   Toggle Portb.0

   Waitms 500

Loop

End