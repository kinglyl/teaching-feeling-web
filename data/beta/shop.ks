[_tb_system_call storage=system/_shop.ks]

[tb_start_tyrano_code]

*shop
[cm]
[fadeoutbgm time=500]
[black]
[if exp="f.shop==0" ]
[eval exp="f.shop=1" ]
[jump  storage="event3.ks"  target="*shop_first" ]
[endif]

[bought_count]
;[emb exp="f.bought_count" ]

[iscript]
f.lady=Math.floor(Math.random() * 3 + 1);
[endscript]

[playbgm  loop="true"  storage="Brilliant_Red.ogg" ]
[bg  time="1"  method="crossfade"  storage="bg-shop.jpg" ]
#
（服屋にやってきた。[p]

[set_lady]
[chara_show  name="man"  time="100"  wait="true" ]

[aurel]
あらあら、いらっしゃいませ。ご自由に見ていってくださいな。[p]

#
（何か買おうか？[p]

[anim name="man" time="300" left="20" ]
[chara_mod  name="window"  time="1"  storage="chara/12/shop-win.png" ]
[chara_show  name="window"  time="1"  wait="true" left="613"  top="22" ]

*shop_dress
[cm]
[eval exp="f.ch_win=1" ]
[button  storage=""  target="*return_menu"  graphic="m/back.png"  width="104"  height="33"  x="1188"  y="563"  _clickable_img="" ]
[button  storage=""  target="*c_b1"  graphic="c/tite.png"  x="698"  y="180"  ]
[button  storage=""  target="*c_b2"  graphic="c/black.png"  x="912"  y="180"  ]
[button  storage=""  target="*c_b3"  graphic="c/magend.png"   x="968"  y="180"  ]

[if exp="f.step>3" ]
[button  storage=""  target="*c_b4"  graphic="c/red.png"   x="1024"  y="180"  ]
[button  storage=""  target="*c_b5"  graphic="c/green.png"   x="1082"  y="180"  ]
[endif]

[if exp="f.step>3" ]
[button  storage=""  target="*c_c1"  graphic="c/hira.png"  x="698"  y="230"  ]
[endif]

[if exp="f.c_c1==1" ]
[button  storage=""  target="*c_c2"  graphic="c/black.png"  x="890"  y="230"  ]
[button  storage=""  target="*c_c3"  graphic="c/green.png"    x="945"  y="230"  ]
[button  storage=""  target="*c_c4"  graphic="c/red.png"  x="999"  y="230"  ]
[button  storage=""  target="*c_c5"  graphic="c/magend.png"  x="1057"  y="230"  ]
[endif]

[if exp="f.step>=6" ]
[button  storage=""  target="*c_d1"  graphic="c/under.png"  x="698"  y="380"  ]
[endif]

[if exp="f.c_d1==1" ]
[button  storage=""  target="*c_d2"  graphic="c/black.png"  x="921"  y="380"  ]
[button  storage=""  target="*c_d3"  graphic="c/pink.png"   x="975"  y="380"  ]
[endif]

[if exp="f.step>=6" ]
[button  storage=""  target="*c_e1"  graphic="c/onep.png"  x="698"  y="280"  ]
[endif]

[if exp="f.c_e1==1" ]
[button  storage=""  target="*c_e2"  graphic="c/yellow.png"  x="840"  y="280"  ]
[button  storage=""  target="*c_e3"  graphic="c/red.png"  x="915"  y="280"  ]
[button  storage=""  target="*c_e4"  graphic="c/magend.png"  x="970"  y="280"  ]
[button  storage=""  target="*c_e5"  graphic="c/white.png"  x="1025"  y="280"  ]
[endif]

[if exp="f.step>=6 && f.love>=500" ]
[button  storage=""  target="*c_f1"  graphic="c/nurse.png"  x="698"  y="330"  ]
[endif]

[if exp="f.c_f1==1" ]
[button  storage=""  target="*c_f2"  graphic="c/pink.png"  x="860"  y="330"  ]
[button  storage=""  target="*c_f3"  graphic="c/black.png"  x="935"  y="330"  ]
[endif]

[if exp="f.step>=6 && f.love>=600" ]
[button  storage=""  target="*c_g1"  graphic="c/wahuku.png"  x="698"  y="430"  ]
[endif]

[if exp="f.c_g1==1" ]
[button  storage=""  target="*c_g2"  graphic="c/blue.png"  x="815"  y="430"  ]
[button  storage=""  target="*c_g3"  graphic="c/magend.png"  x="868"  y="430"  ]
[button  storage=""  target="*c_g4"  graphic="c/pink.png"  x="925"  y="430"  ]
[button  storage=""  target="*c_g5"  graphic="c/black.png"  x="1000"  y="430"  ]
[endif]

[if exp="f.step>=6 && f.love>=800" ]
[button  storage=""  target="*c_h1"  graphic="c/sera.png"  x="698"  y="480"  ]
[endif]

[if exp="f.c_h1==1" ]
[button  storage=""  target="*c_h2"  graphic="c/black.png"  x="835"  y="480"  ]
[button  storage=""  target="*c_h3"  graphic="c/long-w.png"  x="888"  y="480"  ]
[button  storage=""  target="*c_h4"  graphic="c/long-b.png"  x="1008"  y="480"  ]
[endif]

[if exp="f.step>=6 && f.love>=700" ]
[button  storage=""  target="*c_i1"  graphic="c/epdress.png"  x="698"  y="530"  ]
[endif]

[if exp="f.c_i1==1" ]
[button  storage=""  target="*c_i2"  graphic="c/blue.png"  x="865"  y="530"  ]
[button  storage=""  target="*c_i3"  graphic="c/magend.png"  x="918"  y="530"  ]
[button  storage=""  target="*c_i4"  graphic="c/green.png"  x="975"  y="530"  ]
[button  storage=""  target="*c_i5"  graphic="c/pink.png"  x="1030"  y="530"  ]
[endif]

[if exp="f.ch_win==1" ]
[button  storage=""  target="*shop_dress"  graphic="c/clothes.png"  width="58"  height="42"  x="1003"  y="68"  _clickable_img="" ]
[else]
[button  storage=""  target="*shop_dress"  graphic="c/clothes-.png"  width="58"  height="42"  x="1003"  y="68"  _clickable_img="" ]
[endif]

[if exp="f.ch_win==2" ]
[button  storage=""  target="*shop_hair"  graphic="c/hair.png"  width="86"  height="43"  x="1053"  y="68"  _clickable_img="" ]
[else]
[button  storage=""  target="*shop_hair"  graphic="c/hair-.png"  width="86"  height="43"  x="1053"  y="68"  _clickable_img="" ]
[endif]

[if exp="f.ch_win==3" ]
[button  storage=""  target="*shop_pin"  graphic="c/acce.png"  width="114"  height="42"  x="1131"  y="68"  _clickable_img="" ]
[else]
[button  storage=""  target="*shop_pin"  graphic="c/acce-.png"  width="114"  height="42"  x="1131"  y="68"  _clickable_img="" ]
[endif]

[if exp="f.ch_win==4" ]
[button  storage=""  target="*shop_leg"  graphic="c/leg.png"  width="48"  height="42"  x="1238"  y="68"  _clickable_img="" ]
[else]
[button  storage=""  target="*shop_leg"  graphic="c/leg-.png"  width="48"  height="42"  x="1238"  y="68"  _clickable_img="" ]
[endif]


[if exp="f.step>=6 && f.shop_t==1" ]
[button  storage=""  target="*talk"  graphic="c/shop-talk.png"  x="820"  y="20"  _clickable_img="" ]
[endif]

[s  ]


*bought_dress
[cm]
（これはもう買ってある。別のものを買おう。[l]
[jump  storage=""  target="*shop_dress" ]
*bought_hair
[cm]
（これはもう買ってある。別のものを買おう。[l]
[jump  storage=""  target="*shop_hair" ]
*bought_pin
[cm]
（これはもう買ってある。別のものを買おう。[l]
[jump  storage=""  target="*shop_pin" ]
*bought_leg
[cm]
（これはもう買ってある。別のものを買おう。[l]
[jump  storage=""  target="*shop_leg" ]

