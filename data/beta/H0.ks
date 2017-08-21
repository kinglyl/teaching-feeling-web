[_tb_system_call storage=system/_H0.ks]

[tb_start_tyrano_code]

*touch
[cm  ]
[free]
[if exp="f.rape==0" ]
[jump  storage="H0.ks"  target="*touch0" ]
[elsif exp="f.rape==0.1" ]
[jump  storage="H0.ks"  target="*touch1" ]
[endif]

[chara_mod  name="e-body"  time="0"  storage="chara/body/s0-body-a.png" ]
[chara_mod  name="e-clothes"  time="0"  storage="chara/clothes/s0-a.png" ]
[chara_mod  name="e-face"  time="0"  storage="chara/face/s0-d.png" ]
[chara_mod  name="e-h"  time="0"  storage="chara/13/00.png" ]
[bg  time="0"  method="crossfade"  storage="s0.jpg" ]

[chara_show  name="e-body"  time="0"  wait="true"  left="0.1" ]
[chara_show  name="e-clothes"  time="0"  wait="true"  left="0.1" ]
[chara_show  name="e-face"  time="0"  wait="true"  left="0.1" ]
[chara_show  name="e-h"  time="0"  wait="true"  left="0.1" ]
;[wait time=200]


#
（シルヴィの服をまくりあげる。[p]
#シルヴィ
…[p]
[chara_mod  name="e-h"  time="0"  storage="chara/13/s0-a.png" ]
#
（手を伸ばし秘部に触れる。[p]
[jump  storage="H0.ks"  target="*touch2" ]
[endif]


*touch0
[freeimage layer=0]
[bg  time="0"  method="crossfade"  storage="s00.jpg" ]
#
（シルヴィの胸を触ってみる[lr]
…膨らみはわずかで、肉の感触はあまりない。[p]
#シルヴィ
…？[p]
#
（少し身じろぎをしたが抵抗はなかった[p]
[eval exp="f.feeling=f.feeling+10" ]
[eval exp="f.act=f.act+1" ]
[eval exp="f.rape=0.1" ]
[jump  storage="after_action.ks"  target="*after_touch" ]

*touch1
[cm]
[eval exp="f.trust=f.trust-1" ]
[eval exp="f.rape=0.5" ]
[freeimage layer=0]
[chara_mod  name="e-body"  time="0"  storage="chara/body/s0-body-a.png" ]
[chara_mod  name="e-clothes"  time="0"  storage="chara/clothes/s0-a.png" ]
[chara_mod  name="e-face"  time="0"  storage="chara/face/s0-d.png" ]
[chara_mod  name="e-h"  time="0"  storage="chara/13/00.png" ]
[bg  time="1"  method="crossfade"  storage="s0.jpg" ]

[chara_show  name="e-body"  time="0"  wait="true"  left="0.1" ]
[chara_show  name="e-clothes"  time="0"  wait="true"  left="0.1" ]
[chara_show  name="e-face"  time="0"  wait="true"  left="0.1" ]
[chara_show  name="e-h"  time="0"  wait="true"  left="0.1" ]
;[wait time=200]
#
（シルヴィの服をまくりあげるとうぶな恥丘が露わになる。[lr]
下着は与えられていなかったようだ。[p]
#シルヴィ
…[p]

[chara_mod  name="e-h"  time="0"  storage="chara/13/s0-a.png" ]
#
（手を伸ばし産毛も生えていないような秘部に触れる。[p]
[chara_mod  name="e-face"  time="0"  storage="chara/face/s0-a.png" ]
#シルヴィ
な、なにを…？[p]
[button  storage="H0.ks"  target="*touch2"  graphic="ch/continue.png"    x="0"  y="200" ]
[button  storage="H0.ks"  target="*stop1"  graphic="ch/stop.png"   x="0"  y="350" ]
[s]

*touch2
[cm]
[chara_mod  name="e-h"  time="0"  storage="chara/13/s0-b.png" ]
#
（割れ目と豆を優しくなぞり続ける[p]
#シルヴィ
[chara_mod  name="e-face"  time="0"  storage="chara/face/s0-b.png" ]
ん…[p]
[button  storage="H0.ks"  target="*touch3"  graphic="ch/continue.png"    x="0"  y="200" ]
[button  storage="H0.ks"  target="*stop1"  graphic="ch/stop.png"   x="0"  y="350" ]
[s]



*touch3
[cm]
[chara_mod  name="e-h"  time="0"  storage="chara/13/s0-b.png" ]
#
（じっくりと愛撫を続けるとだんだん秘部が湿り気を帯びてくる。[lr]
経験があるのだろうか。[p]
[chara_mod  name="e-face"  time="0"  storage="chara/face/s0-c.png" ]
#シルヴィ
え…？[lr]いや、前のご主人様にこういうことをされたことは…ないです…。[p]
[button  storage="H0.ks"  target="*touch4"  graphic="ch/continue.png"    x="0"  y="200" ]
[button  storage="H0.ks"  target="*stop2"  graphic="ch/stop.png"   x="0"  y="350" ]
[s]

*touch4
[cm]
#
[chara_mod  name="e-face"  time="0"  storage="chara/face/s0-e.png" ]
[chara_mod  name="e-h"  time="0"  storage="chara/13/s0-c.png" ]

#シルヴィ
なんだか…変な感じ[p]
#
（だんだんと快感を感じ始めたようだ。[lr]内腿を蜜がつたう。[p]
[chara_mod  name="e-h"  time="0"  storage="chara/13/s0-d.png" ]
（…もう準備はいいだろう[p]

[button  storage="H1.ks"  target="*rape"  graphic="ch/H.png"    x="0"  y="200" ]
[button  storage="H0.ks"  target="*stop2"  graphic="ch/remind.png"   x="0"  y="350" ]
[s]

*stop1
[cm]
[chara_mod  name="e-h"  time="0"  storage="chara/13/00.png" ]
#
（シルヴィの体から手を離した。[p]
[chara_mod  name="e-face"  time="0"  storage="chara/face/s0-c.png" ]
#シルヴィ
…終わりですか？[p]
[chara_mod  name="e-face"  time="0"  storage="chara/face/s0-f.png" ]
ふぅ…[p]
[jump  storage="after_action.ks"  target="*after_touch" ]

*stop2
[cm]
[chara_mod  name="e-h"  time="0"  storage="chara/13/s0-d.png" ]
#
（シルヴィの体から手を離した。[p]
[chara_mod  name="e-face"  time="0"  storage="chara/face/s0-c.png" ]
[chara_mod  name="e-h"  time="0"  storage="chara/13/s0-1.png" ]
#シルヴィ
…終わりですか？[p]
[chara_mod  name="e-face"  time="0"  storage="chara/face/s0-f.png" ]
ふぅ…[p]
[jump  storage="after_action.ks"  target="*after_touch" ]


[_tb_end_tyrano_code]

