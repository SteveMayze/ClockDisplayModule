
$crystal = 1000000
$regfile = "m88adef.dat"
$hwstack = 40
$swstack = 40
$framesize = 60

' $baud = 4800


Config Portb.0 = Output


Do
   Toggle Portb.0

   Wait 1

   Loop

   End

