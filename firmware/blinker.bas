
<<<<<<< HEAD
$crystal = 1000000
$regfile = "m88adef.dat"
$hwstack = 40
$swstack = 40
$framesize = 60
=======





$Regfile="m88pdef.dat"
$Crystal=4000000
$hwstack=40
$swstack=40
$framesize=60


>>>>>>> UCtrl_small

' $baud = 4800


<<<<<<< HEAD
Config Portb.0 = Output


Do
   Toggle Portb.0

   Wait 1

   Loop

   End

=======
Config Portb = Output


Portb.0 = 1

Do

   Set Portb.0

   Waitms 1000

   Reset Portb.0

   ' Waitms 500

   Set Portb.1

   Waitms 1000

   Reset Portb.1

   Waitms 2000

Loop

End
>>>>>>> UCtrl_small