*color
を買った。[p]
[free]
[set_stand]
[f_t]
[show_stand]


[if exp="f.step<5" ]
#シルヴィ
これは…。前に買っていただいた服とは生地の色が違いますね。[p]
色が違うだけで雰囲気も変わりますね。[lr]これも、私が着ても良いんですか？[p]
[f_s]
…ありがとうございます。[p]
[else]
#シルヴィ
これは…。前に買っていただいた服とは生地の色が違いますね。[lr]
[f_st]
ありがとうございます。[p]
色が違うだけで雰囲気も変わりますね。[lr]
[f_sst]
早く着てみたいです。[p]
[endif]
[jump  storage="after_action.ks"  target="*after_shop" ]


*wa_color
#シルヴィ
これ、このあいだのとは色が違う…。[lr]
和服っていうんですよね。[p]
着るのはちょっと大変だけど、本当に綺麗な生地ですよね。[p]
[f_sst]
ありがとうございます。[p]
[jump  storage="after_action.ks"  target="*after_shop" ]




*color_r
を買った。[p]
[free]
[set_stand]
[f_t]
[show_stand]

[if exp="f.step<5" ]
#シルヴィ
これは…。前に買っていただいたリボンとは色が違いますね。[p]
本当に、いただいてもいいんですか？[p]
[f_s]
…ありがとうございます。[p]
[else]
#シルヴィ
これは…。前に買っていただいたリボンとは色が違いますね。[lr]
[f_st]
ありがとうございます。[p]
リボン一つで雰囲気変わりそう。[lr]
[f_sst]
つけてみるのが楽しみです。[p]
[endif]
[jump  storage="after_action.ks"  target="*after_shop" ]

*color_p
を買った。[p]
[free]
[set_stand]
[f_t]
[show_stand]

[if exp="f.step<5" ]
#シルヴィ
これは…。前に買っていただいたピンとは違う色ですね。[p]
本当に、いただいてもいいんですか？[p]
[f_s]
…ありがとうございます。[p]
[else]
#シルヴィ
これは…。前に買っていただいたピンとは違う色ですね。[lr]
[f_st]
ありがとうございます。[p]
小さくても、結構印象が変わりますよね。[lr]
[f_sst]どんな風に見えるか、楽しみです。[p]
[endif]
[jump  storage="after_action.ks"  target="*after_shop" ]


*color_g
を買った。[p]
[free]
[set_stand]
[f_t]
[show_stand]

#シルヴィ
これは…。前に買っていただいたメガネとは色が違いますね。[lr]
[f_s]
ありがとうございます。[p]
[f_st]
メガネでオシャレって、なんだか不思議な感じです。[p]
[jump  storage="after_action.ks"  target="*after_shop" ]


*color_s
を買った。[p]
[free]
[set_stand]
[f_t]
[show_stand]

#シルヴィ
これは…。新しい靴下ですか？[lr]
[f_s]
[if exp="f.step>=5" ]
ありがとうございます。[lr]
[f_st]
私も[name]の好きなものを身につけたいです。[p]
[else]
…ありがとうございます。[p]
[endif]
[jump  storage="after_action.ks"  target="*after_shop" ]








*c_b1
[cm]
[jump  storage=""  target="*bought_dress" ]

*c_b2
[cm  ]
[if exp="f.c_b2==0" ]
[eval exp="f.c_b2=1" ]
（落ち着いた服
[jump  storage=""  target="*color" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]

*c_b3
[cm  ]
[if exp="f.c_b3==0" ]
[eval exp="f.c_b3=1" ]
（落ち着いた服
[jump  storage=""  target="*color" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]

*c_b4
[cm  ]
[if exp="f.c_b4==0" ]
[eval exp="f.c_b4=1" ]
（落ち着いた服
[jump  storage=""  target="*color" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]

*c_b5
[cm  ]
[if exp="f.c_b5==0" ]
[eval exp="f.c_b5=1" ]
（落ち着いた服
[jump  storage=""  target="*color" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]

*c_c1
[cm  ]
[if exp="f.c_c1==0" ]
[eval exp="f.c_c1=1" ]
#
（ヒラヒラした服を買った。[p]
[free]
[set_stand]
[f_]
[show_stand]

#シルヴィ
[f_st]
軽くてヒラヒラした服。リボンもたくさんで、…かわいい。[lr]
ありがとうございます。[p]
[jump  storage="after_action.ks"  target="*after_shop" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]

*c_c2
[cm  ]
[if exp="f.c_c2==0" ]
[eval exp="f.c_c2=1" ]
（ヒラヒラした服
[jump  storage=""  target="*color" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]

*c_c3
[cm  ]
[if exp="f.c_c3==0" ]
[eval exp="f.c_c3=1" ]
（ヒラヒラした服
[jump  storage=""  target="*color" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]

*c_c4
[cm  ]
[if exp="f.c_c4==0" ]
[eval exp="f.c_c4=1" ]
（ヒラヒラした服
[jump  storage=""  target="*color" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]

*c_c5
[cm  ]
[if exp="f.c_c5==0" ]
[eval exp="f.c_c5=1" ]
（ヒラヒラした服
[jump  storage=""  target="*color" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]

*c_d1
[cm  ]
[if exp="f.c_d1==0" ]
[eval exp="f.c_d1=1" ]
（とても薄い部屋着を買った[p]
[free]
[set_stand]
[f_tp]
[show_stand]


#シルヴィ
これは…すごい薄いお洋服ですね。[lr]透けてる…。[p]
少し恥ずかしいですけど…。[lr]
[f_stp]
[name]が喜ぶなら着てみます。[p]
[jump  storage="after_action.ks"  target="*after_shop" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]

*c_d2
[cm  ]
[if exp="f.c_d2==0" ]
[eval exp="f.c_d2=1" ]
（とても薄い部屋着
[jump  storage=""  target="*color" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]

*c_d3
[cm  ]
[if exp="f.c_d3==0" ]
[eval exp="f.c_d3=1" ]
（とても薄い部屋着
[jump  storage=""  target="*color" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]

*c_e1
[cm  ]
[if exp="f.c_e1==0" ]
[eval exp="f.c_e1=1" ]
（青いワンピースを買った[p]
[free]
[set_stand]
[f_st]
[show_stand]

#シルヴィ
これは…かわいいワンピースですね。[lr]涼しげで、動きやすそう。[p]
買っていただけるんですか？[lr]
[f_sst]
ありがとうございます。[p]
これを着て[name]とお出かけしたいですね。[p]
[jump  storage="after_action.ks"  target="*after_shop" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]

*c_e2
[cm  ]
[if exp="f.c_e2==0" ]
[eval exp="f.c_e2=1" ]
（黄色いワンピース
[jump  storage=""  target="*color" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]

*c_e3
[cm  ]
[if exp="f.c_e3==0" ]
[eval exp="f.c_e3=1" ]
（赤いワンピース
[jump  storage=""  target="*color" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]

*c_e4
[cm  ]
[if exp="f.c_e4==0" ]
[eval exp="f.c_e4=1" ]
（紫のワンピース
[jump  storage=""  target="*color" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]

*c_e5
[cm  ]
[if exp="f.c_e5==0" ]
[eval exp="f.c_e5=1" ]
（白いワンピース
[jump  storage=""  target="*color" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]

*c_f1
[cm  ]
[if exp="f.c_f1==0" ]
[eval exp="f.c_f1=1" ]
（ナース服を買った。[p]
[free]
[set_stand]
[f_st]
[show_stand]

#シルヴィ
これは…看護婦さんの服ですね。[lr]これを着て[name]のお仕事をお手伝いさせていただけるんですか？[p]
[f_sst]
ありがとうございます。[r]
私[name]のお役に立てるようたくさん頑張りますね。[p]
[jump  storage="after_action.ks"  target="*after_shop" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]


