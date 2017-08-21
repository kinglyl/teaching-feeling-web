[_tb_system_call storage=system/_tea.ks]

[tb_start_tyrano_code]

*tea
[cm]
[show_skip]
#
昼食もすんだ。食後にお茶でも淹れようか。[p]

[if exp="f.flower<=0 && f.flower_b<=0 || f.lust<=15" ]
[jump  storage=""  target="*normal" ]
[endif]

何かで香りをつけてもいいかもしれない。[p]
所持数-ピンクの花（[emb exp="f.flower"]、青い花（[emb exp="f.flower_b"]
[if exp="f.flower>=1" ]
[button  storage=""  target="*tea-p"  graphic="ch/tea-p.png"    x="0"  y="180" ]
[endif]

[if exp="f.flower_b>=1" ]
[button  storage=""  target="*tea-b"  graphic="ch/tea-b.png"   x="0"  y="300"  ]
[endif]

[button  storage=""  target="*normal"  graphic="ch/tea.png"   x="0"  y="420"  ]
[s]


*tea-p
[cm]
どれぐらい入れようか？[p]
所持数-ピンクの花（[emb exp="f.flower"]

[button  storage=""  target="*little-p"  graphic="ch/little.png"  x="0"  y="180" hint="花を1つ使います" ]
[if exp="f.flower>=3" ]
[button  storage=""  target="*mid-p"  graphic="ch/middle.png"  x="0"  y="300"  hint="花を3つ使います" ]
[endif]
[if exp="f.flower>=5" ]
[button  storage=""  target="*lot-p"  graphic="ch/lot.png"  x="0"  y="420"  hint="花を5つ使います" ]
[endif]
[s]

*little-p
[cm]
#シルヴィ
[s_t]
お茶を淹れてくださったんですか？[p]
言ってくだされば私が準備したのに…。[p]
[s_st]
でも、ありがとうございます。[p]
じゃあ一緒にいただきましょうか。[p]
[s_cl]
…。[p]

[s_st]
ほんのり甘い香りのするお茶ですね。[p]
あったかくて美味しい…。[p]
[s_s]
[eval exp="f.flower=f.flower-1" ]
[eval exp="f.lust=f.lust+5" ]
[eval exp="f.act=f.act+1" ]
[jump  storage="setting.ks"  target="*return_menu" ]


*mid-p
[cm]
[s_t]
お茶を淹れてくださったんですか？[p]
言ってくだされば私が準備したのに…。[p]
[s_st]
でも、ありがとうございます。[p]
じゃあ一緒にいただきましょうか。[p]
[s_cl]
…。[p]

[s_st]
甘い香りがして、美味しいですね。[p]
[s_stp]
なんだか体が温まってきました。[p]
[s_sp]

[eval exp="f.flower=f.flower-3" ]
[eval exp="f.lust=f.lust+20" ]
[eval exp="f.act=f.act+1" ]
[jump  storage="setting.ks"  target="*return_menu" ]

*lot-p
[cm]
[s_t]
お茶を淹れてくださったんですか？[p]
言ってくだされば私が準備したのに…。[p]
[s_st]
でも、ありがとうございます。[p]
じゃあ一緒にいただきましょうか。[p]
[s_cl]
…。[p]

[s_stp]
甘くて美味しいですね。[p]
[s_tp]
…でも勢いよく飲んじゃったからかな、[r]ちょっと暑くなってきちゃいました。[p]
部屋が暑くなったわけじゃないですよね。[p]
[s_p]

[eval exp="f.flower=f.flower-5" ]
[eval exp="f.lust=f.lust+35" ]
[eval exp="f.act=f.act+1" ]
[jump  storage="setting.ks"  target="*return_menu" ]


*tea-b
[cm]
どれぐらい入れようか？[p]
所持数-青い花（[emb exp="f.flower_b"]

[button  storage=""  target="*little-b"  graphic="ch/little.png"  x="0"  y="180" hint="花を1つ使います" ]
[if exp="f.flower_b>=3" ]
[button  storage=""  target="*mid-b"  graphic="ch/middle.png"  x="0"  y="300"  hint="花を3つ使います" ]
[endif]
[if exp="f.flower_b>=5" ]
[button  storage=""  target="*lot-b"  graphic="ch/lot.png"  x="0"  y="420"  hint="花を5つ使います" ]
[endif]
[s]

*little-b
[cm]
#シルヴィ
[s_t]
お茶を淹れてくださったんですか？[p]
言ってくだされば私が準備したのに…。[p]
[s_st]
でも、ありがとうございます。[p]
じゃあ一緒にいただきましょうか。[p]
[s_cl]
…。[p]

[s_st]
ほんのりすーっとするお茶ですね。[p]
美味しいです。[p]
[s_s]

