[_tb_system_call storage=system/_out-alone.ks]

*alone
[cm ]
[free]
[set_stand]
[bg  time="1"  method="crossfade"  storage="bg-door.jpg"  ]
#
（家のことをシルヴィに任せて買い出しに行こう。[p]
[f_]
[show_stand]


[cm ]
[set_stand]

[if exp="f.love<=500" ]
[jump  storage=""  target="*a" ]
[elsif exp="f.love<=1000" ]
[jump  storage=""  target="*b" ]
[elsif exp="f.love<=1500" ]
[jump  storage=""  target="*b_c" ]
[elsif exp="f.love<=2000" ]
[jump  storage=""  target="*c_d" ]
[else]
[jump  storage=""  target="*d_e" ]
[endif]

*b_c
[if exp="f.lust<=500" ]
[jump  storage=""  target="*b" ]
[else]
[jump  storage=""  target="*c" ]
[endif]

*c_d
[if exp="f.lust<=1000" ]
[jump  storage=""  target="*b_c" ]
[else]
[jump  storage=""  target="*c" ]
[endif]

*d_e
[if exp="f.lust<=1500" ]
[jump  storage=""  target="*c_d" ]
[else]
[jump  storage=""  target="*e" ]
[endif]




*a
[f_t]
#シルヴィ
お一人でお買物ですか？[p]
[f_st]
はい、行ってらっしゃいませ。お気をつけて。[p]
[jump  storage=""  target="*outside" ]
*b
[f_t]
#シルヴィ
お一人でお買物ですか？[p]
[f_st]
はい、行ってらっしゃいませ。[lr]
[f_sst]
お家のことは任せてください。[p]
[jump  storage=""  target="*outside" ]
*c
[f_t]
#シルヴィ
お一人でお買物ですか？[p]
[f_st]
はい、行ってらっしゃいませ。[lr]
[f_scl]
…おかえりをお待ちしてます。[p]
[jump  storage=""  target="*outside" ]
*d
[f_t]
#シルヴィ
お一人でお買物ですか？[p]
[f_st]
…はい、行ってらっしゃいませ。[lr]
[f_clt]
すぐ、帰ってきますよね。[p]
[jump  storage=""  target="*outside" ]
*e
[f_ct]
#シルヴィ
お一人でお買物ですか？[lr]
…はい、行ってらっしゃいませ。[p]
[f_cclt]
大丈夫です、大丈夫…。[p]


*outside

[fadeoutbgm time=500]
[black]

#
…。[p]


[playbgm  loop="true"  storage="Ochre_Breeze.ogg"  ]
[bg  time="100"  method="crossfade"  storage="bg-town.jpg"  ]

（必要なものは買い終わった。[lr]
ついでにどこかに寄っていこうか？[p]

[menu_count]

[if exp="f.menu_comp==1" ]
[button  storage=""  target="*cafe"  graphic="ch/lunch.png"   x="0"  y="260"  ]
[endif]
[button  storage=""  target="*back_home"  graphic="ch/back.png"   x="0"  y="410"  ]
[s ]




*cafe
[cm ]
[fadeoutbgm time=500]
[black]
…。[p]
[cafe_talk_check]
[eval exp="f.cafe_c=f.cafe_c+1" ]
[playbgm  loop="true"  storage="Lime_Swing.ogg"  ]
[bg  time="100"  method="crossfade"  storage="bg-cafe.jpg"  ]
（普段シルヴィと入る喫茶店に入った。[lr]
何か土産を買っていこう。[p]

[chara_mod  name="man"  time="1"  storage="chara/1/nephy.png" ]
[chara_show  name="man"  time="100"  wait="true" ]

[if exp="f.takeout==0" ]
[eval exp="f.takeout=1" ]
[eval exp="f.cafe_c=0" ]
[neph]
いらっしゃいませー？[p]
おやおやー？今日はお一人様ですかー？[lr]
お持ち帰りですかそうですかー。[p]
お持ち帰り用の品もいろいろありますよー？[p]
[else]
[neph]
いらっしゃいませー？[p]
今日はお一人様ですかー？[lr]
お持ち帰りですかそうですかー。[p]
[endif]

#
（何を買おうか？[p]

[anim name="man" time="300" left="20" ]
[chara_mod  name="window"  time="1"  storage="chara/12/food-win.png" ]
[chara_show  name="window"  time="1"  wait="true" left="770"  top="22" ]