*c_f2
[cm  ]
[if exp="f.c_f2==0" ]
[eval exp="f.c_f2=1" ]
（ピンクのナース服を買った[p]
[free]
[set_stand]
[f_st]
[show_stand]

#シルヴィ
これは…前のとは違う色のナース服ですね。[lr]予備ということでしょうか。[p]
こっちはちょっとかわいいですね。[p]
[f_sst]
ありがとうございます。[r]
私もっと頑張ります。[p]
[jump  storage="after_action.ks"  target="*after_shop" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]

*c_f3
[cm  ]
[if exp="f.c_f3==0" ]
[eval exp="f.c_f3=1" ]
（黒いナース服を買った[p]
[free]
[set_stand]
[f_st]
[show_stand]

#シルヴィ
これは…前のとは違う色のナース服ですね。[lr]予備ということでしょうか。[p]
[f_t]
真っ黒…。こんなのもあるんですね[p]
[f_sst]
ありがとうございます。[r]
私もっともっと頑張ります。[p]
[jump  storage="after_action.ks"  target="*after_shop" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]


*c_g1
[cm  ]
[if exp="f.c_g1==0" ]
[eval exp="f.c_g1=1" ]
（和服を買った。[p]
[free]
[set_stand]
[f_st]
[show_stand]

#シルヴィ
[f_st]
綺麗な生地ですね。[lr]
[f_t]
これ、服…なんですよね？[p]
外国の文化の服なんですね。[lr]
どうやって着るんでしょう？[p]
…店員さんに？[lr]
[f_s]
そうですね。着方を教わってきます。[p]
[jump  storage="after_action.ks"  target="*after_shop" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]

*c_g2
[cm  ]
[if exp="f.c_g2==0" ]
[eval exp="f.c_g2=1" ]
（和服を買った。[p]
[free]
[set_stand]
[f_st]
[show_stand]
[jump  storage=""  target="*wa_color" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]

*c_g3
[cm  ]
[if exp="f.c_g3==0" ]
[eval exp="f.c_g3=1" ]
（和服を買った。[p]
[free]
[set_stand]
[f_st]
[show_stand]
[jump  storage=""  target="*wa_color" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]

*c_g4
[cm  ]
[if exp="f.c_g4==0" ]
[eval exp="f.c_g4=1" ]
（和服を買った。[p]
[free]
[set_stand]
[f_st]
[show_stand]
[jump  storage=""  target="*wa_color" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]


*c_g5
[cm  ]
[if exp="f.c_g5==0" ]
[eval exp="f.c_g5=1" ]
（和服を買った。[p]
[free]
[set_stand]
[f_st]
[show_stand]
[jump  storage=""  target="*wa_color" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]

*c_h1
[cm  ]
[if exp="f.c_h1==0" ]
[eval exp="f.c_h1=1" ]
（セーラー服を買った。[p]
[free]
[set_stand]
[f_st]
[show_stand]

#シルヴィ
[f_t]
これは…水兵さんの服、ですか？[lr]
初めて見ました。[p]
でもこれ、スカートですね。[lr]
[f_st]
女性の水兵さんもいるんでしょうか？[p]
[f_st]
でも動きやすそうだし、[r]
涼しげでいいですね。[p]
[f_sst]
なんにせよ、ありがとうございます。[p]
[jump  storage="after_action.ks"  target="*after_shop" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]

*c_h2
[cm  ]
[if exp="f.c_h2==0" ]
[eval exp="f.c_h2=1" ]
（セーラー服を買った。[p]
[free]
[set_stand]
[f_st]
[show_stand]

#シルヴィ
[f_st]
#シルヴィ
これは…前に買っていただいたセーラー服ですよね？[lr]
真っ黒だから違うものかと思ったけど…。[p]
白と黒じゃ印象が全然違いますね。[p]
[f_sst]
ありがとうございます。[p]
[jump  storage="after_action.ks"  target="*after_shop" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]


*c_h3
[cm  ]
[if exp="f.c_h3==0" ]
[eval exp="f.c_h3=1" ]
（セーラー服を買った。[p]
[free]
[set_stand]
[f_st]
[show_stand]

#シルヴィ
[f_st]
#シルヴィ
これは…セーラー服ですね。[p]
[f_t]
でも長袖で、スカートも長いですね。[p]
[f_st]
少し落ち着いた雰囲気でいいですね。[lr]
[f_sst]
ありがとうございます。[p]
[jump  storage="after_action.ks"  target="*after_shop" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]

*c_h4
[cm  ]
[if exp="f.c_h4==0" ]
[eval exp="f.c_h4=1" ]
（セーラー服を買った。[p]
[free]
[set_stand]
[f_st]
[show_stand]

#シルヴィ
[f_st]
#シルヴィ
これは…セーラー服ですね。[p]
[f_t]
でも長袖で、スカートも長いですね。[p]
[f_st]
少し落ち着いた雰囲気でいいですね。[lr]
[f_sst]
ありがとうございます。[p]
[jump  storage="after_action.ks"  target="*after_shop" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]


*c_i1
[cm  ]
[if exp="f.c_i1==0" ]
[eval exp="f.c_i1=1" ]
（エプロンドレスを買った。[p]
[free]
[set_stand]
[f_st]
[show_stand]

#シルヴィ
[f_st]
これは…メイドさんのお洋服ですよね。[p]
でも、ふりふりしててかわいい。[p]
おうちのお仕事をするときに着ればそれらしくなりそうですね。[lr]
[f_sst]
ありがとうございます。[p]
[jump  storage="after_action.ks"  target="*after_shop" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]

*c_i2
[cm  ]
[if exp="f.c_i2==0" ]
[eval exp="f.c_i2=1" ]
（エプロンドレスを買った。[p]
[free]
[set_stand]
[f_st]
[show_stand]

[jump  storage=""  target="*maid_color" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]


*c_i3
[cm  ]
[if exp="f.c_i3==0" ]
[eval exp="f.c_i3=1" ]
（エプロンドレスを買った。[p]
[free]
[set_stand]
[f_st]
[show_stand]

[jump  storage=""  target="*maid_color" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]


*c_i4
[cm  ]
[if exp="f.c_i4==0" ]
[eval exp="f.c_i4=1" ]
（エプロンドレスを買った。[p]
[free]
[set_stand]
[f_st]
[show_stand]

[jump  storage=""  target="*maid_color" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]

*c_i4
[cm  ]
[if exp="f.c_i4==0" ]
[eval exp="f.c_i4=1" ]
（エプロンドレスを買った。[p]
[free]
[set_stand]
[f_st]
[show_stand]

[jump  storage=""  target="*maid_color" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]


*c_i5
[cm  ]
[if exp="f.c_i5==0" ]
[eval exp="f.c_i5=1" ]
（エプロンドレスを買った。[p]
[free]
[set_stand]
[f_st]
[show_stand]

[jump  storage=""  target="*maid_color" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]


*maid_color
[cm  ]
#シルヴィ
[f_st]
これは…この間買ってもらったメイド服とは色が違いますね。[p]
色が明るいとすごくかわいい感じになりますね。[lr]
お仕事用というよりお洒落な感じ…。[p]
[f_sst]
ありがとうございます。[name]。[p]
[jump  storage="after_action.ks"  target="*after_shop" ]


*shop_hair
[cm  ]
[eval exp="f.ch_win=2" ]
[chara_mod  name="window"  time="100"  storage="chara/12/shop-win.png" ]
[button  storage=""  target="*return_menu"  graphic="m/back.png"  width="104"  height="33"  x="1188"  y="563"  _clickable_img="" ]

[button  storage=""  target="*r_a1"  graphic="c/ribbon-t.png"  x="695"  y="180"  ]

[if exp="f.r_a1==1" ]
[button  storage=""  target="*r_a2"  graphic="c/black.png"  x="881"  y="180"  ]
[button  storage=""  target="*r_a3"  graphic="c/red.png"  x="940"  y="180"  ]
[endif]

