[_tb_system_call storage=system/_step2.ks]

[tb_start_tyrano_code]

*step2
[free]

[eval exp="f.step=2" ]
[eval exp="f.feeling=0" ]
[eval exp="f.act='non'" ]
[eval exp="f.nade=1" ]
[eval exp="f.talk=1" ]
[eval exp="f.day=f.day+1" ]

[tb_show_message_window  ]

*show_bace
[cm]
[hide_skip]
[set_sit]
[s_f]
[set_time]
[show_sit]

[if exp="f.act=='non'" ]
[eval exp="f.act=0" ]
[playbgm  loop="true"  storage="Silver_Glass.ogg" ]
[s_clt]
早上好，主人[p]
[else]
[endif]

[s_f]

*before_menu
[hide_skip]
[cancelskip]
[if exp="f.act>=7" ]
[jump  storage="step2.ks"  target="*night" ]
[else]
[endif]
[set_time]
[jump  storage="set_show.ks"  target="*show_button" ]


*night

[eval exp="f.day=f.day+1" ]
[eval exp="f.act='non'" ]
[fadeoutbgm time=500]
[if exp="f.feeling>260" ]
#
…[p]
（已經到晚上了…準備睡覺吧)[p]
[s_tf]
#希爾薇
晚安[p]
[jump  storage="event2.ks"  target="*to_next" ]
[else]
[s_f]
#
…[p]
（已經到晚上了…準備睡覺吧)[p]
[s_tf]
#希爾薇
晚安[p]
[black]
…[p]
[jump  storage="step2.ks"  target="*show_bace" ]
[endif]


*talk1
#希爾薇
…[p]
#
（希爾薇盯著空中）[p]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk2
[s_tf]
#希爾薇
有什麽事嗎？[p]
#
（她似乎在註意著我）[p]
[s_f]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk3
[s_clt]
#希爾薇
疼痛什麽的…只會在最初有感覺而已，現在我已經習慣了[p]
[s_f]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk4
[s_tf]
#希爾薇
那個，什麽都不做嗎…？[p]
[s_f]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk5
[s_tf]
#希爾薇
只要您發出命令，無論是什麽事情我都會盡力去做的…[p]
[s_f]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk6
[s_clt]
#希爾薇
壹切如主人您所願[lr]
[s_cclt]
因為我是奴隸[p]
[s_f]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk7
[s_tf]
#希爾薇
無表情…嗎？[p]
[s_clt]
很抱歉。[lr]我沒有做表情的習慣[p]
[s_f]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk8
[if exp="f.feed=='pet'" ]
[eval exp="f.talk=f.talk+1" ]
[jump  storage="action_lead.ks"  target="*talk" ]
[else]
[endif]
[s_tf]
主人準備的食物，真的是很漂亮呢[p]
#
（是和面包和水相比的吧）[p]
[s_f]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk9
[s_clt]
#希爾薇
心什麽的，要是沒有就好了…[p]
[s_f]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk10
[s_clt]
#希爾薇
主人的想法我只有接受[lr]
我明白我這個奴隸沒有拒絕的權力[p]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk11
[s_tf]
#希爾薇
您不會像我的前主人壹樣對待我嗎？[p]
[s_f]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk12
[s_clt]
#希爾薇
因為我無法做重體力活，所以被打到慘叫就是我的工作[p]
[s_f]
[jump  storage="after_action.ks"  target="*after_talk" ]


*nade1
[n_cf]
[show_nade]
#希爾薇
…[p]
[n_ctf]
您在撫摸嗎？[lr]我不是很清楚呢…[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade2
[n_cl]
[show_nade]
#希爾薇
…[p]
#
（手上傳來了頭發軟軟的觸感）[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade3
[n_caf]
[show_nade]
#希爾薇
…？[p]
#
（她的表情很困惑呢）[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade4
[n_f]
[show_nade]
#希爾薇
…[p]
[n_tf]
這個有什麽含義嗎？[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade5
[n_cf]
[show_nade]
#希爾薇
…[p]
[n_ctf]
這個，我不認為有什麽可以高興的呢…[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade6
[n_cl]
[show_nade]
#希爾薇
…[p]
[n_clt]
如果主人想做的話…請您做吧[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade7
[n_cf]
[show_nade]
#希爾薇
…[p]
[n_ctf]
您很開心嗎？[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade8
[n_f]
[show_nade]
#希爾薇
…[p]
[n_tf]
只要撫摸就能讓您開心嗎？[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade9
[n_ccl]
[show_nade]
#希爾薇
…[p]
[n_cclt]
我，不明白呢…[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade10
[n_af]
[show_nade]
#希爾薇
…[p]
#
（沒什麽反應）[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade11
[s_cl]
[show_nade]
#希爾薇
…[p]
[s_clt]
並不是討厭…[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade12
[n_cf]
[show_nade]
#希爾薇
…[p]
[n_ctf]
您沒有什麽讓我來做的嗎？[p]
[jump  storage="after_action.ks"  target="*after_nade" ]


[_tb_end_tyrano_code]
