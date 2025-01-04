G21            ; Set units to millimeters
G17            ; Select XY plane
G90            ; Absolute positioning
G0 Z5.0        ; Move to safe height
$12=0.001      ; Arc tolerance

; Move to lead-in start point (just outside the circle)
G0 X21 Y0      ; Start 1mm outside the circle radius
G1 Z-3.0 F200  ; Lower tool to cutting depth at 200mm/min
G1 X20 Y0 F300 ; Move linearly to the circle start position

; Cut the circle
G2 X20 Y0 I-20 J0 F600 ; Cut circle clockwise

G0 Z5.0        ; Raise tool to safe height
G0 X0 Y0       ; Return to home position