[if exp="f.step>3" ]
[button  storage=""  target="*r_a4"  graphic="c/yellow.png"  x="997"  y="180"  ]
[button  storage=""  target="*r_a5"  graphic="c/white.png"  x="1075"  y="180"  ]
[endif]

[if exp="f.step>4" ]
[button  storage=""  target="*r_b1"  graphic="c/ribbon.png"  x="695"  y="230"  ]
[endif]

[if exp="f.r_b1==1" ]
[button  storage=""  target="*r_b2"  graphic="c/black.png"  x="881"  y="230"  ]
[button  storage=""  target="*r_b3"  graphic="c/red.png"  x="939"  y="230"  ]
[button  storage=""  target="*r_b4"  graphic="c/white.png"  x="997"  y="230"  ]
[endif]

[if exp="f.c_g1==1" ]
[button  storage=""  target="*r_c1"  graphic="c/kanzashi-g.png"  x="695"  y="280"  ]
[button  storage=""  target="*r_c2"  graphic="c/kanzashi-s.png"  x="800"  y="280"  ]

[endif]



[if exp="f.ch_win==1" ]
[button  storage=""  target="*shop_dress"  graphic="c/clothes.png"  width="58"  height="42"  x="1003"  y="68"  _clickable_img="" ]
[else]
[button  storage=""  target="*shop_dress"  graphic="c/clothes-.png"  width="58"  height="42"  x="1003"  y="68"  _clickable_img="" ]
[endif]

[if exp="f.ch_win==2" ]
[button  storage=""  target="*shop_hair"  graphic="c/hair.png"  width="86"  height="43"  x="1053"  y="68"  _clickable_img="" ]
[else]
[button  storage=""  target="*shop_hair"  graphic="c/hair-.png"  width="86"  height="43"  x="1053"  y="68"  _clickable_img="" ]
[endif]

[if exp="f.ch_win==3" ]
[button  storage=""  target="*shop_pin"  graphic="c/acce.png"  width="114"  height="42"  x="1131"  y="68"  _clickable_img="" ]
[else]
[button  storage=""  target="*shop_pin"  graphic="c/acce-.png"  width="114"  height="42"  x="1131"  y="68"  _clickable_img="" ]
[endif]

[if exp="f.ch_win==4" ]
[button  storage=""  target="*shop_leg"  graphic="c/leg.png"  width="48"  height="42"  x="1238"  y="68"  _clickable_img="" ]
[else]
[button  storage=""  target="*shop_leg"  graphic="c/leg-.png"  width="48"  height="42"  x="1238"  y="68"  _clickable_img="" ]
[endif]

[if exp="f.step>=6 && f.shop_t==1" ]
[button  storage=""  target="*talk"  graphic="c/shop-talk.png"  x="820"  y="20"  _clickable_img="" ]
[endif]
[s  ]

*r_a1
[cm  ]
[jump  storage=""  target="*bought_hair" ]

*r_a2
[cm  ]
[if exp="f.r_a2==0" ]
[eval exp="f.r_a2=1" ]
（細いリボン「黒」
[jump  storage=""  target="*color_r" ]
[else]
[jump  storage=""  target="*bought_hair" ]
[endif]

*r_a3
[cm  ]
[if exp="f.r_a3==0" ]
[eval exp="f.r_a3=1" ]
（細いリボン「赤」
[jump  storage=""  target="*color_r" ]
[else]
[jump  storage=""  target="*bought_hair" ]
[endif]

*r_a4
[cm  ]
[if exp="f.r_a4==0" ]
[eval exp="f.r_a4=1" ]
（細いリボン「黄色」
[jump  storage=""  target="*color_r" ]
[else]
[jump  storage=""  target="*bought_hair" ]
[endif]

*r_a5
[cm  ]
[if exp="f.r_a5==0" ]
[eval exp="f.r_a5=1" ]
（細いリボン「白」
[jump  storage=""  target="*color_r" ]
[else]
[jump  storage=""  target="*bought_hair" ]
[endif]

*r_b1
[cm  ]
[if exp="f.r_b1==0" ]
[eval exp="f.r_b1=1" ]
（太いリボンを買った[p]
#シルヴィ
[free]
[set_stand]
[f_t]
[show_stand]

前に買ってもらったのより大きいリボンですね。[lr]
[f_s]
ありがとうございます。[p]
[f_st]
これをつけたら、私も少しは可愛く見えますかね？[p]
[jump  storage="after_action.ks"  target="*after_shop" ]
[else]
[jump  storage=""  target="*bought_hair" ]
[endif]

*r_b2
[cm  ]
[if exp="f.r_b2==0" ]
[eval exp="f.r_b2=1" ]
（太いリボン「黒」
[jump  storage=""  target="*color_r" ]
[else]
[jump  storage=""  target="*bought_hair" ]
[endif]

*r_b3
[cm  ]
[if exp="f.r_b3==0" ]
[eval exp="f.r_b3=1" ]
（太いリボン「赤」
[jump  storage=""  target="*color_r" ]
[elsif]
[jump  storage=""  target="*bought_hair" ]
[endif]

*r_b4
[cm  ]
[if exp="f.r_b4==0" ]
[eval exp="f.r_b4=1" ]
（太いリボン「白」
[jump  storage=""  target="*color_r" ]
[else]
[jump  storage=""  target="*bought_hair" ]
[endif]



*r_c1
[cm  ]
[if exp="f.r_c1==0" ]
[eval exp="f.r_c1=1" ]
（簪を買った[p]
#シルヴィ
[free]
[set_stand]
[f_st]
[show_stand]
綺麗な棒？ですね。[lr]
髪を留めるもの…なんですか？[p]
このあいだの和服の国のものなんですか。[p]
[f_sst]
ありがとうございます。[p]
[jump  storage="after_action.ks"  target="*after_shop" ]
[else]
[jump  storage=""  target="*bought_hair" ]
[endif]

*r_c2
[cm  ]
[if exp="f.r_c2==0" ]
[eval exp="f.r_c2=1" ]
（簪を買った[p]
#シルヴィ
[free]
[set_stand]
[f_st]
[show_stand]
綺麗な棒？ですね。[lr]
髪を留めるもの…なんですか？[p]
このあいだの和服の国のものなんですか。[p]
[f_sst]
ありがとうございます。[p]
[jump  storage="after_action.ks"  target="*after_shop" ]
[else]
[jump  storage=""  target="*bought_hair" ]
[endif]


*shop_pin
[cm  ]
[eval exp="f.ch_win=3" ]
[chara_mod  name="window"  time="0"  storage="chara/12/shop-win.png" ]
[button  storage=""  target="*return_menu"  graphic="m/back.png"  width="104"  height="33"  x="1188"  y="563"  _clickable_img="" ]
[button  storage=""  target="*p_a1"  graphic="c/pin.png"  x="700"  y="165"  ]

[if exp="f.p_a1==1" ]
[button  storage=""  target="*p_a2"  graphic="c/black.png"  x="881"  y="165"  ]
[button  storage=""  target="*p_a3"  graphic="c/green.png"  x="938"  y="165"  ]
[endif]

[if exp="f.step>4" ]
[button  storage=""  target="*p_a4"  graphic="c/red.png"  x="993"  y="165"  ]
[button  storage=""  target="*p_a5"  graphic="c/yellow.png"  x="1049"  y="165"  ]
[button  storage=""  target="*p_a6"  graphic="c/white.png"    x="1128"  y="165"  ]
[endif]

[if exp="f.step>=6 && f.love>=900" ]
[button  storage=""  target="*h_a1"  graphic="c/ear.png"  x="700"  y="260"  ]
[endif]
[if exp="f.step>=6 && f.love>=900" ]
[button  storage=""  target="*h_a2"  graphic="c/horn.png"  x="850"  y="260"  ]
[endif]
[if exp="f.step>=6 && f.love>=600" ]
[button  storage=""  target="*h_b1"  graphic="c/mugi.png"  x="1000"  y="260"  ]
[endif]
[if exp="f.c_i1==1" ]
[button  storage=""  target="*h_b2"  graphic="c/head-d.png"  x="1120"  y="260"  ]
[endif]