[eval exp="f.flower_b=f.flower_b-1" ]
[eval exp="f.lust=f.lust-5" ]
[eval exp="f.act=f.act+1" ]
[jump  storage="setting.ks"  target="*return_menu" ]


*mid-b
[cm]
[s_t]
お茶を淹れてくださったんですか？[p]
言ってくだされば私が準備したのに…。[p]
[s_st]
でも、ありがとうございます。[p]
じゃあ一緒にいただきましょうか。[p]
[s_cl]
…。[p]

[s_st]
いい香りのお茶ですね。[p]
[s_st]
すごく落ち着きます。[p]
[s_s]

[eval exp="f.flower_b=f.flower_b-3" ]
[eval exp="f.lust=f.lust-20" ]
[eval exp="f.act=f.act+1" ]
[jump  storage="setting.ks"  target="*return_menu" ]

*lot-b
[cm]
[s_t]
お茶を淹れてくださったんですか？[p]
言ってくだされば私が準備したのに…。[p]
[s_st]
でも、ありがとうございます。[p]
じゃあ一緒にいただきましょうか。[p]
[s_cl]
…。[p]

[s_st]
ハーブの香りが強めのお茶ですね、[lr]
でも嫌いじゃないです。[p]
[s_clt]
…ふぁ。[p]
[s_ctp]
あ、すいません。[r]
温まったらなんだか眠くなってきちゃいました…。[p]
[s_s]

[eval exp="f.flower_b=f.flower_b-5" ]
[eval exp="f.lust=f.lust-35" ]
[eval exp="f.act=f.act+1" ]
[jump  storage="setting.ks"  target="*return_menu" ]




*normal
[cm  ]
#シルヴィ
[s_st]
お茶ですか？[lr]
[s_sst]
はい、私が準備します。[p]
[name]は待っていてください。[p]
[black]
#
…[p]
しばらくするとシルヴィが二人分のティーセットを持ってキッチンから戻ってきた。[p]
[set_sit]
[s_st]
[show_sit]
#シルヴィ
おまたせしました。[lr]

[eval exp="f.love=f.love+1" ]
[eval exp="f.lust=f.lust-1" ]

[if exp="f.miyage=='クッキー'" ]
さっき[name]が買ってきてくださった[miyage]も一緒にいただきましょう。[p]
[s_cl]
…。[p]
[jump  storage=""  target="*cookie" ]
[elsif exp="f.miyage=='ラスク'" ]
さっき[name]が買ってきてくださった[miyage]も一緒にいただきましょう。[p]
[s_cl]
…。[p]
[jump  storage=""  target="*rask" ]
[elsif exp="f.miyage=='ショートケーキ'" ]
さっき[name]が買ってきてくださった[miyage]も一緒にいただきましょう。[p]
[s_cl]
…。[p]
[jump  storage=""  target="*cake" ]
[elsif exp="f.miyage=='ブラウニー'" ]
さっき[name]が買ってきてくださった[miyage]も一緒にいただきましょう。[p]
[s_cl]
…。[p]
[jump  storage=""  target="*blow" ]
[elsif exp="f.miyage=='プリン'" ]
さっき[name]が買ってきてくださった[miyage]も一緒にいただきましょう。[p]
[s_cl]
…。[p]
[jump  storage=""  target="*pding" ]
[elsif exp="f.miyage=='フルーツタルト'" ]
さっき[name]が買ってきてくださった[miyage]も一緒にいただきましょう。[p]
[s_cl]
…。[p]
[jump  storage=""  target="*tarte" ]
[endif]

じゃあいただきましょう。[p]
[s_scl]
…。[p]


[iscript]
f.tea=Math.floor(Math.random() * 8 + 1);
[endscript]


[if exp="f.tea==1" ]
[jump  storage="tea.ks"  target="*tea1" ]
[elsif exp="f.tea==2" ]
[jump  storage="tea.ks"  target="*tea2" ]
[elsif exp="f.tea==3" ]
[jump  storage="tea.ks"  target="*tea3" ]
[elsif exp="f.tea==4" ]
[jump  storage="tea.ks"  target="*tea4" ]
[elsif exp="f.tea==5" ]
[jump  storage="tea.ks"  target="*tea5" ]
[elsif exp="f.tea==6" ]
[jump  storage="tea.ks"  target="*tea6" ]
[elsif exp="f.tea==7" ]
[jump  storage="tea.ks"  target="*tea7" ]
[elsif exp="f.tea==8" ]
[jump  storage="tea.ks"  target="*tea8" ]
[endif]



*tea1
[s_clt]
最初の頃はこうして[name]と同じものを口にすることに不安しか感じませんでした。[p]
[s_sst]
でも、今感じるのは、温もりと、安心と、幸せです…。[p]
[s_s]
[jump  storage="after_action.ks"  target="*after_talk" ]


