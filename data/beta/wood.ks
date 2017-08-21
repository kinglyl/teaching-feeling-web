[_tb_system_call storage=system/_wood.ks]

[tb_start_tyrano_code]
*wood
[cm]
[fadeoutbgm  time=500]
[black]
…[p]
[eval exp="f.out=1"]
[cancelskip]
[set_stand]
[f_s]
[bg  time="1"  method="crossfade"  storage="bg-outside.jpg" ]
[show_stand]

[playbgm  loop="true"  storage="Aquamarine_Temperature.ogg"  ]
[if exp="f.wood==0" ]
[eval exp="f.wood=1" ]
#
（薬草や食べれる植物や果物もなっている豊かな森だ。[p]
（深くまで行かなければ危険な生き物に会うこともないだろう。[lr]
（シルヴィを連れて散策してみよう。[p]
#シルヴィ
[f_st]
こんなところがあったんですね。[lr]
じゃあ、ご一緒させてください。[p]
[else]
[f_st]
#シルヴィ
森をお散歩ですか？[lr]
[f_ss]
はい、ご一緒させてください。[p]
[endif]

[black]
[cancelskip]
[set_stand]
[f_s]
[bg  time="1"  method="crossfade"  storage="bg-outside.jpg" ]
[show_stand]

*re

[if exp="f.book=='non'" ]
[iscript]
f.walk=Math.floor(Math.random() * 37 + 1);
[endscript]
[jump  storage="action_lead.ks"  target="*walk" ]
[else]
[iscript]
f.walk=Math.floor(Math.random() * 39 + 1);
[endscript]
[jump  storage="action_lead.ks"  target="*walk" ]
[endif]


*choice
[eval exp="f.act=f.act+1" ]
[eval exp="f.love=f.love+1" ]
[if exp="f.act==6" ]
#
（もうそろそろ日が暮れる…。[p]
[jump  storage=""  target="*go_home" ]
[endif]

[if exp="f.book==1" ]
[button  storage=""  target="*find"  graphic="ch/find-f.png"    x="0"  y="300" ]
[endif]
[button  storage=""  target="*re"  graphic="ch/walk-again.png"    x="0"  y="180" ]
[button  storage=""  target="*go_home"  graphic="ch/end-walk.png"   x="0" y="420" ]
[s ]

*find
[cm]
[iscript]
f.walk=Math.floor(Math.random() * 3 + 1);
[endscript]

[if exp="f.walk==1" ]
[eval exp="f.walk=40" ]
[jump  storage="action_lead.ks"  target="*walk" ]
[elsif exp="f.walk==2" ]
[eval exp="f.walk=38" ]
[jump  storage="action_lead.ks"  target="*walk" ]
[elsif exp="f.walk==3" ]
[jump  storage=""  target="*re" ]
[endif]

*go_home
[cm]
[fadeoutbgm  time=500]

#
（今日はここらで切り上げて家に帰ろう。[p]
[black]
[playbgm  loop="true"  storage="Silver_Glass.ogg" ]
[jump  storage="after_action.ks"  target="*return_bace" ]

*walk1
[f_st]
あ、あそこ、小さな鳥が。[lr]青くて、綺麗な鳥ですね。[p]
[jump  storage=""  target="*choice" ]

*walk2
[f_st]
あ、蝶々が飛んでいますよ。[lr]綺麗…。[p]
[jump  storage=""  target="*choice" ]

*walk3
[f_st]
[name]、あそこリスがいますよ、[lr]かわいい。[p]
[f_ct]
あ、いっちゃった…。[p]
[jump  storage=""  target="*choice" ]

*walk4
[f_ct]
あ、毛虫…。[lr]こういう動きは、見ていて気持ち悪くなっちゃいます。[p]
[jump  storage=""  target="*choice" ]

*walk5
[f_ct]
あ、ナメクジ…。[lr]
そういえばここら辺、他より少し湿ってますね。[p]
…別のほうに行って見ませんか？[p]
[jump  storage=""  target="*choice" ]

*walk6
[f_s]
鳥の声が綺麗ですね。[lr]
[f_scl]
いろんな方向から聞こえてくる…。[p]
[jump  storage=""  target="*choice" ]

*walk7
[f_t]
ここ、水が流れてますね。[p]
#
（飛び越せそうな幅の小さな川が流れている[p]
#シルヴィ
[f_scl]
キラキラ光って音もなんだか綺麗…。[p]
[jump  storage=""  target="*choice" ]