[if exp="f.step>5" ]
[button  storage=""  target="*g_a1"  graphic="c/gl-c.png"   x="700"  y="395"  ]
[endif]

[if exp="f.g_a1==1" ]
[button  storage=""  target="*g_a2"  graphic="c/blue.png"   x="830"  y="395"  ]
[button  storage=""  target="*g_a3"  graphic="c/gray.png"   x="883"  y="395"  ]
[button  storage=""  target="*g_a4"  graphic="c/red.png"  x="953"  y="395"  ]
[button  storage=""  target="*g_a5"  graphic="c/pink.png"   x="1010"  y="395"  ]
[endif]


[if exp="f.g_a1==1" ]
[button  storage=""  target="*g_b1"  graphic="c/gl-s.png"   x="700"  y="435"  ]
[endif]

[if exp="f.g_b1==1" ]
[button  storage=""  target="*g_b2"  graphic="c/blue.png"   x="840"  y="435"  ]
[button  storage=""  target="*g_b3"  graphic="c/gray.png"   x="893"  y="435"  ]
[button  storage=""  target="*g_b4"  graphic="c/red.png"  x="963"  y="435"  ]
[button  storage=""  target="*g_b5"  graphic="c/pink.png"   x="1020"  y="435"  ]
[endif]

[if exp="f.g_a1==1" ]
[button  storage=""  target="*g_c1"  graphic="c/gl-h.png"   x="700"  y="475"  ]
[endif]

[if exp="f.g_c1==1" ]
[button  storage=""  target="*g_c2"  graphic="c/blue.png"   x="830"  y="475"  ]
[button  storage=""  target="*g_c3"  graphic="c/gray.png"   x="883"  y="475"  ]
[button  storage=""  target="*g_c4"  graphic="c/red.png"  x="953"  y="475"  ]
[button  storage=""  target="*g_c5"  graphic="c/pink.png"   x="1010"  y="475"  ]
[endif]

[if exp="f.ch_win==1" ]
[button  storage=""  target="*shop_dress"  graphic="c/clothes.png"  width="58"  height="42"  x="1003"  y="68"  _clickable_img="" ]
[else]
[button  storage=""  target="*shop_dress"  graphic="c/clothes-.png"  width="58"  height="42"  x="1003"  y="68"  _clickable_img="" ]
[endif]
[if exp="f.ch_win==2" ]
[button  storage=""  target="*shop_hair"  graphic="c/hair.png"  width="86"  height="43"  x="1053"  y="68"  _clickable_img="" ]
[else]
[button  storage=""  target="*shop_hair"  graphic="c/hair-.png"  width="86"  height="43"  x="1053"  y="68"  _clickable_img="" ]
[endif]
[if exp="f.ch_win==3" ]
[button  storage=""  target="*shop_pin"  graphic="c/acce.png"  width="114"  height="42"  x="1131"  y="68"  _clickable_img="" ]
[else]
[button  storage=""  target="*shop_pin"  graphic="c/acce-.png"  width="114"  height="42"  x="1131"  y="68"  _clickable_img="" ]
[endif]
[if exp="f.ch_win==4" ]
[button  storage=""  target="*shop_leg"  graphic="c/leg.png"  width="48"  height="42"  x="1238"  y="68"  _clickable_img="" ]
[else]
[button  storage=""  target="*shop_leg"  graphic="c/leg-.png"  width="48"  height="42"  x="1238"  y="68"  _clickable_img="" ]
[endif]

[if exp="f.step>=6 && f.shop_t==1" ]
[button  storage=""  target="*talk"  graphic="c/shop-talk.png"  x="820"  y="20"  _clickable_img="" ]
[endif]
[s  ]

*p_a1
[cm  ]
[jump  storage=""  target="*bought_pin" ]

*p_a2
[cm  ]
[if exp="f.p_a2==0" ]
[eval exp="f.p_a2=1" ]
（黒いヘアピン
[jump  storage=""  target="*color_p" ]
[else]
[jump  storage=""  target="*bought_pin" ]
[endif]

*p_a3
[cm  ]
[if exp="f.p_a3==0" ]
[eval exp="f.p_a3=1" ]
（緑のヘアピン
[jump  storage=""  target="*color_p" ]
[else]
[jump  storage=""  target="*bought_pin" ]
[endif]

*p_a4
[cm  ]
[if exp="f.p_a4==0" ]
[eval exp="f.p_a4=1" ]
（赤いヘアピン
[jump  storage=""  target="*color_p" ]
[else]
[jump  storage=""  target="*bought_pin" ]
[endif]

*p_a5
[cm  ]
[if exp="f.p_a5==0" ]
[eval exp="f.p_a5=1" ]
（黄色のヘアピン
[jump  storage=""  target="*color_p" ]
[else]
[jump  storage=""  target="*bought_pin" ]
[endif]

*p_a6
[cm  ]
[if exp="f.p_a6==0" ]
[eval exp="f.p_a6=1" ]
（白いヘアピン
[jump  storage=""  target="*color_p" ]
[else]
[jump  storage=""  target="*bought_pin" ]
[endif]



*g_a1
[cm  ]
[if exp="f.g_a1==0" ]
[eval exp="f.g_a1=1" ]
[free]
[set_stand]
[f_ct]
[show_stand]

#シルヴィ
メガネ…ですか？[lr]
私、目は悪くないと思いますけど。[p]
[f_t]
あれ。これ、度は入ってないんですね。[lr]
オシャレ、ですか？[p]
[f_s]
よくわからないですけど、[name]が好きなら私もかけてみたいです。[p]
[jump  storage="after_action.ks"  target="*after_shop" ]
[else]
[jump  storage=""  target="*bought_pin" ]
[endif]

*g_a2
[cm  ]
[if exp="f.g_a2==0" ]
[eval exp="f.g_a2=1" ]
（青いメガネ
[jump  storage=""  target="*color_g" ]
[else]
[jump  storage=""  target="*bought_pin" ]
[endif]

*g_a3
[cm  ]
[if exp="f.g_a3==0" ]
[eval exp="f.g_a3=1" ]
（グレーのメガネ
[jump  storage=""  target="*color_g" ]
[else]
[jump  storage=""  target="*bought_pin" ]
[endif]

*g_a4
[cm  ]
[if exp="f.g_a4==0" ]
[eval exp="f.g_a4=1" ]
（赤いメガネ
[jump  storage=""  target="*color_g" ]
[else]
[jump  storage=""  target="*bought_pin" ]
[endif]

*g_a5
[cm  ]
[if exp="f.g_a5==0" ]
[eval exp="f.g_a5=1" ]
（ピンクのメガネ
[jump  storage=""  target="*color_g" ]
[else]
[jump  storage=""  target="*bought_pin" ]
[endif]

*g_b1
[cm  ]
[if exp="f.g_b1==0" ]
[eval exp="f.g_b1=1" ]
[free]
[set_stand]
[f_t]
[show_stand]
#シルヴィ
これは…。前に買っていただいたメガネとは形が違いますね。[p]
[f_st]
ちょっと賢くなったみたいな気分になります。[lr]
[jump  storage="after_action.ks"  target="*after_shop" ]
[else]
[jump  storage=""  target="*bought_pin" ]
[endif]


*g_b2
[cm  ]
[if exp="f.g_b2==0" ]
[eval exp="f.g_b2=1" ]
（青いメガネ
[jump  storage=""  target="*color_g" ]
[else]
[jump  storage=""  target="*bought_pin" ]
[endif]

*g_b3
[cm  ]
[if exp="f.g_b3==0" ]
[eval exp="f.g_b3=1" ]
（グレーのメガネ
[jump  storage=""  target="*color_g" ]
[else]
[jump  storage=""  target="*bought_pin" ]
[endif]

