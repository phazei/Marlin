

M117 Clean           ; Indicate nozzle clean in progress on LCD
M109 S200            ; Uncomment to set your own temp [run warmer to clean out nozzle]
M107                 ; Turn layer fan off
G21                  ; Set to metric [change to G20 if you want Imperial]
G90                  ; Force coordinates to be absolute relative to the origin
G28                  ; Home X/Y/Z axis
G0 X0 Y1 F9000       ; Move in 1mm from edge and up [z] 0.15mm
G0 Z0.15 F1500       ; Move in 1mm from edge and up [z] 0.15mm
G92 E0               ; Set extruder to [0] zero
G1 X190 E65 F500     ; Extrude 65mm filiment along X axis 190mm long to prime and clean the nozzle
G92 E0               ; Reset extruder to [0] zero end of cleaning run
G1 E-3 F500          ; Retract filiment by 3 mm to reduce string effect
G1 Z15 F1500         ; Move over and rise to safe Z height
G1 X190 Y3 F9000     ; Move over and rise to safe Z height
G1 X0 Y3 Z15 F9000   ; Move back to front of bed at safe Z height to shear strings
;
; Ensure extruder is not reset by other code or it will be 3mm short [see next line also]
;G1 E3 F500          ; Uncomment if you believe exruder will be reset
; Recommend turning off SKIRT in the slicer to avoid strings pulled into first layer
; Begin printing with sliced GCode after here
