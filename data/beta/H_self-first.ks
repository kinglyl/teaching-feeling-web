[_tb_system_call storage=system/_H_self-first.ks]

[tb_start_tyrano_code]

;[stopse ]

*H_self_first
[cm ]
[cancelskip]
[fadeoutbgm time=500]
[black]
…[p]
[show_skip]
[tb_show_message_window  ]

[bg  time="1"  method="crossfade"  storage="bg-door.jpg" ]
#
（家のドアを開けたが、玄関の周りにはシルヴィはいないようだった。[p]
（買ってきたものを一旦置きシルヴィの姿を探す。[p]
[bg  time="1"  method="crossfade"  storage="bg-room.jpg" ]
…。[p]
（近くに気配がないので寝室のほうへ足を運ぶ。[p]
[black]

（…半開きになった寝室のドアの前に立つと、中からシルヴィの声が小さく漏れていた。[p]
#シルヴィ
ん…ふぅ…[p]

[if exp="f.head==1" ]
[chara_mod  name="e-head"  time="0"  storage="chara/head/auto-a1.png" ]
[elsif exp="f.head==2" ]
[chara_mod  name="e-head"  time="0"  storage="chara/head/auto-a2.png" ]
[else]
[chara_mod  name="e-head"  time="0"  storage="chara/head/00.png" ]
[endif]