*g_b4
[cm  ]
[if exp="f.g_b4==0" ]
[eval exp="f.g_b4=1" ]
（赤いメガネ
[jump  storage=""  target="*color_g" ]
[else]
[jump  storage=""  target="*bought_pin" ]
[endif]

*g_b5
[cm  ]
[if exp="f.g_b5==0" ]
[eval exp="f.g_b5=1" ]
（ピンクのメガネ
[jump  storage=""  target="*color_g" ]
[else]
[jump  storage=""  target="*bought_pin" ]
[endif]

*g_c1
[cm  ]
[if exp="f.g_c1==0" ]
[free]
[set_stand]
[f_t]
[show_stand]
#シルヴィ
これは…。前に買っていただいたメガネとは形が違いますね。[p]
[f_st]
なんだかオシャレな感じですね。[lr]
ありがとうございます。[p]
[eval exp="f.g_c1=1" ]
[jump  storage="after_action.ks"  target="*after_shop" ]
[else]
[jump  storage=""  target="*bought_pin" ]
[endif]



*g_c2
[cm  ]
[if exp="f.g_c2==0" ]
[eval exp="f.g_c2=1" ]
（青いメガネ
[jump  storage=""  target="*color_g" ]
[else]
[jump  storage=""  target="*bought_pin" ]
[endif]

*g_c3
[cm  ]
[if exp="f.g_c3==0" ]
[eval exp="f.g_c3=1" ]
（グレーのメガネ
[jump  storage=""  target="*color_g" ]
[else]
[jump  storage=""  target="*bought_pin" ]
[endif]

*g_c4
[cm  ]
[if exp="f.g_c4==0" ]
[eval exp="f.g_c4=1" ]
（赤いメガネ
[jump  storage=""  target="*color_g" ]
[else]
[jump  storage=""  target="*bought_pin" ]
[endif]

*g_c5
[cm  ]
[if exp="f.g_c5==0" ]
[eval exp="f.g_c5=1" ]
（ピンクのメガネ
[jump  storage=""  target="*color_g" ]
[else]
[jump  storage=""  target="*bought_pin" ]
[endif]


*h_a1
[cm  ]
[if exp="f.h_a1==0" ]
[eval exp="f.h_a1=1" ]
[free]
[set_stand]
[f_t]
[show_stand]
#
獣耳カチューシャを買った。[p]
#シルヴィ
これは…動物の耳みたいな飾りがついたカチューシャ？[p]
…よくわからないですけど、[name]のお好みならつけます。[p]
[f_st]
…あ、結構ふわふわしてて、触り心地いいかも。[p]
[jump  storage="after_action.ks"  target="*after_shop" ]
[else]
[jump  storage=""  target="*bought_pin" ]
[endif]

*h_a2
[cm  ]
[if exp="f.h_a2==0" ]
[eval exp="f.h_a2=1" ]
[free]
[set_stand]
[f_t]
[show_stand]
#
獣角カチューシャを買った。[p]
#シルヴィ
これは…動物の角がついたカチューシャ？[p]
…よくわからないけど、[name]のお好みなら。[p]
…結構しっかりしてますね。[r]
本物ではないみたいだけど。[p]

[jump  storage="after_action.ks"  target="*after_shop" ]
[else]
[jump  storage=""  target="*bought_pin" ]
[endif]

*h_b1
[cm  ]
[if exp="f.h_b1==0" ]
[eval exp="f.h_b1=1" ]
[free]
[set_stand]
[f_st]
[show_stand]
#
麦藁帽を買った。[p]
#シルヴィ
これは…軽くてつばが広い帽子ですね。[p]
暑くて日が出てる日にすごくよさそうです。[lr]
[f_sst]
ありがとうございます、[name][p]

[jump  storage="after_action.ks"  target="*after_shop" ]
[else]
[jump  storage=""  target="*bought_pin" ]
[endif]

*h_b2
[cm  ]
[if exp="f.h_b2==0" ]
[eval exp="f.h_b2=1" ]
[free]
[set_stand]
[f_t]
[show_stand]
#
ヘッドドレスを買った。[p]
#シルヴィ
これは…ヘッドドレス？[p]
この前買っていただいたメイド服と合わせて身に着けるのがいいのかな？[p]
[f_st]
ありがとうございます。[p]
[jump  storage="after_action.ks"  target="*after_shop" ]
[else]
[jump  storage=""  target="*bought_pin" ]
[endif]


*shop_leg
[cm  ]
[eval exp="f.ch_win=4" ]
[chara_mod  name="window"  time="0"  storage="chara/12/shop-win.png" ]
[button  storage=""  target="*return_menu"  graphic="m/back.png"  width="104"  height="33"  x="1188"  y="563"  _clickable_img="" ]

[if exp="f.s_a1==1" ]
[button  storage=""  target="*s_a1"  graphic="c/socks.png"   height="36"   x="700"  y="174"  _clickable_img="" ]
[button  storage=""  target="*s_a2"  graphic="c/black.png"  height="36"   x="783"  y="174"  _clickable_img="" ]
[endif]

[if exp="f.step>3" ]
[button  storage=""  target="*s_a3"  graphic="c/gray.png"   height="36"   x="840"  y="174"  _clickable_img="" ]
[button  storage=""  target="*s_a4"  graphic="c/stripe.png"   height="36"   x="910"  y="174"  _clickable_img="" ]
[endif]

[if exp="f.step>3" ]
[button  storage=""  target="*s_b1"  graphic="c/socks-long.png"   height="36"   x="700"  y="232"  _clickable_img="" ]
[endif]

[if exp="f.s_b1==1" ]
[button  storage=""  target="*s_b2"  graphic="c/black.png"   height="36"  x="814"  y="232"  _clickable_img="" ]
[button  storage=""  target="*s_b3"  graphic="c/black-h.png"   height="36"   x="867"  y="232"  _clickable_img="" ]

[endif]
[if exp="f.step>=6" ]
[button  storage=""  target="*s_b5"  graphic="c/gray.png"   height="36"   x="1043"  y="232"  _clickable_img="" ]
[button  storage=""  target="*s_b4"  graphic="c/white-h.png"   height="36"   x="955"  y="232"  _clickable_img="" ]
[button  storage=""  target="*s_b6"  graphic="c/stripe.png"   height="36"   x="1113"  y="232"  _clickable_img="" ]
[endif]

[if exp="f.lust>=50" ]
[button  storage=""  target="*ri_a1"  graphic="c/gold-a.png"   height="36"   x="700"  y="310"  ]
[button  storage=""  target="*ri_a2"  graphic="c/gold-b.png"  height="36"   x="817"  y="310"  ]
[button  storage=""  target="*ri_a3"  graphic="c/gold-c.png"   height="36"   x="924"  y="310"  ]
[button  storage=""  target="*ri_b1"  graphic="c/sil-a.png"   height="36"   x="700"  y="350"  ]
[button  storage=""  target="*ri_b2"  graphic="c/sil-b.png"   height="36"   x="817"  y="350"  ]
[button  storage=""  target="*ri_b3"  graphic="c/sil-c.png"   height="36"   x="924"  y="350"  ]
[endif]

[if exp="f.love>=500" ]
[button  storage=""  target="*ne_a1"  graphic="c/maf.png"   height="36"   x="700"  y="445"  ]
[endif]

[if exp="f.ne_a1==1" ]
[button  storage=""  target="*ne_a2"  graphic="c/blue-.png"   height="36"   x="820"  y="445"  ]
[button  storage=""  target="*ne_a3"  graphic="c/brown.png"   height="36"   x="870"  y="445"  ]
[button  storage=""  target="*ne_a4"  graphic="c/maf-.png"   height="36"   x="920"  y="445"  ]
[button  storage=""  target="*ne_a5"  graphic="c/blue.png"   height="36"   x="1038"  y="445"  ]
[button  storage=""  target="*ne_a6"  graphic="c/brown.png"   height="36"   x="1088"  y="445"  ]
[button  storage=""  target="*ne_a7"  graphic="c/green.png"   height="36"   x="1138"  y="445"  ]
[endif]

