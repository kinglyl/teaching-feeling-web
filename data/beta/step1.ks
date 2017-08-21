[_tb_system_call storage=system/_step1.ks]

[tb_start_tyrano_code]
[tb_show_message_window  ]

*step1
[eval exp="f.name='ご主人様'" ]
[eval exp="f.step=1" ]
[eval exp="f.feeling=0" ]
[eval exp="f.act=0" ]
[eval exp="f.nade=1" ]
[eval exp="f.talk=1" ]
[eval exp="f.walk=1" ]
[eval exp="f.wait=1" ]
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
[eval exp="f.book='non'" ]


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
[eval exp="f.ring=0" ]
[eval exp="f.ring_f=0" ]

[eval exp="f.day=1" ]
[eval exp="f.sex=0" ]
[eval exp="f.heavn=0" ]
[eval exp="f.drink=0" ]
[eval exp="f.kake=0" ]
[eval exp="f.blow=0" ]
[eval exp="f.cum=0" ]

[eval exp="f.love=0" ]
[eval exp="f.lust=0" ]

[eval exp="f.m_first=0" ]
[eval exp="f.m_x=0" ]
[eval exp="f.m_xx=0" ]
[eval exp="f.m_xxx=0" ]
[eval exp="f.m_morning=0" ]
[eval exp="f.m_wood=0" ]
[eval exp="f.m_mouth=0" ]

[eval exp="f.flower=0" ]
[eval exp="f.flower_b=0" ]
[eval exp="f.drugx=0" ]
[eval exp="f.drugz=0" ]
[eval exp="f.drug_s=0" ]
[eval exp="f.drug_y=0" ]
[eval exp="f.drug_use='non'" ]

[playbgm  loop="true"  storage="Silver_Glass.ogg" ]
[hide_skip]
[set_sit]
[s_af]
[show_sit]

#
（さて、どうしたものか…[p]
[jump  storage="step1.ks"  target="*before_menu" ]


*show_bace
[hide_skip]
[set_sit]
[s_af]
[set_time]
[show_sit]

[if exp="f.act=='non'" ]
[eval exp="f.act=0" ]
[playbgm  loop="true"  storage="Silver_Glass.ogg" ]
[s_clt]
…おはようございます、ご主人様[p]
[endif]

[s_af]

*before_menu
[hide_skip]
[cancelskip]
[if exp="f.act>=7" ]
[jump  storage="step1.ks"  target="*night" ]
[endif]
[set_time]
[jump  storage="set_show.ks"  target="*show_button" ]

*night

[eval exp="f.day=f.day+1" ]
[eval exp="f.act='non'" ]
[fadeoutbgm time=500]
[if exp="f.feed==0" ]
[jump  storage="event.ks"  target="*feed" ]
[endif]
[if exp="f.feeling>190" ]
[jump  storage="event.ks"  target="*to_next" ]
[endif]
[s_f]
#
…[p]
（もう夜だ…寝支度をしよう[p]
[s_tf]
#シルヴィ
…おやすみなさいませ[p]
[black]
…[p]
[jump  storage="step1.ks"  target="*show_bace" ]


*talk1
#シルヴィ
…[p]
#
（シルヴィは何をすることもなくただそこにいる[p]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk2
[s_tf]
#シルヴィ
…何か？[p]
#
（眺めていると視線があった[p]
[s_af]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk3
#
（白い肌に浮かぶ鮮やかな赤い傷が目に入った[p]
[s_tf]
#シルヴィ
この痕ですか？[l]
[s_clt]
もう、しばらく前のものだから、そんなに痛くはないです[p]
#
（よく見てみるともう生傷ではなく、包帯を巻く必要はなさそうだ[p]
[s_af]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk4
[s_tf]
#シルヴィ
お話ですか？[lr]
[s_clt]
そういうのはよくわからなくって…[p]
#
（進んで会話してくれるつもりはないようだ[p]
[s_af]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk5
#
（今までどんな暮らしをしてきたのだろう[p]
[s_tf]
#シルヴィ
前のご主人様のところにいた頃ですか？[lr]
[s_clt]
鞭打ちが日課で、あとは日替わりでいろいろと[p]
[s_af]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk6
[s_tf]
#シルヴィ
身寄りもいないし、前のご主人様に飼っていただく前も施設にいました。[lr]
[s_clt]
特にお話しできることは…[p]
#
（話題は何かないものか[p]
[s_af]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk7
#
（シルヴィの傷跡を観察する…[p]
[s_tf]
#シルヴィ
肌の跡は、肌を焼き溶かす薬品を塗られた時のものです。[lr]
[s_cclt]
あんまり、思い出したくはないです[p]
[s_f]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk8
[s_clt]
#シルヴィ
痛いのは嫌いですけど…。[lr]
ご主人様のする事には逆らうつもりはありません[p]
#
（嫌だと思う気持ちがない訳ではなさそうだ[p]
[s_af]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk9
#
（身につけているボロ布越しにも華奢で小柄な体がみて取れる[lr]
落ち着いた銀色の髪と瞳が印象的だ[p]
[s_tf]
#シルヴィ
…どうかしましたか？[p]
[s_af]
[jump  storage="after_action.ks"  target="*after_talk" ]




*nade1
[show_nade]
#
（シルヴィの頭を撫でてみる[p]
[n_tf]
#シルヴィ
…あの、何を？[l]頭を撫でている？[r]それはそうですけど…[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade2
[n_cf]
[show_nade]
#シルヴィ
…？[p]
#
（困惑したような顔をしている[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade3
[n_cl]
[show_nade]
#シルヴィ
…[p]
#
（特に反応はない[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade4
[n_f]
[show_nade]
#シルヴィ
…[p]
[n_tf]
…これに何か意味があるんでしょうか？[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade5
[n_caf]
[show_nade]
#シルヴィ
…[p]
[n_catf]
#シルヴィ
よく、わかりません[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade6
[n_f]
[show_nade]
#シルヴィ
[n_tf]
…[p]
#シルヴィ
…楽しいん…ですか？[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade7
[n_af]
[show_nade]
#シルヴィ
…[p]
#
（柔らかな髪の感触が手に伝わる[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade8
[n_cl]
[show_nade]
#シルヴィ
…[p]
[n_clt]
どうぞ、お好きにしてください…[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

[_tb_end_tyrano_code]

