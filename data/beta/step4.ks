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
#シルヴィ
おはようございます、ご主人様[p]
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
（もう夜だ…寝支度をしよう[p]
[jump  storage="event4.ks"  target="*remind" ]
[elsif exp="f.feeling>420 && f.feed=='trust'" ]
[s_]
#
…[p]
（もう夜だ…寝支度をしよう[p]
[jump  storage="event4.ks"  target="*to_next" ]
[elsif exp="f.feeling>210 && f.feed=='lost'" ]
[s_]
#
…[p]
（もう夜だ…寝支度をしよう[p]
[jump  storage="event4.ks"  target="*ask" ]
[else]
[s_]
#
…[p]
（もう夜だ…寝支度をしよう[p]
[s_s]
#シルヴィ
おやすみなさいませ[p]
[black]
…[p]
[jump  storage="step4.ks"  target="*show_bace" ]
[endif]


*talk1
[s_]
#
…[p]
#シルヴィ
（何か物思いにふけったような顔をしている[p]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk2
[s_t]
#シルヴィ
…ご主人様？[lr]
[s_s]
どうかしましたか？[p]
#
（前に比べると口調に柔らかさを感じる[p]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk3
[s_clt]
#シルヴィ
痛いのに比べれば風邪なんてたいしたことないはずなのに、[lr]
[s_cclt]一人で寝ていると、心細くて。[p]
[s_st]
でもご主人様がいてくれて、なんだか安心しました。[p]
[s_s]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk4
[s_clt]
#シルヴィ
ご主人様は…多分、「優しい」んでしょうか？[p]
[s_]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk5
[s_t]
#シルヴィ
流石、お医者様ですね。[lr]
[s_clt]ご主人様の看病で、すごく楽になりました。[lr]
[s_s]身も…心も。[p]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk6
[s_t]
#シルヴィ
今までも、体調を崩したことはありました。[p]
[s_clt]
一応、お薬ももらえたし、お休みももらえたけど。[lr]
[s_cclt]治ってからの責めが、いつもより酷くて…[p]
[s_ccl]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk7
[s_t]
#シルヴィ
体調は崩さないようにしないといけませんね。[lr]
[s_clt]ご主人様に迷惑をかけないためにも[p]
[s_cl]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk8
[s_t]
#シルヴィ
あの、ご主人様…。[lr]
[s_ct]見捨てないで、くれますか？[p]
[s_cclt]…ごめんなさい、忘れてください。[p]
[s_ccl]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk9
[s_ct]
#シルヴィ
ご主人様はなんで、やさしいんですか？[p]
[s_c]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk10
[s_ct]
#シルヴィ
私はご主人様のお役に立ててるでしょうか？[p]
[s_c]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk11
[s_ct]
#シルヴィ
喜んだり希望を持ったりしなければ、[lr]
痛いのも悲しいのも、少し楽になったんです。[lr]
[s_cclt]なのに…[p]
[s_ccl]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk12
[s_ct]
#シルヴィ
ご主人様は、私にひどいことはしないん…ですよね？[p]
[s_c]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk13
[s_ct]
#シルヴィ
ご主人様のこと、信じてもいいんでしょうか…[p]
[s_c]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk14
[s_cclt]
#シルヴィ
私、どうしたらいいのか…[p]
[s_ccl]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk15
[s_ct]
#シルヴィ
こんなお洋服までもらってしまって…。[lr]
奴隷であることを忘れてしまいそうです…[p]
[s_c]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk16
[s_cclt]
#シルヴィ
私にはご主人様が、優しすぎます…[p]
[s_ccl]
[jump  storage="after_action.ks"  target="*after_talk" ]

*nade1
[n_s]
[show_nade]
#シルヴィ
…？[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade2
[n_s]
[show_nade]
#シルヴィ
…[p]
#
（前は静かに感じた警戒心を今は感じない。[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade3　
[n_]
[show_nade]
#シルヴィ
…[p]
[n_clt]
なんだか、慣れてきてしまいました[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade4
[n_]
[show_nade]
#シルヴィ
…[p]
[n_cltp]
その、悪くない気分です…[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade5
[n_]
[show_nade]
#シルヴィ
…[p]
[n_t]
…あの、[lr]
[n_s]
ありがとうございます[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade6
[n_cl]
[show_nade]
#シルヴィ
…[p]
[n_clt]
ご主人様はこうするの、好きですね。[p]
[n_s]
…私も、嫌いじゃないです。[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade7
[n_cl]
[show_nade]
#シルヴィ
…[p]
[n_clt]
落ち着く、かもしれません。[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade8
[n_]
[show_nade]
#シルヴィ
…[p]
[n_st]
ご主人様？[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade9
[n_]
[show_nade]
#シルヴィ
…[p]
[n_t]
ご主人様は多分…物好き、なんですね[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade10
[n_]
[show_nade]
#シルヴィ
…[p]
[n_ct]
こうされることで、私もご主人様のお役に立ててればいいんですけど[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade11
[n_]
[show_nade]
#シルヴィ
…[p]
[n_clt]
どう反応すればご主人様は喜んでくれるんでしょう？[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade12
[n_]
[show_nade]
#シルヴィ
…[p]
[n_t]
こうしていただけると…[lr]
[n_s]
嬉しい…んだと、思います。[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade13
[n_]
[show_nade]
#シルヴィ
…[p]
[n_clt]
ご主人様は優しいですね[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade14
[n_sclp]
[show_nade]
#シルヴィ
ふふっ。[l]
[n_tp]
あ、その。[lr]
[n_cltp]
…なんでもないです。[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

[_tb_end_tyrano_code]


