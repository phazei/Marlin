M104 S0 ;extruder heater off
M140 S0 ;heated bed heater off

G91 ;relative positioning

G1 E-5 F1200  ;retract the filament a bit before lifting the nozzle, to release some of the pressure
G1 Z+5 F1500
G1 E-20 X-20 Y-20 F6000 ;move Z up a bit and retract filament even more

G90 ;absolute positioning
G1 X0 Y0
M84 ;steppers off
