[_tb_system_call storage=system/_new_c.ks]

[tb_start_tyrano_code]

*new_c

[eval exp="f.shop_c=0" ]

[if exp="f.flag3==0" ]
[eval exp="f.flag3=1" ]

[eval exp="f.c_e1=0" ]
[eval exp="f.c_e2=0" ]
[eval exp="f.c_e3=0" ]
[eval exp="f.c_e4=0" ]
[eval exp="f.c_e5=0" ]

[eval exp="f.c_f1=0" ]
[eval exp="f.c_f2=0" ]
[eval exp="f.c_f3=0" ]
[endif]

[if exp="f.flag3==1" ]
[eval exp="f.flag3=2" ]
[eval exp="f.flower_b=0" ]
[endif]


[if exp="f.flag3==2" ]
[eval exp="f.flag3=3" ]

[eval exp="f.c_g1=0" ]
[eval exp="f.c_g2=0" ]
[eval exp="f.c_g3=0" ]
[eval exp="f.c_g4=0" ]
[eval exp="f.c_g5=0" ]

[eval exp="f.c_h1=0" ]
[eval exp="f.c_h2=0" ]
[eval exp="f.c_h3=0" ]
[eval exp="f.c_h4=0" ]

[eval exp="f.c_i1=0" ]
[eval exp="f.c_i2=0" ]
[eval exp="f.c_i3=0" ]
[eval exp="f.c_i4=0" ]
[eval exp="f.c_i5=0" ]

[eval exp="f.r_c1=0" ]
[eval exp="f.r_c2=0" ]

[eval exp="f.a_a1=0" ]
[eval exp="f.a_a2=0" ]
[eval exp="f.a_a3=0" ]
[eval exp="f.a_a4=0" ]

[eval exp="f.h_a1=0" ]
[eval exp="f.h_a2=0" ]
[eval exp="f.h_b1=0" ]
[eval exp="f.h_b2=0" ]

[eval exp="f.ne_a1=0" ]
[eval exp="f.ne_a2=0" ]
[eval exp="f.ne_a3=0" ]
[eval exp="f.ne_a4=0" ]
[eval exp="f.ne_a5=0" ]
[eval exp="f.ne_a6=0" ]
[eval exp="f.ne_a7=0" ]

[eval exp="f.ne_b1=0" ]
[eval exp="f.ne_b2=0" ]
[eval exp="f.ne_b3=0" ]
[eval exp="f.ne_b4=0" ]
[endif]


[if exp="f.flag3==3" ]
[eval exp="f.flag3=4" ]

[eval exp="f.shop_talk=0" ]
[eval exp="f.cafe_count=0" ]
[eval exp="f.cafe_talk=0" ]
[eval exp="f.cafe_c=0" ]
[eval exp="f.takeout=0" ]
[eval exp="f.miyage='non'" ]
[eval exp="f.work_c=1" ]
[endif]

[if exp="f.flag3==4" ]
[eval exp="f.flag3=5" ]

[eval exp="f.self=0" ]
[endif]

[return]


[_tb_end_tyrano_code]