*walk8
[f_t]
あ、っと。[p]
（転びかけたシルヴィを抱きとめる。[p]
[f_ct]
すいません、何かにつまづいて…。[lr]
[f_stp]
ありがとうございます。[p]
[jump  storage=""  target="*choice" ]

*walk9
[f_t]
すごい色のキノコですね。[lr]
[f_ct]
こういうのは、きっと毒があるんですよね。[p]
[jump  storage=""  target="*choice" ]

*walk10
[f_t]
すごいおっきなきのこ。[lr]
[f_s]
食べれるきのこだったらお腹一杯食べれそうですね。[p]
[jump  storage=""  target="*choice" ]

*walk11
[f_t]
これ、本棚の図鑑で見たような。[lr]
[name]、これお役に立つものじゃありませんか？[p]
#
（これは…残念ながらただの雑草だ。[p]
#シルヴィ
[f_ct]
そうですか…。なにか、お役に立てればと思ったんですけど…。[p]
[jump  storage=""  target="*choice" ]

*walk12
[f_t]
これ、本棚の図鑑で見たような。[lr]
[name]、これお役に立つものじゃありませんか？[p]
#
（これは…薬の材料になる薬草だ。[p]
#シルヴィ
[f_s]
本当ですか？[lr]
[f_ssp]
私、[name]の役に立てましたか？[p]
[jump  storage=""  target="*choice" ]

*walk13
[f_]
（雨が降ってきた…。[p]
[f_t]
あ、雨。[lr]小雨だし、すぐ止みそうだけど…。[lr]
[f_st]
木で雨の当たらないところを歩きましょうか。[p]
[jump  storage=""  target="*choice" ]

*walk14
[f_st]
日差しが強いですけど、木陰は涼しいですね。[p]
[jump  storage=""  target="*choice" ]

*walk15
[f_st]
少し開けていて、綺麗な空がよく見えますね。[lr]
ここで少し休んでいきませんか？[p]
[jump  storage=""  target="*choice" ]

*walk16
[f_st]
風が涼しいですね。[lr]木がある所と町の風ってぜんぜん違って感じます。[p]
[jump  storage=""  target="*choice" ]

*walk17
[f_stp]
町と違って人気がないから、[name]と二人きりを感じられますね…。[p]
[jump  storage=""  target="*choice" ]

*walk18
[f_st]
…風が止んで、静かですね。[lr]
[f_stp]
まるで、[name]と世界で二人っきりみたい…。[p]
[jump  storage=""  target="*choice" ]

*walk19
[f_t]
…向こうで何か動いたような。[lr]なにかの動物でしょうか…？[p]
[jump  storage=""  target="*choice" ]

*walk20
[f_st]
あ、綺麗なお花。[lr]面白い形をしてて、町では見かけない花ですね。[p]
[jump  storage=""  target="*choice" ]

*walk21
[f_st]
人もいなくて、建物もなくって、[lr]
町を散歩するのとはぜんぜん違いますね。[p]
[jump  storage=""  target="*choice" ]

*walk22
[f_t]
大きな木ですね。[lr]
これだけ育つのにはきっと長くかかるんでしょうね。[p]
[jump  storage=""  target="*choice" ]

*walk23
[f_t]
木が倒れてますね。[lr]
誰かが切ったわけじゃなさそうですけど。[p]
#
（倒れてからだいぶたっているようだ。[lr]
落雷でもあったのかもしれない[p]
[jump  storage=""  target="*choice" ]

*walk24
[f_sclt]
こんな風にゆっくり木を眺めながら自由にお散歩なんて、[r]
想像したことありませんでした。[p]
[jump  storage=""  target="*choice" ]

*walk25
[f_st]
自然のなかをお散歩するのもいいですね。[lr]
[f_scltp]
一人だったら怖いだろうけど、[r]
[name]と一緒だとなんだか落ち着きます。[p]
[jump  storage=""  target="*choice" ]

*walk26
[f_t]
ここら辺は木が日を遮っていて、少し薄暗いですね。[lr]
[f_cclt]
虫とかいないか、ちょっと気になっちゃいます。[p]
[jump  storage=""  target="*choice" ]

*walk27
[f_tp]
[name]、その、手を握ってもいいですか？[p]
[jump  storage=""  target="*choice" ]

*walk28
[f_ct]
木が多くて道がないところはちょっと歩きづらいですね。[lr]
転ばないようにしなくちゃ…。[p]
[jump  storage=""  target="*choice" ]

*walk29
[f_st]
青々としていて素敵な森ですね。[lr]
[f_ct]
でも、街灯もないし、日が暮れると真っ暗なんですよね？[lr]
[f_cclt]
そうなったら、すごく怖そう…。[p]
[jump  storage=""  target="*choice" ]

