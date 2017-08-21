[_tb_system_call storage=system/_preview.ks ]

[tb_start_tyrano_code]
*talk


[jump  storage="opening.ks"  target="skip"  ]

*skip

[tb_show_message_window  ]
[eval exp="f.name='主人'" ]
[eval exp="f.step=1" ]
[eval exp="f.feeling=0" ]
[eval exp="f.act=0" ]
[eval exp="f.nade=1" ]
[eval exp="f.talk=1" ]
[eval exp="f.walk=1" ]
[eval exp="f.flag1=0" ]
[eval exp="f.flag2=0" ]
[eval exp="f.flag3=0" ]

[eval exp="f.rape=0" ]
[eval exp="f.feed=0" ]
[eval exp="f.shop=0" ]
[eval exp="f.lunch=0" ]
[eval exp="f.wood=0" ]
[eval exp="f.out=0" ]
[eval exp="f.trust=0" ]

[eval exp="f.ef=1" ]
[eval exp="f.se=1" ]
[eval exp="f.tx=1" ]
[eval exp="f.xr=1" ]
[eval exp="f.fin_choice=1" ]
[eval exp="f.fin_in_out=1" ]
[eval exp="f.full=0" ]

[eval exp="f.ch_win=1" ]
[eval exp="f.dress=1" ]
[eval exp="f.pin=0" ]
[eval exp="f.hair=0" ]
[eval exp="f.socks=0" ]
[eval exp="f.glasses=0" ]

[eval exp="f.day=1" ]
[eval exp="f.sex=0" ]
[eval exp="f.heavn=0" ]
[eval exp="f.drink=0" ]
[eval exp="f.kake=0" ]
[eval exp="f.blow=0" ]
[eval exp="f.cum=0" ]


[eval exp="f.love=0" ]
[eval exp="f.lust=0" ]


[eval exp="f.step=6" ]
[eval exp="f.act=7" ]
[eval exp="f.love=50" ]

[eval exp="f.feeling=0" ]
[eval exp="f.act='non'" ]
[eval exp="f.flag=0" ]
[eval exp="f.lust=0" ]

[eval exp="f.h_m=0" ]
[eval exp="f.h_b=0" ]
[eval exp="f.h_c=0" ]
[eval exp="f.h_v=0" ]

[eval exp="f.h_act='non'" ]
[eval exp="f.h_right='non'" ]
[eval exp="f.h_left='non'" ]
[eval exp="f.h_sex=0" ]
[eval exp="f.s_ex=0" ]
[eval exp="f.y_ex=0" ]
[eval exp="f.s_feel=0" ]
[eval exp="f.y_feel=0" ]
[eval exp="f.wet=0" ]

[jump  storage="H_ex.ks"  target="*H_ex" ]


[_tb_end_tyrano_code]

[playse  loop="true"  storage="l-wet1.ogg"  clear="true"  ]