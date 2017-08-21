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
#シルヴィ
おはようございます、ご主人様[p]
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
（もう夜だ…寝支度をしよう[p]
[s_st]
#シルヴィ
おやすみなさいませ、ご主人様[p]
[black]
…[p]
[jump  storage="step5.ks"  target="*show_bace" ]
[endif]


*talk1
[s_]
#シルヴィ
…[p]
[s_s]
#
（目があうとシルヴィは笑顔を浮かべた[p]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk2
[s_st]
#シルヴィ
…ご主人様？[p]
#
（ここに住み始めたころに比べると表情が朗らかになったようだ。[p]
[s_s]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk3
[s_clt]
#シルヴィ
ご主人様は、私が笑ったり、泣いたりしても、ひどいことはしませんよね。[p]
[s_cl]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk4
[s_st]
#シルヴィ
ご主人様、私にお料理を教えてくれませんか？[lr]
上手になって、ご主人様のご飯を用意できたらなって…[p]
[s_s]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk5
[s_sclt]
#シルヴィ
ご主人様に引き取ってもらえて、私本当に運がよかったですね。[p]
[s_scl]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk6
[s_clt]
#シルヴィ
奴隷だってこと、時々忘れてしまいそうになります。[p]
[s_ct]
…忘れてしまっても、いいんですか？[p]
[s_c]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk7
[s_cclt]
#シルヴィ
ご主人様、どうか、見捨てないでください。[p]
[s_ccl]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk8
[s_clt]
#シルヴィ
おいしいご飯を用意してくれて、[lr]
素敵なお洋服を買ってくれて、[lr]
風邪を引いたら看病してくれて。[p]
[s_s]
ありがとうございます。[lr]
[s_st]
本当に、感謝してます。[p]
[s_s]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk9
[s_sclt]
#シルヴィ
ご主人様のくれる「やさしい」が、怖くなくなってきました。[p]
[s_scl]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk10
[s_stp]
#シルヴィ
あの、もう少し近くに座ってもいいですか？[p]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk11
[s_cclt]
#シルヴィ
本当は、叩かれて痛かった。[lr]
つらかった。嫌だったんです。[p]
[s_ccl]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk12
[s_ct]
#シルヴィ
楽しんだり、笑ってもいいんですよね？[lr]
許して、くれますよね？[p]
[s_c]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk13
[s_st]
#シルヴィ
家事や掃除以外にも手伝えることがあったら言ってください。[lr]
ご主人様のお仕事もできることならお手伝いします。[p]
[s_s]
[jump  storage="after_action.ks"  target="*after_talk" ]


*nade1
[n_scl]
[show_nade]
#シルヴィ
…[p]
#
（だいぶリラックスしているように見える[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade2
[n_sclt]
[show_nade]
#シルヴィ
…[p]
もう、すっかり慣れちゃいました。[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade3　
[n_cl]
[show_nade]
#シルヴィ
…[p]
[n_ct]
もう少し、続けてもらってもいいですか？[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade4
[n_s]
[show_nade]
#シルヴィ
…[p]
[n_st]
もう、怖くありません…。[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade5
[n_s]
[show_nade]
#シルヴィ
…[p]
[n_st]
なんだか、安心します。[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade6
[n_scl]
[show_nade]
#シルヴィ
…[p]
[n_st]
この気持ち…。私もご主人様にお返ししたいです。[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade7
[n_s]
[show_nade]
#シルヴィ
…[p]
[n_st]
ご主人様の手、大きいですね。[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade8
[n_scl]
[show_nade]
#シルヴィ
…[p]
[n_st]
今まで知らなかった暖かさです。[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade9
[n_scl]
[show_nade]
#シルヴィ
…[p]
[n_st]
人と触れるのが、こんなに心地いいなんて。[lr]
[n_ct]
今までは痛くて怖いだけだったのに…。[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade10
[n_scl]
[show_nade]
#シルヴィ
…[p]
[n_st]
眠くなってきちゃいそうです。[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade11
[n_s]
[show_nade]
#シルヴィ
…[p]
[n_st]
こうされるの。好き…です。[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade12
[n_scl]
[show_nade]
#シルヴィ
…[p]
[n_st]
優しくって、暖かい…。[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade13
[n_s]
[show_nade]
#シルヴィ
…[p]
[n_st]
なんだか力が抜けちゃいます…。[p]
[jump  storage="after_action.ks"  target="*after_nade" ]


[_tb_end_tyrano_code]