*tea2
[s_sclt]
落ち着きますね…。[p]
[s_sst]
お茶だけじゃなくて、[name]と一緒だからですよ？[p]
[s_s]
[jump  storage="after_action.ks"  target="*after_talk" ]

*tea3
[s_clt]
ふぅ…。[p]
[s_st]
ただ大好き人と一緒にお茶を飲むだけで、[r]
こんなにも暖かな気持ちになれるんですね。[p]
[s_s]
[jump  storage="after_action.ks"  target="*after_talk" ]

*tea4
[s_ct]
あちっ…[p]
[s_t]
あ、大丈夫です。ちょっと勢いよく飲んじゃって。[p]
[s_st]
[name]も気をつけてください。[p]
[s_clt]
ふぅー… ふぅー…。[p]
[s_s]
[jump  storage="after_action.ks"  target="*after_talk" ]

*tea5
[s_t]
ん、少し薄いかな…。[p]
[s_ct]
ごめんなさい。[r]葉っぱの量かお湯の温度が悪かったのかな。[p]
[s_t]
…おいしい…ですか？[p]
ならいいんですけど。[p]
[s_st]
次はもっと美味しく淹れますね。[p]
[s_s]
[jump  storage="after_action.ks"  target="*after_talk" ]

*tea6
[s_t]
ちょっと、お砂糖入れてもいいでしょうか？[p]
ストレートも好きですけど、なんだか甘いのが飲みたい気分で…。[p]
[s_cl]
…。[p]
[s_sst]
ふふっ…甘い…♡[p]
[s_s]
[jump  storage="after_action.ks"  target="*after_talk" ]

*tea7
[s_st]
お茶も美味しいですけど、他になにかお菓子とかがあってもいいですよね。[p]
[s_sclt]
いつかおいしいお菓子を作れるようになって[r]
[name]と一緒に楽しめたらなって、夢見ちゃいます…。[p]
[s_st]
なんて、贅沢すぎますよね…[p]
[s_s]
[jump  storage="after_action.ks"  target="*after_talk" ]

*tea8
[s_clt]
ふぅ…。[p]
[s_st]
こんな穏やかな時間、昔は想像もできませんでした。[p]
[s_clt]
今の幸せを噛み締めてると、たまに涙が出そうになります…。[p]
[s_s]
[jump  storage="after_action.ks"  target="*after_talk" ]







*cookie
[cm ]
[s_st]
クッキー、お茶のお供にはぴったりですね。[lr]
[s_sclt]
おいしい…。[p]
[s_s]
…。[p]
[s_ct]
…あっ、ごめんなさい。[lr]
こんなに勢いよく食べたら[name]の分がなくなっちゃいますね。[p]
[s_c]
[jump  storage=""  target="*ate" ]

*rask
[cm ]
[s_sclt]
ん…サクサクしてておいしい。[p]
[s_st]
普通のパンでもひと手間加えるだけでおいしいお菓子になるんですね。[p]
[s_t]
これぐらいなら私でもすぐ作れるようになるかな…。[p]
[s_]
[jump  storage=""  target="*ate" ]

*cake
[cm ]
[s_cl]
…あむ。[p]
[s_s]
ふふっ…おいしい。[p]
[s_stp]
お店で食べるのも雰囲気があっていいですけど、[r]
やっぱり[name]と二人きりのほうが少し落ち着くような気がします。[p]
[s_sp]
[jump  storage=""  target="*ate" ]

*blow
[cm ]
[s_sclt]
あむ…、おいしい。[p]
[s_st]
ほろ苦いチョコレートとお茶の香りがよく合いますね。[p]
[s_sclt]
ケーキよりもしっかりした生地だからなおさらお茶がおいしい気がします。[p]
[s_scl]
[jump  storage=""  target="*ate" ]

*pding
[cm ]
[s_sclt]
ん…甘い。[p]
[s_st]
プリンだとストレートの紅茶でちょうどいいですね。[lr]
[s_sclt]
おいしい…。[p]
[s_st]
間にお茶を挟まないで食べたらすぐなくなっちゃいそうです。[p]
[s_s]
[jump  storage=""  target="*ate" ]


*tarte
[cm ]
[s_sclt]
…おいしい。[p]
[s_st]
いろんなフルーツをちょっとずつ楽しめるのがいいですね。[p]
こんなにたくさんの種類のフルーツを普通に買ったら傷む前に食べきれないですし、[lr]
スイーツになってると同じフルーツでも違った味に感じます。[p]
[s_s]
[jump  storage=""  target="*ate" ]


*ate
[cm ]
[eval exp="f.miyage='non'" ]
[eval exp="f.love=f.love+1" ]
[jump  storage="after_action.ks"  target="*after_talk" ]

[_tb_end_tyrano_code]

