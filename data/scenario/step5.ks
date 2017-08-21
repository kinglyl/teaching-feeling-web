[_tb_system_call storage=system/_step5.ks]

[tb_start_tyrano_code]
*a
[free]
[eval exp="f.step=5" ]
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
[s_s]
[set_time]
[show_sit]

[if exp="f.act=='non'" ]
[eval exp="f.act=0" ]
[playbgm  loop="true"  storage="Silver_Glass.ogg" ]
[s_st]
#希爾薇
早上好，主人[p]
[else]
[endif]
[s_s]

*before_menu
[hide_skip]
[cancelskip]
[if exp="f.act>=7" ]
[jump  storage="step5.ks"  target="*night" ]
[else]
[endif]
[set_time]

[if exp="f.out==1" ]
[jump  storage="set_show.ks"  target="*show_button1b" ]
[else]
[jump  storage="set_show.ks"  target="*show_button1a" ]
[endif]

*night

[eval exp="f.day=f.day+1" ]
[eval exp="f.act='non'" ]
[eval exp="f.out=0" ]
[eval exp="f.flag=1" ]
[fadeoutbgm time=500]
[if exp="f.feeling>330" ]
[jump  storage="event5.ks"  target="*to_next" ]
[else]
[s_s]
#
…[p]
（已經到晚上了…準備睡覺吧[p]
[s_st]
#希爾薇
晚安，主人[p]
[black]
…[p]
[jump  storage="step5.ks"  target="*show_bace" ]
[endif]


*talk1
[s_]
#希爾薇
…[p]
[s_s]
#
（希爾薇的臉上浮現出了微笑）[p]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk2
[s_st]
#希爾薇
主人？[p]
#
（和以前相比她似乎開朗了很多）[p]
[s_s]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk3
[s_clt]
#希爾薇
主人您無論我哭或笑，都不會對我做過分的事情呢[p]
[s_cl]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk4
[s_st]
#希爾薇
主人，您能教我做飯嗎？[lr]
我也想為主人準備飯食…[p]
[s_s]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk5
[s_sclt]
#希爾薇
能被主人做收養，我真的是太幸運了♡[p]
[s_scl]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk6
[s_clt]
#希爾薇
我是奴隸這件事，有時甚至會忘記呢[p]
[s_ct]
…我可以忘記這件事嗎？[p]
[s_c]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk7
[s_cclt]
#希爾薇
主人，請您務必不要拋棄我[p]
[s_ccl]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk8
[s_clt]
#希爾薇
您能給我準備美味的飯菜[lr]
給我買很棒的衣服[lr]
在我感冒的時候帶我去看病[p]
[s_s]
實在是太感謝了[lr]
[s_st]
真的，太感謝了[p]
[s_s]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk9
[s_sclt]
#希爾薇
只要有主人的「溫柔」。現在我已經什麽都不怕了[p]
[s_scl]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk10
[s_stp]
#希爾薇
那個，我能坐的離您近壹些嗎？[p]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk11
[s_cclt]
#希爾薇
以前的毆打真的很痛[lr]
我不想再有那種事了[p]
[s_ccl]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk12
[s_ct]
#希爾薇
當我開心的時候，我總想笑出來呢[lr]
您能允許我做那種事嗎？[p]
[s_c]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk13
[s_st]
#希爾薇
掃除以外的家務我也想為主人幫忙[lr]
我要盡力為主人做壹些事情[p]
[s_s]
[jump  storage="after_action.ks"  target="*after_talk" ]


*nade1
[n_scl]
[show_nade]
#希爾薇
…[p]
#
（她看起來很放松呢）[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade2
[n_sclt]
[show_nade]
#希爾薇
…[p]
我已經很習慣這裏了[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade3　
[n_cl]
[show_nade]
#希爾薇
…[p]
[n_ct]
您可以再繼續做這種事嗎？[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade4
[n_s]
[show_nade]
#希爾薇
…[p]
[n_st]
我已經什麽都不怕了…[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade5
[n_s]
[show_nade]
#希爾薇
…[p]
[n_st]
總感覺很安心[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade6
[n_scl]
[show_nade]
#希爾薇
…[p]
[n_st]
這種感覺…好想讓主人也感覺到[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade7
[n_s]
[show_nade]
#希爾薇
…[p]
[n_st]
主人的手，好大呢~~♡[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade8
[n_scl]
[show_nade]
#希爾薇
…[p]
[n_st]
我第壹次感覺到這種溫暖[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade9
[n_scl]
[show_nade]
#希爾薇
…[p]
[n_st]
和別人接觸，原來是這種感覺嗎[lr]
[n_ct]
明明我還在為壹直以來的疼痛害怕…[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade10
[n_scl]
[show_nade]
#希爾薇
…[p]
[n_st]
好困啊[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade11
[n_s]
[show_nade]
#希爾薇
…[p]
[n_st]
被做這種事。我很…喜歡[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade12
[n_scl]
[show_nade]
#希爾薇
…[p]
[n_st]
好溫柔，好暖…[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade13
[n_s]
[show_nade]
#希爾薇
…[p]
[n_st]
總感覺使不上力氣呢…[p]
[jump  storage="after_action.ks"  target="*after_nade" ]


[_tb_end_tyrano_code]