*menu
[cm ]
[button  storage=""  target="*cookie"  graphic="sw/cookie.png"   x="850"  y="130"  _clickable_img="" ]
[button  storage=""  target="*rusk"  graphic="sw/rusk.png"  x="1056"  y="130"  _clickable_img="" ]
[button  storage=""  target="*cake"  graphic="sw/cake.png"   x="850"  y="200"  _clickable_img="" ]
[button  storage=""  target="*blow"  graphic="sw/blow.png"  x="1056"  y="200"  _clickable_img="" ]
[button  storage=""  target="*pding"  graphic="sw/pding.png"   x="850"  y="270"  _clickable_img="" ]
[button  storage=""  target="*tarte"  graphic="sw/taruto.png"    x="1056"  y="270"  _clickable_img="" ]
;[button  storage=""  target="*french"  graphic="sw/french.png"    x="700"  y="270"  _clickable_img="" ]
;[button  storage=""  target="*pding"  graphic="sw/pding.png"   x="886"  y="270"  _clickable_img="" ]

[if exp="f.cafe_t==1" ]
[button  storage=""  target="*talk"  graphic="c/shop-talk.png"  x="1130"  y="605"  _clickable_img="" ]
[endif]

[endif]
[s]




*talk
[cm ]
[cancelskip]
[if exp="f.cafe_talk==0" ]
#
[neph]
あの小さなお連れさんとはよくいらっしゃいますねー？[p]
お名前なんでしたっけー？そもそも伺ってましたっけー？[lr]
あ、私の名前って言いましたっけー？[p]
私ネフィーと申します。[lr]
今後もぜひ店をご贔屓にお願いしますねー？[p]

[eval exp="f.cafe_talk=1" ]


[elsif exp="f.cafe_talk==1" ]
#
（もう見慣れたものだが、いまだに食器の扱い方を見ているとヒヤヒヤする[p]
[neph]
ご心配無用ですよー？[p]
今まで食器は割ったことも落としたこともありませんのですよー？[p]
[eval exp="f.cafe_talk=2" ]


[elsif exp="f.cafe_talk==2" ]
[neph]
お客様と小さなお連れさん、ちょっとした噂になってるみたいですねー？[p]
内容についてですかー？[lr]
噂ってのは当事者の前でするものではありませんよー？[p]
[eval exp="f.cafe_talk=3" ]

[elsif exp="f.cafe_talk==3" ]
#
（力の抜けたようにフラフラしている割に移動や食器の扱いはやたらと速い。[p]
[neph]
動きが変だとはよく言われるんですけどねー？[lr]
治りそうもないんでお許しくださいねー？[p]
[eval exp="f.cafe_talk=4" ]

[elsif exp="f.cafe_talk==4" ]
[neph]
お店のものはお口に合っていますかー？[p]
#
（まずいと思う店に通う客はいないと思うが…。[p]
[neph]
そうですかそうですかー。[r]まぁそうですよねー？[p]
…口に合わない店に通う酔狂な人も一度ぐらい見てみたいんですけどねー？[p]

[eval exp="f.cafe_talk=5" ]

[elsif exp="f.cafe_talk==5" ]
#
（この店が立った頃にもこの店員を見た気はするが、[r]
シルヴィと来るまでウェイトレスとして見かけた記憶がない。[p]

[neph]
ウェイトレス雑用コックに店長、気まぐれ日替わりその日の気分で色々やっているのですよー？[p]
最近はウェイトレスがマイブームですねー？[p]
[eval exp="f.cafe_talk=6" ]

[elsif exp="f.cafe_talk==6" ]
[neph]
そういえばお客様の小さなお連れさんー？[lr]
ここら辺では珍しい服をお召しになっていますよねー？[p]
もしかして金髪長身の女性から買ってますー？[p]
#
（あの店でほかの客を見たことはないが、少なくともネフィーは店を知っているようだ。[p]
[neph]
やっぱりそうでしたかー。[lr]
いえいえ深い意味はないんですけどねー。[p]
[eval exp="f.cafe_talk=7" ]
;[elsif exp="f.cafe_talk==7" ]

;[eval exp="f.cafe_talk=8" ]
;[elsif exp="f.cafe_talk==8" ]

;[eval exp="f.cafe_talk=9" ]

;[elsif exp="f.cafe_talk==9" ]
;[eval exp="f.cafe_talk=10" ]
[endif]

[eval exp="f.cafe_t=0" ]
[jump  storage=""  target="*menu" ]





*cookie
[cm ]
[eval exp="f.miyage='クッキー'" ]
[jump  storage=""  target="*bought" ]
*rusk
[cm ]
[eval exp="f.miyage='ラスク'" ]
[jump  storage=""  target="*bought" ]
*cake
[cm ]
[eval exp="f.miyage='ショートケーキ'" ]
[jump  storage=""  target="*bought" ]
*blow
[cm ]
[eval exp="f.miyage='ブラウニー'" ]
[jump  storage=""  target="*bought" ]
*pding
[cm ]
[eval exp="f.miyage='プリン'" ]
[jump  storage=""  target="*bought" ]
*tarte
[cm ]
[eval exp="f.miyage='フルーツタルト'" ]
[jump  storage=""  target="*bought" ]



*bought
[cm ]
#
（[miyage]を買った。[p]