*walk30
[f_t]
私の育った町のそばにも森がありました。[lr]
[f_clt]
でも、野犬が出るから近づくなって言われてました。[p]
だからこういう自然のあるところには行ったことがありませんでしたね[p]
[jump  storage=""  target="*choice" ]

*walk31
[f_t]
昔は、森は怖いイメージでした。[lr]
[f_clt]
…森だけじゃなかったのかな。[p]
知らないものはなんでも怖かったです。[lr]
[f_sp]
でも今は、[name]がいれば、新しいこともワクワクします。[p]
[jump  storage=""  target="*choice" ]

*walk32
[f_st]
赤くて綺麗な木の実ですね。[lr]
[f_t]
…これ毒があるんですか？[lr]
[f_ct]
見た目は美味しそうなのに、残念ですね。[p]
[jump  storage=""  target="*choice" ]

*walk33
[f_ct]
あそこ、なんだかたくさんの虫が群がるように飛んでますね。[p]
#
（動物の死骸でもあるのかもしれない。迂回していこう。[p]
[jump  storage=""  target="*choice" ]
	
*walk_H
[f_st]
ここ、少し開けてて休憩できそう。[p]
[name]、少しゆっくりして行きませんか？

[button  storage=""  target="*rest"  graphic="ch/wood-rest.png"    x="0"  y="200" ]
[button  storage=""  target="*not"  graphic="ch/wood-norest.png"   x="0" y="350" ]
[s ]

*not
[cm]
[f_clt]
ん、そうですね。[lr]
あんまりのんびりしすぎて日が暮れちゃってもいけないし…。[p]
[jump  storage=""  target="*choice" ]

*rest
[cm]
[cancelskip]
[f_scl]
#
シルヴィと二人で具合の良さそうな芝生の上に腰掛ける。[p]
（シルヴィはすぐ隣に身を寄せ腕を絡めてきた…。[p]

[if exp="f.dress==21" ]
[jump  storage=""  target="*c_true" ]
[elsif exp="f.dress==22" ]
[jump  storage=""  target="*c_true" ]
[elsif exp="f.dress==23" ]
[jump  storage=""  target="*c_true" ]
[elsif exp="f.dress==24" ]
[jump  storage=""  target="*c_true" ]
[elsif exp="f.dress==25" ]
[jump  storage=""  target="*c_true" ]
[endif]
…[p]
（しばらくシルヴィと自然の空気を味わった…。[p]
[eval exp="f.love=f.love+2" ]
[jump  storage=""  target="*choice" ]

*c_true
[if exp="f.lust>=10" ]
[button  storage=""  target="*hand"  graphic="ch/wood-hand.png"    x="0"  y="200" ]
[button  storage="H_wood.ks"  target="*H_wood"  graphic="ch/wood-kiss.png"   x="0" y="350" ]
[s ]
[else]
…[p]
（しばらくシルヴィと自然の空気を味わった…。[p]
[jump  storage=""  target="*choice" ]
[endif]

*hand
[cm]
[f_ssp]
#シルヴィ
…ん。[p]
[name]がこうしてくれると家の外でもリラックスできちゃいます…。[p]
[jump  storage=""  target="*choice" ]


*walk_flower
#
（ピンクの花を見つけた。[p]
#シルヴィ
[f_t]
ずいぶん鮮やかな花ですね。[p]
[if exp="f.book==1" ]
#
（この間手に入れた本に書かれていた薬の材料だ。[lr]
いくらか摘んでおこう。[p]
[iscript]
f.walk=Math.floor(Math.random() * 3 + 1);
[endscript]
[eval exp="f.flower=f.flower+f.walk" ]
[jump  storage=""  target="*choice" ]
[else]
#
（何かの薬に使えると聞いたことがあるが、なんだったろうか。[lr]
仕事で使うものではないので忘れてしまった…。[p]
[jump  storage=""  target="*choice" ]
[endif]
*walk_flower_b
#
（青い花を見つけた。[p]
#シルヴィ
[f_st]
落ち着いた色の綺麗な花ですね。[p]
#
（リラックス効果のあるハーブだ。[lr]
お茶にもできるし薬にもなる。いくらか摘んでおこう。[p]
[iscript]
f.walk=Math.floor(Math.random() * 3 + 1);
[endscript]
[eval exp="f.flower_b=f.flower_b+f.walk" ]
[jump  storage=""  target="*choice" ]



[_tb_end_tyrano_code]