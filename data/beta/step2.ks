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
…おはようございます、ご主人様[p]
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
（もう夜だ…寝支度をしよう[p]
[s_tf]
#シルヴィ
…おやすみなさいませ[p]
[jump  storage="event2.ks"  target="*to_next" ]
[else]
[s_f]
#
…[p]
（もう夜だ…寝支度をしよう[p]
[s_tf]
#シルヴィ
…おやすみなさいませ[p]
[black]
…[p]
[jump  storage="step2.ks"  target="*show_bace" ]
[endif]


*talk1
#シルヴィ
…[p]
#
（シルヴィの視線はぼんやりと宙を眺めている[p]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk2
[s_tf]
#シルヴィ
…どうかしましたか？[p]
#
（様子を伺っていたのが気になったようだ。[p]
[s_f]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk3
[s_clt]
#シルヴィ
痛いのは…最初に比べればだいぶ慣れました[p]
[s_f]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk4
[s_tf]
#シルヴィ
あの、何もしないのですか…？[p]
[s_f]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk5
[s_tf]
#シルヴィ
ご命令があれば、できることはしますけど…[p]
[s_f]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk6
[s_clt]
#シルヴィ
ご主人様のお好きなように。[lr]
[s_cclt]
私は奴隷ですから[p]
[s_f]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk7
[s_tf]
#シルヴィ
無表情…ですか？[p]
[s_clt]
すいません。[lr]表情を作らないのが、癖になってしまってて。[p]
[s_f]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk8
[if exp="f.feed=='pet'" ]
[eval exp="f.talk=f.talk+1" ]
[jump  storage="action_lead.ks"  target="*talk" ]
[else]
[endif]
[s_tf]
ご主人様の用意してくださるお食事は、見た目も綺麗ですね。[p]
#
（パンと水に比べればそうだろう[p]
[s_f]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk9
[s_clt]
#シルヴィ
心なんて、なければよかったのに…[p]
[s_f]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk10
[s_clt]
#シルヴィ
ご主人様の望むことなら、私はただ受け入れます。[lr]
拒否権がないのはわかってます[p]
[s_f]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk11
[s_tf]
#シルヴィ
前のご主人様のような事はなさらないんですか？[p]
[s_f]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk12
[s_clt]
#シルヴィ
私は力仕事はできないから、叩かれて悲鳴を上げるのが私の仕事でした[p]
[s_f]
[jump  storage="after_action.ks"  target="*after_talk" ]


*nade1
[n_cf]
[show_nade]
#シルヴィ
…[p]
[n_ctf]
撫でてる？さすってる？[lr]よくわからないです…。[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade2
[n_cl]
[show_nade]
#シルヴィ
…[p]
#
（柔らかな髪の感触が手に伝わる[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade3
[n_caf]
[show_nade]
#シルヴィ
…？[p]
#
（不思議そうな顔をしている[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade4
[n_f]
[show_nade]
#シルヴィ
…[p]
[n_tf]
…何か、意味があるんですか？[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade5
[n_cf]
[show_nade]
#シルヴィ
…[p]
[n_ctf]
これで、楽しませるような反応はできないとおもいますけど…[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade6
[n_cl]
[show_nade]
#シルヴィ
…[p]
[n_clt]
ご主人様がしたいんなら…どうぞ、好きなだけ。[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade7
[n_cf]
[show_nade]
#シルヴィ
…[p]
[n_ctf]
…楽しいんですか？[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade8
[n_f]
[show_nade]
#シルヴィ
…[p]
[n_tf]
撫で心地が、良いん…ですか？[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade9
[n_ccl]
[show_nade]
#シルヴィ
…[p]
[n_cclt]
よく、わかりません…[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade10
[n_af]
[show_nade]
#シルヴィ
…[p]
#
（特に反応はない[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade11
[s_cl]
[show_nade]
#シルヴィ
…[p]
[s_clt]
別に、嫌ではないですけど…[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade12
[n_cf]
[show_nade]
#シルヴィ
…[p]
[n_ctf]
他に私がすることとか、ないんでしょうか？[p]
[jump  storage="after_action.ks"  target="*after_nade" ]


[_tb_end_tyrano_code]