[if exp="f.glasses==0" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/00.png" ]
[elsif exp="f.glasses==1" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/auto-a1.png" ]
[elsif exp="f.glasses==2" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/auto-a2.png" ]
[elsif exp="f.glasses==3" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/auto-a3.png" ]
[elsif exp="f.glasses==4" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/auto-a4.png" ]
[elsif exp="f.glasses==5" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/auto-a5.png" ]
[elsif exp="f.glasses==11" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/auto-b1.png" ]
[elsif exp="f.glasses==12" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/auto-b2.png" ]
[elsif exp="f.glasses==13" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/auto-b3.png" ]
[elsif exp="f.glasses==14" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/auto-b4.png" ]
[elsif exp="f.glasses==15" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/auto-b5.png" ]
[elsif exp="f.glasses==21" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/auto-c1.png" ]
[elsif exp="f.glasses==22" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/auto-c2.png" ]
[elsif exp="f.glasses==23" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/auto-c3.png" ]
[elsif exp="f.glasses==24" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/auto-c4.png" ]
[elsif exp="f.glasses==25" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/auto-c5.png" ]
[endif]

[if exp="f.socks==0" ]
[chara_mod name="e-socks" time="0" storage="chara/socks/00.png" ]
[elsif exp="f.socks==1" ]
[chara_mod name="e-socks" time="0" storage="chara/socks/auto-a1.png" ]
[elsif exp="f.socks==2" ]
[chara_mod name="e-socks" time="0" storage="chara/socks/auto-a2.png" ]
[elsif exp="f.socks==3" ]
[chara_mod name="e-socks" time="0" storage="chara/socks/auto-a3.png" ]
[elsif exp="f.socks==4" ]
[chara_mod name="e-socks" time="0" storage="chara/socks/auto-a4.png" ]
[elsif exp="f.socks==11" ]
[chara_mod name="e-socks" time="0" storage="chara/socks/auto-b1.png" ]
[elsif exp="f.socks==12" ]
[chara_mod name="e-socks" time="0" storage="chara/socks/auto-b2.png" ]
[elsif exp="f.socks==13" ]
[chara_mod name="e-socks" time="0" storage="chara/socks/auto-b3.png" ]
[elsif exp="f.socks==14" ]
[chara_mod name="e-socks" time="0" storage="chara/socks/auto-b4.png" ]
[elsif exp="f.socks==15" ]
[chara_mod name="e-socks" time="0" storage="chara/socks/auto-b5.png" ]
[elsif exp="f.socks==16" ]
[chara_mod name="e-socks" time="0" storage="chara/socks/auto-b6.png" ]
[endif]

[playbgm  loop="true"  storage="Magenta_Touch.ogg"  ]
[bg  time="1"  method="crossfade"  storage="auto0-1.jpg" ]
[chara_mod  name="se"  time="0"  storage="chara/se/auto0-1.png" ]
[chara_mod  name="tx"  time="0"  storage="chara/text/auto0-1.png" ]
[chara_mod  name="ef"  time="0"  storage="chara/effect/auto0-1.png" ]

[chara_show  name="e-head"  time="0"  wait="true"  left="0.1" ]
[chara_show  name="e-glasses"  time="0"  wait="true"  left="0.1" ]
[chara_show  name="e-socks"  time="0"  wait="true"  left="0.1" ]

[show_effect]

#
（ドアの隙間から中をうかがうとシルヴィは半裸でベッドに横たわっていた。[p]

#シルヴィ
…はぁ♡…ん…[name]♡[p]

[playse  loop="true"  storage="l-wet0.ogg"  clear="true"  ]


#
（シルヴィには大きすぎる男物のシャツを与えた覚えはないが、[r]
あれを洗濯籠に入れた記憶はとても新しい。[p]
（彼女はシャツの余った袖を口元で握りしめ、[r]
空いた手右手は何も身に着けていない下半身へと伸びている。[p]

#シルヴィ
ふぅー…はぁ…♡[p]

#
（耳を澄ますと深く息を吸い込むシルヴィの息使いと、[r]
細い指が濡れた秘部をまさぐる小さな水音が聞こえてくる。[p]

#シルヴィ
[name]…♡[name]…♡♡[p]

#
（シルヴィの呼びかけはドアの外に向けられたものではなく無意識に零れているようだ。[p]
（行為に夢中になっているようでこちらの視線に気づく様子はない。[p]
[playse  loop="true"  storage="oral3.ogg"  clear="true"  ]
#シルヴィ
あっ…んぅ♡…[name]…♡♡[p]

#
（シルヴィの漏らす息と秘部から響く水の音が大きく激しくなってくる。[p]
（限界が近いのか指の動きはすでに掻きまわすような深さと激しさだ。[p]

#シルヴィ
んっ♡…[name]っ♡♡…[name]っ♡[p]

#
（細い指が割れ目に沈みそして引き抜かれるたび、[r]
じゅぼじゅぼと愛液のあふれる音が響く。[p]


[bg  time="1"  method="crossfade"  storage="auto0-2.jpg" ]
[chara_mod  name="se"  time="0"  storage="chara/se/auto0-2.png" ]
[chara_mod  name="tx"  time="0"  storage="chara/text/auto0-2.png" ]
[chara_mod  name="ef"  time="0"  storage="chara/effect/auto0-2.png" ]
[playse  loop="false"  storage="squi.ogg"  clear="true"  ]

#シルヴィ
っ！♡…ふぅっ…♡♡んっ…♡♡♡！[p]

#
（シルヴィはぎゅっと体をこわばらせ、絶頂の快感に身体を強張らせた。[p]

#シルヴィ
ん…ぅ…♡[p]

[bg  time="1"  method="crossfade"  storage="auto0-3.jpg" ]
[chara_mod  name="se"  time="0"  storage="chara/se/auto0-3.png" ]
[chara_mod  name="tx"  time="0"  storage="chara/text/auto0-3.png" ]
[chara_mod  name="ef"  time="0"  storage="chara/effect/auto0-3.png" ]

#
（指を秘部から抜くことなく脱力したシルヴィの四肢は時折ピクリと震え、[r]
うつろな目は視線を泳がせ余韻に浸っている[p]

#シルヴィ
はぁ…はぁ…♡[name]…♡[p]

[bg  time="1"  method="crossfade"  storage="auto0-4.jpg" ]
[chara_mod  name="tx"  time="0"  storage="chara/text/00.png" ]
[chara_mod  name="ef"  time="0"  storage="chara/effect/auto0-4.png" ]

…………[p]

………え…[name]？[p]

#
（ふらふらとさまよっていた視線がふとこちらをとらえ、[r]
シルヴィは目を見開きそのまま凍り付いた。[p]

#シルヴィ
ぁ…あの…[name]…これは…[p]

#
（顔を真っ赤にしながらも、おびえるような困ったような、[r]
複雑な顔をしてシルヴィはベッドの上で縮こまる。[p]

[black]
シルヴィは少し間を置いてから[r]
オロオロと視線を泳がせながら上体を起こした。[p]

[eval exp="f.dress=5" ]
[eval exp="f.hair=0" ]
[eval exp="f.pin=0" ]
[eval exp="f.neck=0" ]

[if exp="f.head==1 || f.head==2" ]
[else]
[eval exp="f.head=0" ]
[endif]

[set_stand]
[bg  time="1"  method="crossfade"  storage="bg-bed.jpg" ]
[f_ctp]
[show_stand]

#シルヴィ
あの、お洗濯をしようとしたんです…。[r]
それで、[name]のシャツが…なんだか変に目を引いてしまって…。[p]
あの、えっと…それで…[r]
その…自分でもよく分からなくなって…。[p]
[f_ccltp]
あの…ごめんなさい…ごめんなさい。[p]


[button  storage=""  target="*ok"  graphic="ch/ok.png"    x="0"  y="200" ]
[button  storage=""  target="*cute"  graphic="ch/was-cute.png"   x="0"  y="350"  ]
[s  ]



*cute
[cm]
[f_ctp]
え…？[p]
…。[p]
嫌われてないなら、よかったですけど…。[p]
うぅ…。[p]
#
（言葉が見つからなかったのか[r]
顔を真っ赤にして複雑な表情でうつむいてしまった[p]
[eval exp="f.lust=f.lust+10" ]
[jump  storage=""  target="*end" ]

*ok
[cm]
[f_ctp]
…気持ち悪いって思ってないですか？[lr]
嫌いになってないですか？…本当に？[p]
[f_ccltp]
…[p]
[f_ctp]
すいません…取り乱してしまって。[p]
嫌われたらどうしようかと、パニックになってしまって…。[p]
[eval exp="f.love=f.love+10" ]


*end
[black]
[fadeoutbgm time=500]

[eval exp="f.self=1" ]
[cancelskip]
[jump  storage="after_action.ks"  target="*after_town" ]




[_tb_end_tyrano_code]

