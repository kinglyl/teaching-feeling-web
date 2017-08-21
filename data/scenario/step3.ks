[_tb_system_call storage=system/_step3.ks]

[tb_start_tyrano_code]


*step3
[free]

[eval exp="f.step=3" ]
[eval exp="f.feeling=0" ]
[eval exp="f.act=2" ]
[eval exp="f.nade=1" ]
[eval exp="f.talk=1" ]
[eval exp="f.out=1" ]
[eval exp="f.day=f.day+1" ]

[playbgm  loop="true"  storage="Silver_Glass.ogg" ]
[tb_show_message_window  ]

*show_bace
[cm]
[hide_skip]
[set_sit]
[s_]
[set_time]
[show_sit]

[if exp="f.act=='non'" ]
[eval exp="f.act=0" ]
[playbgm  loop="true"  storage="Silver_Glass.ogg" ]
[s_t]
#希爾薇
早上好，主人[p]
[else]
[endif]
[s_]

*before_menu
[hide_skip]
[cancelskip]
[if exp="f.act>=7" ]
[jump  storage="step3.ks"  target="*night" ]
[else]
[endif]
[set_time]

[if exp="f.flag1=='poor'" ]
[jump  storage="set_show.ks"  target="*show_button1b" ]
[elsif exp="f.out==1" ]
[jump  storage="set_show.ks"  target="*show_button1b" ]
[else]
[jump  storage="set_show.ks"  target="*show_button1a" ]
[endif]

*night

[eval exp="f.day=f.day+1" ]
[eval exp="f.act='non'" ]
[eval exp="f.out=0" ]
[fadeoutbgm time=500]
[if exp="f.feeling>330" ]
#
…[p]
（已經到晚上了…準備睡覺吧）[p]
[s_t]
#希爾薇
晚安[p]
[jump  storage="event3.ks"  target="*to_next" ]
[else]
[s_]
#
…[p]
（已經到晚上了…準備睡覺吧）[p]
[s_t]
#希爾薇
晚安[p]
[black]
…[p]
[jump  storage="step3.ks"  target="*show_bace" ]
[endif]


*talk1
[if exp="f.flag1=='alone'" ]
[eval exp="f.talk=f.talk+1" ]
[jump  storage="action_lead.ks"  target="*talk" ]
[endif]
[s_]
#希爾薇
…[p]
#
（希爾薇看著窗外。[lr]似乎是在想要外出呢）
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk2
[s_s]
#希爾薇
…？[p]
（雖然把視線投向了這裏，但還是什麽都沒說）[p]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk3
[s_t]
#希爾薇
主人是醫生大人吧[p]
是鄉村醫生？[lr]有什麽區別嗎？[p]
[s_]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk4
[s_clt]
#希爾薇
主人…大概，是很「溫柔」的人吧？[p]
[s_]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk5
[s_t]
[if exp="f.shop==0" ]
[eval exp="f.talk=f.talk+1" ]
[jump  storage="action_lead.ks"  target="*talk" ]
[endif]
#希爾薇
您還會打算帶我出去買東西嗎？[p]
[s_]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk6
[if exp="f.flag1=='alone'" ]
[eval exp="f.talk=f.talk+1" ]
[jump  storage="action_lead.ks"  target="*talk" ]
[endif]
[s_t]
#希爾薇
那樣的外出還是第壹次呢[lr]
[s_sclt]
大概…很開心，我覺得[p]
[s_]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk7
[s_ct]
#希爾薇
為什麽主人願意接收我呢？[p]
[s_]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk8
[s_t]
#希爾薇
有什麽能讓我幫忙的事情嗎？[p]
[s_]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk9
[s_clt]
#希爾薇
主人您能接受我…非常…感謝[lr]
[s_ct]
但是，這裏的生活…有些可怕呢…[p]
[s_c]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk10
[s_cclt]
#希爾薇
心什麽的，要是沒有就好了…[p]
[s_c]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk11
[s_st]
[if exp="f.sand==1" ]
[eval exp="f.talk=f.talk+1" ]
[jump  storage="action_lead.ks"  target="*talk" ]
[endif]
#希爾薇
我喜歡甜味[lr]
[s_clt]
因為壹直以來沒怎麽嘗過這種味道呢[p]
[s_]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk12
[s_t]
#希爾薇
我沒怎麽見過和主人工作相關以外的人呢[p]
[s_]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk13
[if exp="f.flag1=='alone'"]
[eval exp="f.talk=f.talk+1" ]
[jump  storage="action_lead.ks"  target="*talk" ]
[endif]
[s_ct]
#希爾薇
能讓我出去看看外面的人嗎？[p]
[s_c]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk14
[s_ct]
#希爾薇
果然，就算是醫生也沒法消除這個傷痕呢…[p]
[s_c]
[jump  storage="after_action.ks"  target="*after_talk" ]



*nade1
[n_]
[show_nade]
#希爾薇
…[p]
#
（通過頭發我感覺到了希爾薇的體溫）[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade2
[n_cl]
[show_nade]
#希爾薇
…[p]
#
（希爾薇慢慢的閉上了眼睛）[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade3　
[n_]
[show_nade]
#希爾薇
…[p]
[n_t]
撫摸的感覺很好嗎？[lr]
雖然我不認為頭發是那麽漂亮的東西…[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade4
[n_]
[show_nade]
#希爾薇
…[p]
[n_t]
說不定我已經稍微習慣了呢[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade5
[n_]
[show_nade]
#希爾薇
…[p]
[n_clt]
這時候我應該有反應了吧…[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade6
[n_]
[show_nade]
#希爾薇
…[p]
[n_t]
您很好奇呢[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade7
[n_]
[show_nade]
#希爾薇
…[p]
[n_t]
做這樣的事情，說明我在主人心裏已經有印象了嗎？？[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade8
[n_]
[show_nade]
#希爾薇
…[p]
[n_cclt]稍微有點困了呢[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade9
[n_]
[show_nade]
#希爾薇
…[p]
[n_t]我應該有怎麽樣的反應呢…[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade10
[n_c]
[show_nade]
#希爾薇
…[p]
[n_ct]主人？[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade11
[n_]
[show_nade]
#希爾薇
…[p]
[n_t]這就是所謂的「溫柔」嗎？[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade12
[n_cl]
[show_nade]
#希爾薇
…[p]
[n_clt]有壹種難易言語的舒適呢[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade13
[n_cl]
[show_nade]
#希爾薇
…[p]
[n_sclt]我說不定不討厭這種事呢[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade14
[n_cl]
[show_nade]
#希爾薇
…[p]
[n_clt]「非常感謝」，我應該這樣說嗎？[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

[_tb_end_tyrano_code]
