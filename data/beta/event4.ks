[_tb_system_call storage=system/_event4.ks]

[tb_start_tyrano_code]

*ask
[cancelskip]
[show_skip]
[black]
[set_stand]
[bg  time="1"  method="crossfade"  storage="bg-room.jpg"  ]
[playbgm  loop="true"  storage="Ivory_Fiber.ogg"  ]
[f_ct]
…[p]
[show_stand]

#シルヴィ
ご主人様。[p]
ご主人様は私に、ひどいことをしませんよね？[p]
[f_cclt]
ここに来る前は、私…毎日痛くて苦しくて…。[lr]
泣いても、笑っても、受ける仕打ちは変わりませんでした。[lr]
ただ受け入れる以外はできなくて。[p]
それをいちいち悲しんでいたら、耐えられませんでした。[p]
[f_ct]
だから、何も考えないようにしようって。[lr]もう…悲しくて泣いたり、うれしくて笑うのはやめようって思ったんです。[p]
希望を持っても、不幸を嘆いても、何もいいことなんてなかったから。[p]
最初ここにきて、ご主人様は酷いことはしなくて…[lr]今まで私が会ってきた人たちとは違うんじゃないかって思いました。[p]
でも、期待はしないようにしてたんです。[lr]もしまた希望を持って、それで裏切られたら…私きっともう耐えられません…。[p]
[f_cclt]
なのに、それでもご主人様はやさしくって、暖かくって…。[lr]私、どうしたらいいのかわからないです。[p]
[f_ct]
ご主人様、私…ご主人様のこと…信じていいんですか？[p]

[button  storage=""  target="*say"  graphic="ch/say.png"    x="0"  y="200" ]
[button  storage=""  target="*act"  graphic="ch/act.png"   x="0"  y="350" ]
[s]


*say
[cm]
[cancelskip]
[f_clt]
…[p]…私、信じます。[lr]その言葉。[p]
[f_ct]
今まで、無愛想で、ご主人様の優しさも無視してて、[lr]本当にすいませんでした。[p]
[jump  storage=""  target="*c"  ]

*act
[cm]
[cancelskip]
[f_clt]
…ご主人様はいつもそうやって優しくて、[lr]裏切ったことなんてありませんでしたよね…。[p]

*c
[f_ct]
…私、ご主人様のお役に立てるようがんばります。[lr]だから、私が笑っても、泣いても、見捨てないでください…。[p]
[f_cclt]
やさしいままの、ご主人様で…。[p]
[eval exp="f.feed='trust'" ]
[fadeoutbgm time=500]
[black]
[cancelskip]
[jump  storage="step4.ks"  target="*show_bace"  ]

*remind
[black]
[show_skip]
#
（寝る前にこの前シルヴィが言っていたことが頭をよぎる。[p]

[button  storage=""  target="*second"  graphic="ch/second.png"    x="0"  y="200" ]
[button  storage="step4.ks"  target="*show_bace"  graphic="ch/nop.png"   x="0"  y="350" ]
[s]


*second
[cm]
[cancelskip]

[black]
[set_stand]
[f_t]
[bg  time="1"  method="crossfade"  storage="bg-bed.jpg"  ]
[playbgm  loop="true"  storage="Ivory_Fiber.ogg"  ]
…[p]
[show_stand]


（シルヴィに声をかける。[p]
#シルヴィ
え…。ご一緒してもいい？[p]
[jump  storage=""  target="*yes"  ]


*to_next
[cancelskip]
[show_skip]
[black]
[set_stand]
[f_]
[bg  time="1"  method="crossfade"  storage="bg-bed.jpg"  ]
[playbgm  loop="true"  storage="Ivory_Fiber.ogg"  ]
…[p]
[show_stand]


#
（寝支度を整えているとシルヴィが部屋にやってきた。[p]
#シルヴィ
[f_ct]
あの、ご主人様。その…。[p]
私、よく怖い夢を見るんです。[lr]昔のこととか、後ろ向きな妄想とか、寝てる時に思い出してしまって。[p]
それで、夜中に起きてしまうこともよくあって…。[p]
[f_cclt]
それで…。[lr]あの…。[p]
#
（何か言いずらそうにしていてなかなか次の言葉が出てこない。[p]
[f_ct]
#シルヴィ
それで、お願いなんですけど。[lr]…ご主人様と同じ部屋で寝させていただいたら、ご迷惑でしょうか？[p]
#
（そうは言ってもこの部屋にはベッドは一つしかない…[p]
#シルヴィ
[f_ctp]
あの、嫌でなければ、一緒のベッドで…。[p]
ご主人様となら、きっと安心できそうな気が…。[p]

[button  storage=""  target="*yes"  graphic="ch/sleep-with.png"    x="0"  y="200" ]
[button  storage=""  target="*no"  graphic="ch/cant.png"   x="0"  y="350" ]
[s]

*yes
[cm]
[cancelskip]
[f_sp]
本当ですか？[p]
[f_ctp]
こんなに甘えてしまって、ご迷惑だとは思いますけど…。[lr]
[f_sp]
お願いします。[p]
[fadeoutbgm time=500]
[black]
[set_stand]
[f_s]
#
（シルヴィと一つのベッドに入った。[p]
すぐ隣で寝息を立てる無防備な少女が気になって少し寝るまで時間がかかった…。[p]
…[p]

[bg  time="1"  method="crossfade"  storage="bg-bed.jpg"  ]
[playbgm  loop="true"  storage="Ivory_Fiber.ogg"  ]


#
（朝、起きるとシルヴィは先に起きていたようで、服を着替えてベッドの縁に座っていた。[lr]
どうやら少し寝坊してしまったらしい。[p]
[show_stand]

#シルヴィ
あ、おはようございます。[p]
[f_st]
昨日は、思った以上にぐっすり寝られました。[lr]朝まで目が覚めなかったし、悪い夢も見なかったし。[lr]
[f_sclt]
ありがとうございました。[p]
[f_st]
今日は私が朝食を用意したんで、よければ召し上がってください。[lr]
パンと、卵とベーコンを焼いただけですけど。[p]

[f_cl]
…。[p]
[f_ctp]
あと、その…[lr]よければこれからも、時々一緒に寝てもらってもいいですか？[p]
[fadeoutbgm time=500]
[black]
…[p]
[cancelskip]
[jump  storage="step5.ks"  target="*a"  ]

*no
[cm]
[cancelskip]
[f_cl]
…そうですよね。ご迷惑ですよね。[p]
なんでもないです。[lr]どうか、忘れてください。[p]
#
（シルヴィは自分の部屋へと戻っていった。[p]

[eval exp="f.feed='bed'" ]
[fadeoutbgm time=500]
[black]
…。[p]
[cancelskip]
[jump  storage="step4.ks"  target="*show_bace"  ]

[_tb_end_tyrano_code]