[if exp="f.love>=600" ]
[button  storage=""  target="*ne_b1"  graphic="c/ep.png"   height="36"   x="700"  y="485"  ]
[endif]
[if exp="f.ne_b1==1" ]
[button  storage=""  target="*ne_b2"  graphic="c/blue.png"   height="36"   x="830"  y="485"  ]
[button  storage=""  target="*ne_b3"  graphic="c/pink.png"   height="36"   x="879"  y="485"  ]
[button  storage=""  target="*ne_b4"  graphic="c/black.png"   height="36"   x="950"  y="485"  ]
[endif]

[if exp="f.ch_win==1" ]
[button  storage=""  target="*shop_dress"  graphic="c/clothes.png"  width="58"  height="42"  x="1003"  y="68"  _clickable_img="" ]
[else]
[button  storage=""  target="*shop_dress"  graphic="c/clothes-.png"  width="58"  height="42"  x="1003"  y="68"  _clickable_img="" ]
[endif]
[if exp="f.ch_win==2" ]
[button  storage=""  target="*shop_hair"  graphic="c/hair.png"  width="86"  height="43"  x="1053"  y="68"  _clickable_img="" ]
[else]
[button  storage=""  target="*shop_hair"  graphic="c/hair-.png"  width="86"  height="43"  x="1053"  y="68"  _clickable_img="" ]
[endif]
[if exp="f.ch_win==3" ]
[button  storage=""  target="*shop_pin"  graphic="c/acce.png"  width="114"  height="42"  x="1131"  y="68"  _clickable_img="" ]
[else]
[button  storage=""  target="*shop_pin"  graphic="c/acce-.png"  width="114"  height="42"  x="1131"  y="68"  _clickable_img="" ]
[endif]
[if exp="f.ch_win==4" ]
[button  storage=""  target="*shop_leg"  graphic="c/leg.png"  width="48"  height="42"  x="1238"  y="68"  _clickable_img="" ]
[else]
[button  storage=""  target="*shop_leg"  graphic="c/leg-.png"  width="48"  height="42"  x="1238"  y="68"  _clickable_img="" ]
[endif]

[if exp="f.step>=6 && f.shop_t==1" ]
[button  storage=""  target="*talk"  graphic="c/shop-talk.png"  x="820"  y="20"  _clickable_img="" ]
[endif]
[s  ]


*color_ri

を買った。[p]
[free]
[set_stand]
[f_t]
[show_stand]

[if exp="f.ring_f==0" ]
[eval exp="f.ring_f=1" ]
#シルヴィ
[f_t]
ピアス、ですか？[p]
[f_tp]
これ…体につける用…なんですよね？[lr]
[f_stp]
わかりました。[name]の好みになれるなら喜んで。[p]
[jump  storage="after_action.ks"  target="*after_shop" ]
[else]
[f_sp]
新しいピアス、ですね。[p]
[f_stp]
[name]の好きなものが私のつけたいものです。[p]
[jump  storage="after_action.ks"  target="*after_shop" ]
[endif]

*s_a1
[cm  ]
[jump  storage=""  target="*bought_leg" ]

*s_a2
[cm  ]
[if exp="f.s_a2==0" ]
[eval exp="f.s_a2=1" ]
（黒い靴下
[jump  storage=""  target="*color_s" ]
[else]
[jump  storage=""  target="*bought_leg" ]
[endif]

*s_a3
[cm  ]
[if exp="f.s_a3==0" ]
[eval exp="f.s_a3=1" ]
（グレーの靴下
[jump  storage=""  target="*color_s" ]
[else]
[jump  storage=""  target="*bought_leg" ]
[endif]

*s_a4
[cm  ]
[if exp="f.s_a4==0" ]
[eval exp="f.s_a4=1" ]
（縞模様の靴下
[jump  storage=""  target="*color_s" ]
[else]
[jump  storage=""  target="*bought_leg" ]
[endif]

*s_b1
[cm  ]
[if exp="f.s_b1==0" ]
[eval exp="f.s_b1=1" ]
（長い靴下
[jump  storage=""  target="*color_s" ]
[else]
[jump  storage=""  target="*bought_leg" ]
[endif]

*s_b2
[cm  ]
[if exp="f.s_b2==0" ]
[eval exp="f.s_b2=1" ]
（長い靴下
[jump  storage=""  target="*color_s" ]
[else]
[jump  storage=""  target="*bought_leg" ]
[endif]

*s_b3
[cm  ]
[if exp="f.s_b3==0" ]
[eval exp="f.s_b3=1" ]
（長い靴下
[jump  storage=""  target="*color_s" ]
[else]
[jump  storage=""  target="*bought_leg" ]
[endif]

*s_b4
[cm  ]
[if exp="f.s_b4==0" ]
[eval exp="f.s_b4=1" ]
（長い靴下
[jump  storage=""  target="*color_s" ]
[else]
[jump  storage=""  target="*bought_leg" ]
[endif]

*s_b5
[cm  ]
[if exp="f.s_b5==0" ]
[eval exp="f.s_b5=1" ]
（長い靴下
[jump  storage=""  target="*color_s" ]
[else]
[jump  storage=""  target="*bought_leg" ]
[endif]

*s_b6
[cm  ]
[if exp="f.s_b6==0" ]
[eval exp="f.s_b6=1" ]
（長い靴下
[jump  storage=""  target="*color_s" ]
[else]
[jump  storage=""  target="*bought_leg" ]
[endif]



*ri_a1
[cm  ]
[if exp="f.ri_a1==0" ]
[eval exp="f.ri_a1=1" ]
（金のピアス
[jump  storage=""  target="*color_ri" ]
[else]
[jump  storage=""  target="*bought_leg" ]
[endif]

*ri_a2
[cm  ]
[if exp="f.ri_a2==0" ]
[eval exp="f.ri_a2=1" ]
（十字架の飾りのついた金のピアス
[jump  storage=""  target="*color_ri" ]
[else]
[jump  storage=""  target="*bought_leg" ]
[endif]

*ri_a3
[cm  ]
[if exp="f.ri_a3==0" ]
[eval exp="f.ri_a3=1" ]
（チェーンで繋がっている金のピアス
[jump  storage=""  target="*color_ri" ]
[else]
[jump  storage=""  target="*bought_leg" ]
[endif]



*ri_b1
[cm  ]
[if exp="f.ri_b1==0" ]
[eval exp="f.ri_b1=1" ]
（銀のピアス
[jump  storage=""  target="*color_ri" ]
[else]
[jump  storage=""  target="*bought_leg" ]
[endif]

*ri_b2
[cm  ]
[if exp="f.ri_b2==0" ]
[eval exp="f.ri_b2=1" ]
（十字架の飾りのついた銀のピアス
[jump  storage=""  target="*color_ri" ]
[else]
[jump  storage=""  target="*bought_leg" ]
[endif]

*ri_b3
[cm  ]
[if exp="f.ri_b3==0" ]
[eval exp="f.ri_b3=1" ]
（チェーンで繋がっている銀のピアス
[jump  storage=""  target="*color_ri" ]
[else]
[jump  storage=""  target="*bought_leg" ]
[endif]


*ne_a1
[cm  ]
[if exp="f.ne_a1==0" ]
[eval exp="f.ne_a1=1" ]
#
赤いマフラーを買った[p]
[free]
[set_stand]
[f_t]
[show_stand]

#シルヴィ
[f_st]
マフラーですね。[lr]
買っていただけるんですか？[p]
[f_sst]
…あったかい。[p]
[f_stp]
ありがとうございます、大事に使わせていただきます。[p]
[jump  storage="after_action.ks"  target="*after_shop" ]
[else]
[jump  storage=""  target="*bought_leg" ]
[endif]

