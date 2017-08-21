[_tb_system_call storage=system/_event.ks]

[tb_start_tyrano_code]
[tb_show_message_window  ]

*feed
[black]
[set_dinner]
[cancelskip]
[show_skip]
#
…[p]
（もう日も暮れた。そろそろ食事にしよう…[p]
（シルヴィにテーブルに着くよう言う[p]
[playbgm  loop="true"  storage="Ivory_Fiber.ogg"  ]
[bg  time="1"  method="crossfade"  storage="db-a.jpg"  ]
[d_f]
[show_dinner]

…[l]
[d_tf]

#シルヴィ
お食事…、悲鳴をあげていないのにご飯が頂けるんですか？[p]
[d_clt]
ご主人様はすごく慈悲深いんですね。[lr]ありがとうございます[p]

#
（さて、シルヴィの食事はどうしようか？[p]

[button  storage=""  target="*human"  graphic="ch/food2.png"    x="0"  y="200" ]
[button  storage=""  target="*pet"  graphic="ch/food1.png"   x="0"  y="350"  ]
[s  ]

*pet
[cm]
[cancelskip]
#
（無駄な出費をしたくもない。[l]パンと水だけやれば十分だろう[p]
[chara_mod  name="e-h2"  time="100"  storage="chara/14/food-a.png"  ]
#シルヴィ
ありがとうございます[p]
シルヴィは静かに与えられた餌を食べはじめた…[p]
[eval exp="f.feed='pet'" ]
[jump  storage=""  target="*her_room" ]


*human
[cm]
[set_dinner]
[cancelskip]
[black]
#
（今日から食事は二人分作ることにしよう。[l]一人分も二人分も手間はそう変わらない[p]
[bg  time="1"  method="crossfade"  storage="db-a.jpg"  ]
[d_af]
[chara_mod  name="e-h2"  time="100"  storage="chara/14/food-b.png"  ]
[show_dinner]


…[l]
[d_tf]
[eval exp="f.love=f.love+3" ]
#シルヴィ
今日はお客様でもいらっしゃるんですか？[lr]私はどこかに隠れていた方が…[p]
#
（テーブルに並べた食事を見て、自分の分だとは思っていないらしい[p]
[d_catf]
#シルヴィ
…私の食事、ですか？[p]
前のご主人様がくれたのはパンと水だったんですけど…[p]
[d_catf]
これを、食べて…いいんですか？[p]
[d_caf]

#シルヴィ
…[lr]
[d_catf]
…じゃあ。い、いただきます[p]
[black]
[set_dinner]
#
（シルヴィはおずおずとフォークに手を伸ばし、ぎこちない動きで食事を始めた[lr]
表情もこわばっていて食事を楽しめている風ではない[p]
…[p]
[bg  time="1"  method="crossfade"  storage="db-a.jpg"  ]

[d_clt]
[show_dinner]


#シルヴィ
…ご馳走様でした[p]

[d_caf]
#
（シルヴィは食事が終わると少し困ったように視線を泳がしている[p]

[d_ctf]

#シルヴィ
あの、ご主人様。[lr]
…こんな美味しいご飯、初めていただきました[p]
お腹いっぱい食べれたのも初めてです。[lr]
[d_cclt]
…ありがとう…ございます[p]
#
（嘘を言っているわけではなさそうだが不安や疑心の色が強く伺える。[lr]
今までの扱いとの違いに困惑しているようだ[p]

[eval exp="f.feed='human'" ]

*her_room
[black]
[set_stand]
もう夜だ。寝支度をしよう…。[p]
[bg  time="1"  method="crossfade"  storage="bg-room.jpg"  ]
[show_stand]


[f_tf]

#シルヴィ
ご主人様。
私は、どこで寝れば良いですか？[p]
#
（彼女の寝床…。[lr]幸い空いている部屋がある。[p]

[black]
[bg  time="1"  method="crossfade"  storage="bg-bed.jpg"  ]
[f_f]
[show_stand]


[f_tf]
#シルヴィ
この部屋を使っていいんですか？[lr]

[f_ctf]

この、ベッドを？私は床でも大丈夫ですが…。[p]

#
（診療所は別にあるが、万一ここに急患が来た時のための予備の部屋とベッドだ[p]
#シルヴィ

[f_cl]
…[p]
[f_tf]
…では、ありがたく使わせていただきます。[p]

