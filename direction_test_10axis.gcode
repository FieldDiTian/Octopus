; ===================================================================
; 电机方向验证测试 - 10轴系统
; 用于确认每个电机的转动方向是否正确
; ===================================================================

M117 Motor direction test
G21 ; 毫米单位
G90 ; 绝对坐标
M82 ; 挤出机绝对坐标

; 方向测试说明:
; - 正值应该让电机朝"正方向"转动
; - 负值应该让电机朝"负方向"转动
; - 观察电机转动方向并记录

; === Motor 1 - X轴方向测试 ===
M117 Motor1 X+ direction
G1 X20 F600    ; X轴正方向
G4 P3000       ; 等待3秒观察
M117 Motor1 X- direction  
G1 X-20 F600   ; X轴负方向
G4 P3000
G1 X0 F600     ; 回中心
G4 P1000

; === Motor 2 - Y轴方向测试 ===
M117 Motor2 Y+ direction
G1 Y20 F600
G4 P3000
M117 Motor2 Y- direction
G1 Y-20 F600
G4 P3000
G1 Y0 F600
G4 P1000

; === Motor 3 - Z轴方向测试 ===
M117 Motor3 Z+ direction
G1 Z10 F300    ; Z轴较慢
G4 P3000
M117 Motor3 Z- direction
G1 Z-10 F300
G4 P3000
G1 Z0 F300
G4 P1000

; === Motor 4 - U轴方向测试 ===
M117 Motor4 U+ direction
G1 U20 F600
G4 P3000
M117 Motor4 U- direction
G1 U-20 F600
G4 P3000
G1 U0 F600
G4 P1000

; === Motor 5 - V轴方向测试 ===
M117 Motor5 V+ direction
G1 V20 F600
G4 P3000
M117 Motor5 V- direction
G1 V-20 F600
G4 P3000
G1 V0 F600
G4 P1000

; === Motor 6 - W轴方向测试 ===
M117 Motor6 W+ direction
G1 W20 F600
G4 P3000
M117 Motor6 W- direction
G1 W-20 F600
G4 P3000
G1 W0 F600
G4 P1000

; === Motor 7 - I轴方向测试 ===
M117 Motor7 I+ direction
G1 I20 F600
G4 P3000
M117 Motor7 I- direction
G1 I-20 F600
G4 P3000
G1 I0 F600
G4 P1000

; === Motor 8 - J轴方向测试 ===
M117 Motor8 J+ direction
G1 J20 F600
G4 P3000
M117 Motor8 J- direction
G1 J-20 F600
G4 P3000
G1 J0 F600
G4 P1000

; === Motor 9 - K轴方向测试 ===
M117 Motor9 K+ direction
G1 K20 F600
G4 P3000
M117 Motor9 K- direction
G1 K-20 F600
G4 P3000
G1 K0 F600
G4 P1000

; === Motor 10 - E0轴方向测试 ===
M117 Motor10 E+ direction
G1 E10 F200    ; 挤出机较慢
G4 P3000
M117 Motor10 E- direction
G1 E-10 F200
G4 P3000
G1 E0 F200
G4 P1000

M117 Direction test done!
M84 ; 关闭所有电机

; ===================================================================
; 测试结果记录表格:
; 
; Motor | 轴名 | 正转方向 | 负转方向 | 是否正确
; ------|------|----------|----------|----------
; 1     | X    |          |          |
; 2     | Y    |          |          |
; 3     | Z    |          |          |
; 4     | U    |          |          |
; 5     | V    |          |          |
; 6     | W    |          |          |
; 7     | I    |          |          |
; 8     | J    |          |          |
; 9     | K    |          |          |
; 10    | E0   |          |          |
;
; 如果方向不正确，请在Configuration.h中修改对应的INVERT_*_DIR设置
; ===================================================================