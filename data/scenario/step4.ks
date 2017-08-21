[_tb_system_call storage=system/_step4.ks]

[tb_start_tyrano_code]


*step4

[free]
[endif]
[eval exp="f.step=4" ]
[eval exp="f.feeling=0" ]
[eval exp="f.act='non'" ]
[eval exp="f.nade=1" ]
[eval exp="f.talk=1" ]
[eval exp="f.feed='lost'" ]
[eval exp="f.day=f.day+1" ]

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
[s_s]
#希爾薇
早上好，主人[p]
[else]
[s_s]
[endif]


*before_menu
[hide_skip]
[cancelskip]
[if exp="f.act>=7" ]
[jump  storage="step4.ks"  target="*night" ]
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
[fadeoutbgm time=500]

[if exp="f.feed=='bed'" ]
[s_]
#
…[p]
（已經晚上了…準備睡覺吧）[p]
[jump  storage="event4.ks"  target="*remind" ]
[elsif exp="f.feeling>420 && f.feed=='trust'" ]
[s_]
#
…[p]
（已經晚上了…準備睡覺吧）[p]
[jump  storage="event4.ks"  target="*to_next" ]
[elsif exp="f.feeling>210 && f.feed=='lost'" ]
[s_]
#
…[p]
（已經晚上了…準備睡覺吧）[p]
[jump  storage="event4.ks"  target="*ask" ]
[else]
[s_]
#
…[p]
（已經晚上了…準備睡覺吧）[p]
[s_s]
#希爾薇
晩安[p]
[black]
…[p]
[jump  storage="step4.ks"  target="*show_bace" ]
[endif]


*talk1
[s_]
#
…[p]
#
（陷入某种沉思的表情）[p]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk2
[s_t]
#希爾薇
…主人？[lr]
[s_s]
你怎麼了？？[p]
#
（與之前相比感覺到語調的柔和度）[p]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk3
[s_clt]
#希爾薇
和疼痛相比感冒明明不算什麽的[lr]
[s_cclt]但是我壹個人睡的話，會有些膽怯啊[p]
[s_st]
但是主人在我身邊，總感覺能有些安心了呢[p]
[s_s]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk4
[s_clt]
#希爾薇
主人…大概，您很「溫柔」吧？？[p]
[s_]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk5
[s_t]
#希爾薇
真不愧是醫生呢[lr]
[s_clt]能得到主人的看護，我真的很高興[lr]
[s_s]無論是身…還是心[p]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk6
[s_t]
#希爾薇
以前身體剛開始不舒服的時候[p]
[s_clt]
沒有吃過什麽藥，也沒有好好的有休息過一次…[lr]
[s_cclt]一想到治病就會被嚴厲的責備，病情就會變得更嚴重吧…[p]
[s_ccl]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk7
[s_t]
#希爾薇
我會註意不會讓我身體變壞的[lr]
[s_clt]而且也是為了不給主人添麻煩[p]
[s_cl]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk8
[s_t]
#希爾薇
那個，主人…[lr]
[s_ct]您不會，拋棄我吧？[p]
[s_cclt]很抱歉，請忘記這些話[p]
[s_ccl]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk9
[s_ct]
#希爾薇
主人您為什麽這麽溫柔呢？[p]
[s_c]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk10
[s_ct]
#希爾薇
主人您已經對我有印象了吧？[p]
[s_c]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk11
[s_ct]
#希爾薇
如果抱有積極的希望的話[lr]
無論是痛苦還是悲傷，都會是開心的事情吧？[lr]
[s_cclt]可是…[p]
[s_ccl]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk12
[s_ct]
#希爾薇
主人，您不會對我做…過分的事情吧？？[p]
[s_c]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk13
[s_ct]
#希爾薇
我可以相信主人您嗎…[p]
[s_c]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk14
[s_cclt]
#希爾薇
我應該怎麽做才好呢…[p]
[s_ccl]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk15
[s_ct]
#希爾薇
能得到這麽漂亮的衣服…[lr]
簡直要忘掉我是奴隸這件事情呢…[p]
[s_c]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk16
[s_cclt]
#希爾薇
主人是不是對我太過溫柔了啊…[p]
[s_ccl]
[jump  storage="after_action.ks"  target="*after_talk" ]

*nade1
[n_s]
[show_nade]
#希爾薇
…？[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade2
[n_s]
[show_nade]
#希爾薇
…[p]
#
（之前感覺到的警戒心現在已經沒有了）[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade3　
[n_]
[show_nade]
#希爾薇
…[p]
[n_clt]
我似乎，習慣了這裏呢[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade4
[n_]
[show_nade]
#希爾薇
…[p]
[n_cltp]
那個，感覺不錯呢…[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade5
[n_]
[show_nade]
#希爾薇
…[p]
[n_t]
那個…[lr]
[n_s]
非常感謝[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade6
[n_cl]
[show_nade]
#希爾薇
…[p]
[n_clt]
主人您做的事情，我非常喜歡[p]
[n_s]
我也不討厭呢[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade7
[n_cl]
[show_nade]
#希爾薇
…[p]
[n_clt]
我似乎冷靜了壹些[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade8
[n_]
[show_nade]
#希爾薇
…[p]
[n_st]
主人？[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade9
[n_]
[show_nade]
#希爾薇
…[p]
[n_t]
主人您…大概很好奇吧[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade10
[n_]
[show_nade]
#希爾薇
…[p]
[n_ct]
做這樣的事情的話，主人覺得我很有用嗎？[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade11
[n_]
[show_nade]
#希爾薇
…[p]
[n_clt]
我應該做什麽樣的反應才能讓主人開心呢？[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade12
[n_]
[show_nade]
#希爾薇
…[p]
[n_t]
只是這樣的話…[lr]
[n_s]
我很…開心[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade13
[n_]
[show_nade]
#希爾薇
…[p]
[n_clt]
主人真溫柔呢[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade14
[n_sclp]
[show_nade]
#希爾薇
呼呼。[l]
[n_tp]
啊…那個[lr]
[n_cltp]
沒什麽…[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

[_tb_end_tyrano_code]