[if exp="f.feed=='human'" ]
#シルヴィ
[f_ctf]
…[p]
…あの、ご主人様。[lr]私は…。これからどうなるんですか？[lr]
もしかして、何かすごく苦しいこととか、恐ろしいことをされるんですか？[p]
[elsif exp="f.feed=='pet'" ]
[f_tf]
おやすみなさいませ、ご主人様。[p]
[black]
…[p]
[fadeoutbgm time=500]
[cancelskip]
[jump  storage="step1.ks"  target="*show_bace"  ]
[else]
[endif]

#
（この家での扱いになにか裏があると思っているようだ。[p]

[button  storage=""  target="*no"  graphic="ch/noidont.png"    x="0"  y="200" ]
[button  storage=""  target="*silent"  graphic="ch/silent-r.png"   x="0" y="350" ]
[s]

*no
[cm]
[cancelskip]
[eval exp="f.trust=f.trust+1" ]
#シルヴィ
ほ、本当ですか？[p]
私、痛がってご主人様を喜ばせることはできます。[lr]
前のご主人様は私の悲鳴を聞いてとても嬉しそうでしたし…。[p]
できることなら他のお手伝いもします。[lr]
[f_cclt]
ご飯も、少しで大丈夫ですから。[lr]
だからどうかお手柔らかにお願いします。[p]
#
（こちらの返事は信用されていないようだ[p]
[f_ctf]
#シルヴィ
あ…[lr]ご、ごめんなさい。[lr]
[f_cclt]
その、おやすみなさいませ、ご主人様。[p]
[black]
…[p]
[fadeoutbgm time=500]
[cancelskip]
[jump  storage="step1.ks"  target="*show_bace"  ]

*silent
[cm]
[cancelskip]
#
（質問を無視して部屋を出た[p]
#シルヴィ
あ…[p]
[black]
…[p]
[fadeoutbgm time=500]
[cancelskip]
[jump  storage="step1.ks"  target="*show_bace"  ]





*to_next
[fadeoutbgm time=500]
[set_stand]
[show_skip]
[cancelskip]
[black]
…[p]
[endif]

[f_tf]
[bg  time="1"  method="crossfade"  storage="bg-room.jpg"  ]
[playbgm  loop="true"  storage="Ivory_Fiber.ogg"  ]
[show_stand]

#シルヴィ
あの、ご主人様。[lr]何か私もお手伝いできることはないですか？[p]
#
（寝支度を整えようとするとおずおずとシルヴィが声をかけてきた[p]
[f_ctf]
#シルヴィ
ご主人様が家のことをやってるのを、奴隷の私がただ見ているだけというのは…。[p]
#
（役割がないと捨てられるのでは、と不安になっているのかもしれない[p]

[button  storage=""  target="*job"  graphic="ch/job.png"    x="0"  y="200" ]
[button  storage=""  target="*ignore"  graphic="ch/ignore.png"   x="0"  y="350" ]
[s]

*job
[cm]
[cancelskip]
[eval exp="f.trust=f.trust+1" ]
[f_clt]
#シルヴィ
はい、わかりました。[lr]お掃除とお皿洗いですね。[p]
[f_tf]
精一杯頑張ります。[p]
[fadeoutbgm time=500]
[cancelskip]
[jump  storage="step2.ks"  target="*step2"  ]

*ignore
[cm]
[cancelskip]
[f_catf]
#シルヴィ
ぁ…すいません。[lr]なんでもないです。[p]
[fadeoutbgm time=500]
[cancelskip]
[jump  storage="step2.ks"  target="*step2"  ]

*dead_end

[cancelskip]
#
（朝になってもシルヴィは与えた部屋から出てくる様子がない。[lr]部屋に様子を見に行くとシルヴィは苦しそうな顔でうなされている。[p]
（額に手をやるとひどい熱があるようだ。[lr]本人が平然としているから触れなかったが、思えば昨晩も酷くやつれた顔をしていた。[p]
（食事も喉を通らないらしい。[lr]与える薬も吐き出してしまう。[p]
（…数日後に彼女は事切れた。[lr]恐らくここに来る前から衰弱していたのだろう[p]
…[p]

[fadeoutbgm time=500]
[jump  storage="action_lead.ks"  target="*game_over"  ]


[_tb_end_tyrano_code]

