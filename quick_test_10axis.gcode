; ===================================================================
; 快速10轴测试 - 简化版本
; BIGTREETECH Octopus MAX EZ - 每轴5秒测试
; ===================================================================

M117 Quick 10-axis test
G21 ; 毫米单位
G90 ; 绝对坐标
M82 ; 挤出机绝对坐标

; === 快速单轴测试 ===
M117 X axis (Motor1)
G1 X10 F1200
G4 P2000
G1 X0 F1200

M117 Y axis (Motor2)  
G1 Y10 F1200
G4 P2000
G1 Y0 F1200

M117 Z axis (Motor3)
G1 Z5 F600
G4 P2000
G1 Z0 F600

M117 U axis (Motor4)
G1 U10 F1200
G4 P2000
G1 U0 F1200

M117 V axis (Motor5)
G1 V10 F1200
G4 P2000
G1 V0 F1200

M117 W axis (Motor6)
G1 W10 F1200
G4 P2000
G1 W0 F1200

M117 I axis (Motor7)
G1 I10 F1200
G4 P2000
G1 I0 F1200

M117 J axis (Motor8)
G1 J10 F1200
G4 P2000
G1 J0 F1200

M117 K axis (Motor9)
G1 K10 F1200
G4 P2000
G1 K0 F1200

M117 E0 axis (Motor10)
G1 E5 F300
G4 P2000
G1 E0 F300

; === 全轴协调测试 ===
M117 All axes together
G1 X5 Y5 Z2 U5 V5 W5 I5 J5 K5 E2 F800
G4 P3000
G1 X0 Y0 Z0 U0 V0 W0 I0 J0 K0 E0 F800

M117 Test complete!
M84 ; 关闭电机