[neph]
[miyage]でございますねー？[lr]
お買い上げありがとうございましたー。[p]
[black]
#
[jump  storage=""  target="*home" ]

*back_home
[cm ]
[eval exp="f.miyage='non'" ]
#
（寄り道はしないでまっすぐ帰ろう。[p]


*home
[cm ]
[set_stand]

[if exp="f.lust>=200 && f.self==0 && f.miyage=='non'" ]
[jump  storage="H_self-first.ks"  target="*H_self_first" ]
[endif]

[if exp="f.lust>=5000 && f.self>=50" ]
[iscript]
f.self_c=Math.floor(Math.random() * 3 + 1);
[endscript]
[elsif exp="f.lust>=3000 && f.self>=30" ]
[iscript]
f.self_c=Math.floor(Math.random() * 5 + 1);
[endscript]
[elsif exp="f.lust>=1000 && f.self>=10" ]
[iscript]
f.self_c=Math.floor(Math.random() * 10 + 1);
[endscript]
[elsif exp="f.lust>=200 && f.self>=1" ]
[iscript]
f.self_c=Math.floor(Math.random() * 20 + 1);
[endscript]
[else]
[eval exp="f.self_c=0" ]
[endif]


[if exp="f.self_c==1" ]
[eval exp="f.self=f.self+1" ]
[endif]

c[p]

[if exp="f.love<=500" ]
[jump  storage=""  target="*a_" ]
[elsif exp="f.love<=1000" ]
[jump  storage=""  target="*b_" ]
[elsif exp="f.love<=1500" ]
[jump  storage=""  target="*b_c_" ]
[elsif exp="f.love<=2000" ]
[jump  storage=""  target="*c_d_" ]
[else]
[jump  storage=""  target="*d_e_" ]
[endif]

*b_c_
[if exp="f.lust<=500" ]
[jump  storage=""  target="*b_" ]
[else]
[jump  storage=""  target="*c_" ]
[endif]

*c_d_
[if exp="f.lust<=1000" ]
[jump  storage=""  target="*b_c_" ]
[else]
[jump  storage=""  target="*c_" ]
[endif]

*d_e_
[if exp="f.lust<=1500" ]
[jump  storage=""  target="*c_d_" ]
[else]
[jump  storage=""  target="*e_" ]
[endif]

*a_
[bg  time="1"  method="crossfade"  storage="bg-door.jpg"  ]
[f_st]
[show_stand]
#シルヴィ

あ、おかえりなさい、[name]。[p]
お買物はどうでしたか？[p]
[jump  storage=""  target="*end" ]

*b_
[bg  time="1"  method="crossfade"  storage="bg-door.jpg"  ]
[f_sst]
[show_stand]
#シルヴィ
あ、おかえりなさい、[name]。[p]
[f_st]
お買物はどうでしたか？[p]
#
（ドアを開けると小走りでシルヴィが玄関まで来て迎えてくれた[p]
[jump  storage=""  target="*end" ]

*c_
[bg  time="1"  method="crossfade"  storage="bg-door.jpg"  ]
[f_stp]
[show_stand]
#シルヴィ
おかえりなさい、[name]。[p]
お買物はどうでしたか？[p]
#
（ノブに手をかける前にドアが開いた。[lr]
帰ってくるのを窓から様子をうかがって待っていたようだ。[p]
[jump  storage=""  target="*end" ]

*d_
[bg  time="1"  method="crossfade"  storage="bg-doorout.jpg"  ]
#
（家の前に来るとドアが開きシルヴィが駆け寄ってきた。[p]
[f_sstp]
[show_stand]
#シルヴィ
おかえりなさい、[name]。[p]
[f_stp]
あ、えっと…待ちきれなくって…。[p]
#
（帰ってくるのを窓から様子を伺って待っていたようだ。[p]
[jump  storage=""  target="*end" ]

*e_
[bg  time="1"  method="crossfade"  storage="bg-doorout.jpg"  ]
#
…[p]
[f_tp]
[show_stand]
（家のそばまで来るとドアが開きシルヴィが駆け寄ってきた。[p]
[f_stp]
#シルヴィ
…[name]っ。[p]
#
（走ってきたシルヴィは立ち止まらずそのまま腕の中に飛び込んできた。[p]
#シルヴィ
[f_tp]
…ぁ。ごめんなさい。[lr]
[f_sstp]
えっと、おかえりなさいです♡[p]


[jump  storage=""  target="*end" ]


*end
[if exp="f.miyage=='non'" ]
[jump  storage="after_action.ks"  target="*after_town" ]
[else]
#シルヴィ
[miyage]を買ってきてくれたんですか？[p]
じゃあ、ご飯の後に一緒にいただきましょうか。[p]
ありがとうございます、[name]。[p]
[endif]
[jump  storage="after_action.ks"  target="*after_town" ]


[_tb_end_tyrano_code]