*ne_a2
[cm  ]
[if exp="f.ne_a2==0" ]
[eval exp="f.ne_a2=1" ]
#
紺のマフラーを買った[p]
[jump  storage=""  target="*maf_color" ]
[else]
[jump  storage=""  target="*bought_leg" ]
[endif]

*ne_a3
[cm  ]
[if exp="f.ne_a3==0" ]
[eval exp="f.ne_a3=1" ]
#
茶色のマフラーを買った[p]
[jump  storage=""  target="*maf_color" ]
[else]
[jump  storage=""  target="*bought_leg" ]
[endif]

*ne_a4
[cm  ]
[if exp="f.ne_a4==0" ]
[eval exp="f.ne_a4=1" ]
#
赤チェックのマフラーを買った[p]
[jump  storage=""  target="*maf_color" ]
[else]
[jump  storage=""  target="*bought_leg" ]
[endif]

*ne_a5
[cm  ]
[if exp="f.ne_a5==0" ]
[eval exp="f.ne_a5=1" ]
#
青チェックのマフラーを買った[p]
[jump  storage=""  target="*maf_color" ]
[else]
[jump  storage=""  target="*bought_leg" ]
[endif]

*ne_a6
[cm  ]
[if exp="f.ne_a6==0" ]
[eval exp="f.ne_a6=1" ]
#
茶チェックのマフラーを買った[p]
[jump  storage=""  target="*maf_color" ]
[else]
[jump  storage=""  target="*bought_leg" ]
[endif]

*ne_a7
[cm  ]
[if exp="f.ne_a7==0" ]
[eval exp="f.ne_a7=1" ]
#
緑チェックのマフラーを買った[p]
[jump  storage=""  target="*maf_color" ]
[else]
[jump  storage=""  target="*bought_leg" ]
[endif]


*maf_color
[cm  ]
[free]
[set_stand]
[f_t]
[show_stand]

#シルヴィ
[f_st]
前のとは違う色のマフラーですね[lr]
買っていただけるんですか？[p]
[f_sst]
ありがとうございます、大事にしますね。[p]
[jump  storage="after_action.ks"  target="*after_shop" ]


*ne_b1
[cm  ]
[if exp="f.ne_b1==0" ]
[eval exp="f.ne_b1=1" ]
[free]
#
エプロンを買った[p]
[set_stand]
[f_t]
[show_stand]
#シルヴィ
[f_st]
エプロン、ですか？[p]
お料理する時に頂いたお洋服を汚したらいけませんしね。[p]
ありがとうございます、[r]大事に使わせていただきますね。[p]
[f_sst]
[jump  storage="after_action.ks"  target="*after_shop" ]
[else]
[jump  storage=""  target="*bought_leg" ]
[endif]

*ne_b2
[cm  ]
[if exp="f.ne_b2==0" ]
[eval exp="f.ne_b2=1" ]
#
青いエプロンを買った[p]
[jump  storage=""  target="*ep_color" ]
[else]
[jump  storage=""  target="*bought_leg" ]
[endif]

*ne_b3
[cm  ]
[if exp="f.ne_b3==0" ]
[eval exp="f.ne_b3=1" ]
#
ピンクのエプロンを買った[p]
[jump  storage=""  target="*ep_color" ]
[else]
[jump  storage=""  target="*bought_leg" ]
[endif]

*ne_b4
[cm  ]
[if exp="f.ne_b4==0" ]
[eval exp="f.ne_b4=1" ]
#
黒いエプロンを買った[p]
[jump  storage=""  target="*ep_color" ]
[else]
[jump  storage=""  target="*bought_leg" ]
[endif]

*ep_color
[cm  ]
[free]
[set_stand]
[f_t]
[show_stand]

#シルヴィ
[f_st]
前のとは違う色のエプロンですね[lr]
買っていただけるんですか？[p]
[f_sst]
ありがとうございます、[name]。[p]
[jump  storage="after_action.ks"  target="*after_shop" ]


*return_menu
[cm]
#
やっぱりやめておこう。[p]
[eval exp="f.shop_c=3" ]
[jump  storage="after_action.ks"  target="*after_shop" ]









*talk
[cm ]
[cancelskip]
[if exp="f.shop_talk==0" ]
#
（この店でこの人以外の人を見たことがない…[p]
[aurel]
他の店員ですか？[lr]
この店は他の店員は雇っていませんわ。[p]
申し遅れましたが私この店の店長をしておりますオーレリアと申します。[lr]
今後ともご贔屓にお願いしますわ。[p]
[eval exp="f.shop_talk=1" ]
[eval exp="f.shop_t=0" ]
[aurel]


[elsif exp="f.shop_talk==1" ]
[aurel]
なにかお気に召したものはありまして？[p]
#
（なんとも芝居がかかったしゃべり方だ。[r]
少しわざとらしくさえ感じる[p]
[eval exp="f.shop_talk=2" ]

[elsif exp="f.shop_talk==2" ]
#
（室内でも帽子は取らないのだろうか…[p]
[aurel]
この帽子ですか？[p]
ちょっとした「こだわり」なんですの。[lr]
お気になさらないでくださいな。[p]
[eval exp="f.shop_talk=3" ]

[elsif exp="f.shop_talk==3" ]
#
（やけに品揃えの幅が広い店だ…[p]
[aurel]
いろいろな服がございますのよ。[p]
物珍しいものもあるでしょう？[lr]
他の国からも仕入れていますのよ。[p]
…ただ、申し訳ありませんけど紳士物は一切取り扱っていませんの。[p]
[eval exp="f.shop_talk=4" ]

[elsif exp="f.shop_talk==4" ]
#
（ふとシルヴィのほうを見るとオーレリアを見てなんとも微妙な顔をしていた。[p]
（視線は顔より少し低いところを見ているような気がする。[p]
[aurel]
どうかしまして？[p]
#
（シルヴィは慌てて視線をそらした…[p]
[eval exp="f.shop_talk=5" ]

[elsif exp="f.shop_talk==5" ]
#
（他に客が入っているところを見たことがないが、繁盛しているのだろうか[p]
[aurel]
ふふ…心配ご無用ですわ。[lr]
それに、少なくともお得意様が一人いらっしゃるじゃありませんか。[p]
#
（こちらを見てクスクスと笑っている。[p]
[eval exp="f.shop_talk=6" ]

[elsif exp="f.shop_talk==6" ]
#
（女性にしてはかなり背が高いほうだ。[p]
（ヒールでも履いているのかもしれないが、[r]
足元が見えない上に不気味なほど静かに移動するので定かではない。[p]
（帽子の陰に顔が隠れて年齢もよくわからない。[r]
身長や体型から少なくとも１０代ということはないとは思うが[p]
（…考えていると突然シャツの裾をそっと引っ張られた。[lr]
いつの間にかシルヴィが隣でそっぽを向いている[p]
[eval exp="f.shop_talk=7" ]

[elsif exp="f.shop_talk==7" ]
[aurel]
それにしても、もの好きな事…。[p]
ふふっ…なんでもありませんわ。[p]
#
（シルヴィをちらりと見てからこちらに視線を移し不気味な笑顔を浮かべている。[p]
[eval exp="f.shop_talk=8" ]

[elsif exp="f.shop_talk==8" ]
[aurel]
とても…仲がよろしいみたいですわね。[p]
いえ、特に詮索するつもりはないのですけど。[p]
ふふ…。[p]
#
（何か見透かしたような口ぶりだが、おちょくられているだけなのかいまいちつかめない。[p]
[eval exp="f.shop_talk=9" ]

[elsif exp="f.shop_talk==9" ]
#
（…それにしてもこの店以外でこの女を見た覚えがないというのも不思議だ。[p]
（それなりの人口と面積がある街とはいえ、[r]
これだけ派手な格好をしていれば遠目からでも気がつきそうなものだが。[p]
[aurel]
…私の顔に何か付いていまして？[p]
[eval exp="f.shop_talk=10" ]
[endif]

[eval exp="f.shop_t=0" ]
[jump  storage=""  target="*shop_dress" ]




[_tb_end_tyrano_code]

