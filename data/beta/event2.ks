[_tb_system_call storage=system/_event2.ks]

[tb_start_tyrano_code]

*to_next
[black]
[set_stand]
[cancelskip]
[show_skip]
[fadeoutbgm time=500]
[bg  time="1"  method="crossfade"  storage="bg-room.jpg"  ]
[f_]
[show_stand]
…[p]
[playbgm  loop="true"  storage="Ivory_Fiber.ogg"  ]

#
（朝、部屋から出ると、シルヴィが窓の外を眺めていた[p]

[f_t]
#シルヴィ
おはようございます。[lr]
今日は、お仕事はお休みですか。[p]
代わりに午前中に買い出し…ですか。[lr]
はい、行ってらっしゃいませ。[p]

#
（…そういえばここに来てからシルヴィを一度も外に出していない[p]

[button  storage=""  target="*together"  graphic="ch/together.png"    x="0"  y="200" ]
[button  storage=""  target="*alone"  graphic="ch/alone.png"   x="0"  y="350" ]
[s]

*alone
[cm]
[cancelskip]
#シルヴィ
では、お気をつけて。[lr]
私はお部屋のお掃除を済ませておきます。[p]
[eval exp="f.flag1='alone'" ]
[eval exp="f.trust=f.trust-3" ]
[eval exp="f.sand=1" ]

[black]
#
一人で買い出しに行き、必要なものを買って帰る…。
[fadeoutbgm time=500]
[jump  storage=""  target="*next"  ]

*together
[cm]
[cancelskip]
[eval exp="f.trust=f.trust+1" ]
[f_]
#シルヴィ
…。[lr]
[f_t]
私も、ですか？[p]
[f_cl]
…。[lr]
[f_t]
わかりました。[lr]
あまり重い荷物とかは持てないと思いますけど、ご一緒します…。[p]

[black]
[set_stand]
[fadeoutbgm time=500]
[bg  time="1"  method="crossfade"  storage="bg-town.jpg"  ]
…[p]
[f_]
[show_stand]

[playbgm  loop="true"  storage="Ochre_Breeze.ogg"  ]

#
…。[lr]

（シルヴィは黙って後ろをついてきている。[p]
（一見落ち着いているが目は右へ左へと忙しく動いている。[lr]
（街に出たことがあまりないのだろう。[p]

#シルヴィ
…。[p]

#
しばらく歩いていると一瞬シルヴィの足が止まった[p]

[f_clt]
#シルヴィ
あ、ごめんなさい。なんでもないです。[p]

#
ふと甘い香りが鼻をくすぐる。[lr]
通りかかった喫茶店の匂いに気を引かれたらしい[p]
[fadeoutbgm time=500]
少し早いが昼食を食べていこうか。[p]
#シルヴィ
…お昼をここで、ですか？[p]

[black]
[set_stand]
[f_t]
[bg  time="1"  method="crossfade"  storage="bg-cafe.jpg"  ]
[playbgm  loop="true"  storage="Jelly_Honey.ogg"  ]
…[p]
[show_stand]

[free]

[chara_mod  name="man"  time="1"  storage="chara/1/nephy.png" ]
[chara_show  name="man"  time="100"  wait="true" ]

#奇妙な店員
いらっしゃいませー？[p]

#
店内に入ると妙なしゃべり方をする店員がおどけたような動きで飛んできた。[p]

#奇妙な店員
お二人様ですねー？[p]
こちらへどうぞー？[p]
#
（案内された席にシルヴィと座った[p]


[black]
[set_dinner]
[d_]
[bg  time="1"  method="crossfade"  storage="db-b.jpg"  ]
…[p]
[show_dinner]

…。[p]
（メニューに目を通し自分用にサンドイッチを注文する。[p]

（シルヴィは物珍しげに辺りを見回し、向かいの席の客が頼んだパンケーキに目を止めていた。[p]
（シルヴィの用の注文は…[p]

[button  storage=""  target="*pancake"  graphic="ch/pancake.png"    x="0"  y="200" ]
[button  storage=""  target="*sand"  graphic="ch/sand.png"   x="0"  y="350" ]
[s]

*sand
[cm]
[cancelskip]
#
シルヴィにも同じものでいいだろう。[lr]サンドイッチを合わせて２つ注文する。[p]
[chara_mod  name="e-h2"  time="100"  storage="chara/14/f-sand.png"  ]

注文したものが机に運ばれてきた。[p]
[d_at]
#シルヴィ
これ、私の分ですか？[lr]
[d_clt]
ありがとうございます。いただきます[p]
#
お互い手早くサンドイッチを食べ終え店を出る。[lr]早く買い出しをして帰ろう。[p]
[black]
[fadeoutbgm time=500]
…[p]
[eval exp="f.sand=1" ]
#
…[p]
[cancelskip]
[jump  storage="step3.ks"  target="*step3"  ]


*pancake
[cm]
[cancelskip]
[eval exp="f.sand=0" ]
[eval exp="f.trust=f.trust+1" ]
[eval exp="f.love=f.love+5" ]
[black]
[set_dinner]
[d_a]
[chara_mod  name="e-h2"  time="100"  storage="chara/14/f-pancake.png"  ]
[bg  time="1"  method="crossfade"  storage="db-b.jpg"  ]
…[p]
[show_dinner]


しばらくして注文したものがテーブルに運ばれてきた。[p]
[d_at]
#シルヴィ
あ、これ…。[lr] 私に？[p]
[d_ct]
…え？はい。食べたことはないです。[p]
[d_t]
食べて…いいんですか？[p]

[free]
[set_stand]
[bg  time="1"  method="crossfade"  storage="bg-cafe.jpg"  ]
[f_clt]
…[p]
[show_stand]


#シルヴィ
じゃあ、いただきます…。[p]
…。[p]
[f_t]
…ん、ふわふわ[lr]
[f_s]
…甘い。[p]
#
（普段ゆっくりおずおずといった動き方をするシルヴィにしては珍しく、パクパクとパンケーキを口に運び始める。[p]
（甘い昼食はお気に召したようだ。[p]
[black]
[set_stand]
#
…。[p]
[bg  time="1"  method="crossfade"  storage="bg-cafe.jpg"  ]
[f_clt]
…[p]
[show_stand]


#シルヴィ
ん、ごちそうさまでした。[p]
[f_s]
おいしかったです。…とても[lr]
…ありがとうございます。[p]

#
（シルヴィは初めて少し頬が緩くなった表情をみせる。[p]
[f_cl]
（本人もそれに気がついたのか、慌てて表情を取り繕ってしまう。[p]
（さておき自分の昼食も食べ終えた。[lr]
軽く買い出しをして帰るとしよう。[p]
[fadeoutbgm time=500]
[black]
#
…[p]

*next
[cancelskip]
[jump  storage="step3.ks"  target="*step3"  ]


[_tb_end_tyrano_code]

