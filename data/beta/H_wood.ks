[_tb_system_call storage=system/_H_wood.ks]

[tb_start_tyrano_code]

*H_wood
[cm  ]
[cancelskip]
[show_skip]


#
（シルヴィの正面に回り覆いかぶさるように唇を奪う。[p]
[f_clp]

#シルヴィ
ん…。[p]
[fadeoutbgm  time=500]
[if exp="f.lust<=40" ]
[f_tp]
…[name]？[p]
もしかして、ここで？[p]
[f_clp]
恥ずかしいですけど、[name]がしたいなら…。[p]
[elsif exp="f.lust<=100" ]
[f_tp]
（シルヴィの口に侵入すると彼女の小さな舌がそれに応える。[p]
ん…[name]…。[p]
…するんですか？[p]
[f_stp]
はい、じゃあ…。[p]
[else ]
[f_ctp]
（唇が触れると彼女の方から舌を伸ばしてきた。[p]
（頭を抱えられ、シルヴィの長く深い積極的なディープキスをしばし味わう。[p]
#シルヴィ
ぷぁ…[name]。[p]
私、我慢できません…。[p]
してください…。[r]今ここで、お願いします…。[p]
[endif]



[playbgm  loop="true"  storage="Magenta_Touch.ogg"  ]
*c-c
[black]
[if exp="f.dress==21" ]
[chara_mod  name="e-clothes"  time="0"  storage="chara/clothes/sw-c1.png" ]
[elsif exp="f.dress==22" ]
[chara_mod  name="e-clothes"  time="0"  storage="chara/clothes/sw-c2.png" ]
[elsif exp="f.dress==23" ]
[chara_mod  name="e-clothes"  time="0"  storage="chara/clothes/sw-c3.png" ]
[elsif exp="f.dress==24" ]
[chara_mod  name="e-clothes"  time="0"  storage="chara/clothes/sw-c4.png" ]
[elsif exp="f.dress==25" ]
[chara_mod  name="e-clothes"  time="0"  storage="chara/clothes/sw-c5.png" ]
[endif]

[if exp="f.ring==1" ]
[chara_mod  name="e-ring"  time="0"  storage="chara/ring/sw-a1.png" ]
[elsif exp="f.ring==2" ]
[chara_mod  name="e-ring"  time="0"  storage="chara/ring/sw-a2.png" ]
[elsif exp="f.ring==3" ]
[chara_mod  name="e-ring"  time="0"  storage="chara/ring/sw-a3.png" ]
[elsif exp="f.ring==11" ]
[chara_mod  name="e-ring"  time="0"  storage="chara/ring/sw-b1.png" ]
[elsif exp="f.ring==12" ]
[chara_mod  name="e-ring"  time="0"  storage="chara/ring/sw-b2.png" ]
[elsif exp="f.ring==13" ]
[chara_mod  name="e-ring"  time="0"  storage="chara/ring/sw-b3.png" ]
[elsif exp="f.ring==21" ]
[chara_mod  name="e-ring"  time="0"  storage="chara/ring/sw-c1.png" ]
[else]
[chara_mod  name="e-ring"  time="0"  storage="chara/ring/00.png" ]
[endif]

[if exp="f.head==1" ]
[chara_mod  name="e-head"  time="0"  storage="chara/head/sw-a1.png" ]
[elsif exp="f.head==2" ]
[chara_mod  name="e-head"  time="0"  storage="chara/head/sw-a2.png" ]
[elsif exp="f.head==2" ]
[chara_mod  name="e-head"  time="0"  storage="chara/head/sw-b2.png" ]
[else]
[chara_mod  name="e-head"  time="0"  storage="chara/head/00.png" ]
[endif]

[if exp="f.hair==0" ]
[chara_mod name="e-ribbon" time="0" storage="chara/ribbon/00.png" ]
[elsif exp="f.hair==1" ]
[chara_mod name="e-ribbon" time="0" storage="chara/ribbon/sw-a1.png" ]
[elsif exp="f.hair==2" ]
[chara_mod name="e-ribbon" time="0" storage="chara/ribbon/sw-a2.png" ]
[elsif exp="f.hair==3" ]
[chara_mod name="e-ribbon" time="0" storage="chara/ribbon/sw-a3.png" ]
[elsif exp="f.hair==4" ]
[chara_mod name="e-ribbon" time="0" storage="chara/ribbon/sw-a4.png" ]
[elsif exp="f.hair==5" ]
[chara_mod name="e-ribbon" time="0" storage="chara/ribbon/sw-a5.png" ]
[elsif exp="f.hair==11" ]
[chara_mod name="e-ribbon" time="0" storage="chara/ribbon/sw-b1.png" ]
[elsif exp="f.hair==12" ]
[chara_mod name="e-ribbon" time="0" storage="chara/ribbon/sw-b2.png" ]
[elsif exp="f.hair==13" ]
[chara_mod name="e-ribbon" time="0" storage="chara/ribbon/sw-b3.png" ]
[elsif exp="f.hair==14" ]
[chara_mod name="e-ribbon" time="0" storage="chara/ribbon/sw-b4.png" ]
[else]
[endif]

[if exp="f.glasses==0" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/00.png" ]
[elsif exp="f.glasses==1" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/sw-a1.png" ]
[elsif exp="f.glasses==2" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/sw-a2.png" ]
[elsif exp="f.glasses==3" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/sw-a3.png" ]
[elsif exp="f.glasses==4" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/sw-a4.png" ]
[elsif exp="f.glasses==5" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/sw-a5.png" ]
[elsif exp="f.glasses==11" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/sw-b1.png" ]
[elsif exp="f.glasses==12" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/sw-b2.png" ]
[elsif exp="f.glasses==13" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/sw-b3.png" ]
[elsif exp="f.glasses==14" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/sw-b4.png" ]
[elsif exp="f.glasses==15" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/sw-b5.png" ]
[elsif exp="f.glasses==21" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/sw-c1.png" ]
[elsif exp="f.glasses==22" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/sw-c2.png" ]
[elsif exp="f.glasses==23" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/sw-c3.png" ]
[elsif exp="f.glasses==24" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/sw-c4.png" ]
[elsif exp="f.glasses==25" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/sw-c5.png" ]
[endif]

[if exp="f.socks==0" ]
[chara_mod name="e-socks" time="0" storage="chara/socks-s/00.png" ]
[elsif exp="f.socks==11" ]
[chara_mod name="e-socks" time="0" storage="chara/socks/sw-b1.png" ]
[elsif exp="f.socks==12" ]
[chara_mod name="e-socks" time="0" storage="chara/socks/sw-b2.png" ]
[elsif exp="f.socks==13" ]
[chara_mod name="e-socks" time="0" storage="chara/socks/sw-b3.png" ]
[elsif exp="f.socks==14" ]
[chara_mod name="e-socks" time="0" storage="chara/socks/sw-b4.png" ]
[elsif exp="f.socks==15" ]
[chara_mod name="e-socks" time="0" storage="chara/socks/sw-b5.png" ]
[elsif exp="f.socks==16" ]
[chara_mod name="e-socks" time="0" storage="chara/socks/sw-b6.png" ]
[else]
[chara_mod name="e-socks" time="0" storage="chara/socks-s/00.png" ]
[endif]

[chara_mod  name="se"  time="0"  storage="chara/se/00.png" ]
[chara_mod  name="tx"  time="0"  storage="chara/text/00.png" ]
[chara_mod  name="ef"  time="0"  storage="chara/effect/00.png" ]
[chara_mod  name="x"  time="0"  storage="chara/x-ray/00.png" ]



[button  storage=""  target="*wear"  graphic="ch/wear.png"    x="0"  y="200" ]
[button  storage=""  target="*nude"  graphic="ch/unwear.png"   x="0"  y="350" ]
[endif]
[s]

*wear
[cm]
[cancelskip]
[if exp="f.lust<=40" ]
[bg  time="1"  method="crossfade"  storage="sw1-1.jpg" ]
[elsif exp="f.lust<=100" ]
[bg  time="1"  method="crossfade"  storage="sw2-1.jpg" ]
[chara_mod  name="ef"  time="0"  storage="chara/effect/sw2-1.png" ]
[else ]
[bg  time="1"  method="crossfade"  storage="sw3-1.jpg" ]
[chara_mod  name="ef"  time="0"  storage="chara/effect/sw3-1.png" ]
[endif]

[chara_show name="e-ribbon" time="0" wait="true" left="0.1" ]
[chara_show name="e-glasses" time="0" wait="true" left="0.1" ]
[chara_show name="e-ring" time="0" wait="true" left="0.1" ]
[chara_show  name="e-head"  time="0"  wait="true"  left="0.1" ]
[chara_show name="e-clothes" time="0" wait="true" left="0.1" ]
[chara_show name="e-socks" time="0" wait="true" left="0.1" ]
[show_effect]

[if exp="f.lust<=40" ]
[jump  storage=""  target="*x" ]
[elsif exp="f.lust<=100" ]
[jump  storage=""  target="*xx" ]
[else ]
[jump  storage=""  target="*xxx" ]
[endif]


*nude
[cm]
[cancelskip]
[if exp="f.lust<=40" ]
[bg  time="1"  method="crossfade"  storage="sw1-1.jpg" ]
[elsif exp="f.lust<=100" ]
[bg  time="1"  method="crossfade"  storage="sw2-1.jpg" ]
[chara_mod  name="ef"  time="0"  storage="chara/effect/sw2-1.png" ]
[else ]
[bg  time="1"  method="crossfade"  storage="sw3-1.jpg" ]
[chara_mod  name="ef"  time="0"  storage="chara/effect/sw3-1.png" ]
[endif]

[chara_show name="e-ribbon" time="0" wait="true" left="0.1" ]
[chara_show name="e-glasses" time="0" wait="true" left="0.1" ]
[chara_show name="e-ring" time="0" wait="true" left="0.1" ]
[chara_show  name="e-head"  time="0"  wait="true"  left="0.1" ]
[chara_show name="e-socks" time="0" wait="true" left="0.1" ]
[show_effect]

[if exp="f.lust<=40" ]
[jump  storage=""  target="*x" ]
[elsif exp="f.lust<=100" ]
[jump  storage=""  target="*xx" ]
[else ]
[jump  storage=""  target="*xxx" ]
[endif]



*x

#
シルヴィの足をそっと開かせた。[p]
口ではいいと言ったもののシルヴィの顔は羞恥で真っ赤に染まっている。[p]

#シルヴィ
だ…大丈夫です。[p]
[bg  time="1"  method="crossfade"  storage="sw1-2.jpg" ]

#
（愛撫もそこそこに彼女の割れ目にペニスをあてがう。[p]

[bg  time="1"  method="crossfade"  storage="sw1-3.jpg" ]
[chara_mod  name="se"  time="0"  storage="chara/se/sw1-3.png" ]
[chara_mod  name="tx"  time="0"  storage="chara/text/sw1-3.png" ]
[chara_mod  name="ef"  time="0"  storage="chara/effect/sw1-3.png" ]
[chara_mod  name="x"  time="0"  storage="chara/x-ray/sw-1.png" ]
[playse  storage="s-wet1.ogg"  clear="true"  ]
#シルヴィ
ん…ふぅ…[p]
#
（しっかり閉じた割れ目も少し押し広げると中はじっとりと湿り始めている。[p]
（少なくとも緊張で濡れないということはないようだ。[p]

[bg  time="1"  method="crossfade"  storage="sw1-4.jpg" ]
[chara_mod  name="se"  time="0"  storage="chara/se/sw1-4.png" ]
[chara_mod  name="tx"  time="0"  storage="chara/text/sw1-4.png" ]
[chara_mod  name="ef"  time="0"  storage="chara/effect/sw1-4.png" ]
[chara_mod  name="x"  time="0"  storage="chara/x-ray/sw-2.png" ]
[playse  loop="true"  storage="l-wet1.ogg"  clear="true"  ]

#
（シルヴィに体重がかからないようゆっくりと腰を動かし始める。[p]
#シルヴィ
んっ…ふぅっ……[p]
#
（野外だからか風や虫の立てる音一つ一つに注意を引かれ[r]
落ち着きがないようだ。[p]
（しかし深く上下する胸と次第に濡れ始めた秘部は[r]
明確に快感と興奮を表している。[p]
[bg  time="1"  method="crossfade"  storage="sw1-5.jpg" ]

#シルヴィ
ふうっ…♡くぅっ……はぁっ…♡[p]
#
（シルヴィは漏れそうになる嬌声をなんとか抑えようと唇を噛んでいるが[r]
子宮に押し付けるように深いピストンを繰り返すと堪えきれず小さく声をあげ始めた。[p]
[bg  time="1"  method="crossfade"  storage="sw1-6.jpg" ]
[chara_mod  name="se"  time="0"  storage="chara/se/sw1-6.png" ]
[chara_mod  name="tx"  time="0"  storage="chara/text/sw1-6.png" ]
[chara_mod  name="ef"  time="0"  storage="chara/effect/sw1-6.png" ]
[chara_mod  name="x"  time="0"  storage="chara/x-ray/sw-3.png" ]
[playse  loop="true"  storage="l-wet2.ogg"  clear="true"  ]

#シルヴィ
あっ…！♡…ふぁっ…！♡[p]
#
（しばらく行為を続けシルヴィの嬌声も大きくなってくると[r]
だんだんお互いの限界が近づいてくるのを感じた。[p]
[bg  time="1"  method="crossfade"  storage="sw1-7.jpg" ]

#シルヴィ
あ…[name]…私、そろそろ…♡[p]
あぁっ！♡♡[p]

[bg  time="1"  method="crossfade"  storage="sw1-8.jpg" ]
[chara_mod  name="se"  time="0"  storage="chara/se/sw1-8.png" ]
[chara_mod  name="tx"  time="0"  storage="chara/text/sw1-8.png" ]
[chara_mod  name="ef"  time="0"  storage="chara/effect/sw1-8.png" ]
[chara_mod  name="x"  time="0"  storage="chara/x-ray/sw-4.png" ]
[playse  storage="fin1.ogg"  clear="true"  ]

#シルヴィ
んっ…くぅ゛〜！♡！♡♡[p]
#
（最後に思い切り腰を押し付け[r]
ペニス全体をシルヴィの中に沈めて精液を吐き出す。[p]

[bg  time="1"  method="crossfade"  storage="sw1-9.jpg" ]
[chara_mod  name="se"  time="0"  storage="chara/se/00.png" ]
[chara_mod  name="tx"  time="0"  storage="chara/text/sw1-9.png" ]
[chara_mod  name="ef"  time="0"  storage="chara/effect/sw1-9.png" ]
[chara_mod  name="x"  time="0"  storage="chara/x-ray/sw-5.png" ]

#シルヴィ
はぁっ…！♡はぁっ…♡♡[p]
私…お外で…[name]と…しちゃったんだ…♡[p]
[eval exp="f.sex=f.sex+1" ]
[eval exp="f.h_v=f.h_v+3" ]
[eval exp="f.lust=f.lust+4" ]
[eval exp="f.love=f.love+10" ]
[eval exp="f.heavn=f.heavn+1" ]
[if exp="f.m_wood==0" ]
[eval  exp="f.m_wood=1" ]
[endif]
[jump  storage=""  target="*end" ]




*xx
#
（シルヴィは自分から足を開き性器をあらわにした。[p]
[bg  time="1"  method="crossfade"  storage="sw2-2.jpg" ]

（見せつけるように開かれた脚の間で硬くなったイチモツをあらわにすると、[r]
彼女は期待に満ちた目でそれを見つめた。[p]
#シルヴィ
外でする時のドキドキ、最初は怖かったけど…なんだか癖になっちゃいそう…。[p]
#
（恥ずかしそうに頬を染め、あたりを気にしているようだが[r]
どこかそれを楽み始めているようにも見える。[p]
[bg  time="1"  method="crossfade"  storage="sw2-3.jpg" ]
[chara_mod  name="se"  time="0"  storage="chara/se/sw2-3.png" ]
[chara_mod  name="tx"  time="0"  storage="chara/text/sw2-3.png" ]
[chara_mod  name="ef"  time="0"  storage="chara/effect/sw2-3.png" ]
[chara_mod  name="x"  time="0"  storage="chara/x-ray/sw-1.png" ]
[playse  storage="s-wet1.ogg"  clear="true"  ]

（すでにじっとりと湿っている彼女の割れ目にペニスを挿入する。[p]
#シルヴィ
あっ…♡はぁ〜♡[p]
（暖かな膣はすんなりとペニスを受け入れ、同時にシルヴィの表情が恍惚に染まった。[p]
[bg  time="1"  method="crossfade"  storage="sw2-4.jpg" ]
[chara_mod  name="se"  time="0"  storage="chara/se/sw2-4.png" ]
[chara_mod  name="tx"  time="0"  storage="chara/text/sw2-4.png" ]
[chara_mod  name="ef"  time="0"  storage="chara/effect/sw2-4.png" ]
[chara_mod  name="x"  time="0"  storage="chara/x-ray/sw-2.png" ]
[playse  loop="true"  storage="l-wet1.ogg"  clear="true"  ]

#
（シルヴィの体温を楽しむように深くゆっくりと腰を動かし始める。[p]
#シルヴィ
んっ…♡ふぅっ…♡[p]
#
（開けた場所で行う性行為に違和感を感じつつも、[r]
シルヴィはすでに快楽に身を任せ始めているようだ[p]
[bg  time="1"  method="crossfade"  storage="sw2-5.jpg" ]
[chara_mod  name="tx"  time="0"  storage="chara/text/sw2-5.png" ]
[chara_mod  name="ef"  time="0"  storage="chara/effect/sw2-5.png" ]

#シルヴィ
あっ…♡…ふぁっ…！♡あんっ！♡♡[p]
#
（じっくりと肉襞を掻き分け膣をえぐり続けると[r]
シルヴィはためらうように少し抑えた嬌声を上げ始める。[p]
[bg  time="1"  method="crossfade"  storage="sw2-6.jpg" ]
[chara_mod  name="se"  time="0"  storage="chara/se/sw2-6.png" ]
[chara_mod  name="tx"  time="0"  storage="chara/text/sw2-6.png" ]
[chara_mod  name="ef"  time="0"  storage="chara/effect/sw2-6.png" ]
[chara_mod  name="x"  time="0"  storage="chara/x-ray/sw-3.png" ]
[playse  loop="true"  storage="l-wet2.ogg"  clear="true"  ]

（誘うような膣のヒクつきに誘われてだんだんと腰の動きが激しくなっていく[p]
#シルヴィ
あ゛っ！♡…はぁ゛っ！♡♡[name]っ！♡！♡♡[p]
#
（野外であることなど御構い無しの声の荒ぶり方から[r]
シルヴィの絶頂が近いのを感じる。[p]
（こちらも限界はすぐそこだった。[p]
#シルヴィ
あ゛っ！♡あ゛っ！♡♡[p]
[bg  time="1"  method="crossfade"  storage="sw2-7.jpg" ]
[chara_mod  name="se"  time="0"  storage="chara/se/sw2-7.png" ]
[chara_mod  name="tx"  time="0"  storage="chara/text/sw2-7.png" ]
[chara_mod  name="ef"  time="0"  storage="chara/effect/sw2-7.png" ]
[chara_mod  name="x"  time="0"  storage="chara/x-ray/sw-4.png" ]
[playse  storage="fin1.ogg"  clear="true"  ]
#
（最後に勢いよく腰を押し付け[r]
ペニス全体をシルヴィの中に沈めて精液を吐き出す。[p]
お゛ぉっ…！！♡！♡♡[r]
あ゛っ…！♡ぅ゛…！！♡！♡♡♡[p]

[bg  time="1"  method="crossfade"  storage="sw2-8.jpg" ]
[chara_mod  name="se"  time="0"  storage="chara/se/00.png" ]
[chara_mod  name="tx"  time="0"  storage="chara/text/sw2-8.png" ]
[chara_mod  name="ef"  time="0"  storage="chara/effect/sw2-8.png" ]
[chara_mod  name="x"  time="0"  storage="chara/x-ray/sw-5.png" ]
はぁっ…♡ふぅっ…♡♡[r]
[name]…♡♡[p]
[eval exp="f.sex=f.sex+1" ]
[eval exp="f.h_v=f.h_v+6" ]
[eval exp="f.lust=f.lust+7" ]
[eval exp="f.love=f.love+15" ]
[eval exp="f.heavn=f.heavn+2" ]

[if exp="f.m_wood<=1" ]
[eval  exp="f.m_wood=2" ]
[endif]

[jump  storage=""  target="*end" ]







*xxx
シルヴィは躊躇なく脚を開き、ねだるように腰を突き出した。[p]
#シルヴィ
はぁ〜っ…♡はぁ〜っ…♡♡[p]

[bg  time="1"  method="crossfade"  storage="sw3-2.jpg" ]
#
（硬くなったイチモツをあらわにするとシルヴィは期待に満ちた目でそれを見つめた。[p]
#シルヴィ
はぁ〜っ…♡[name]の…♡♡[p]
#
（羞恥心も相変わらず感じているようだが、[r]
それ以上の興奮が彼女の頭を一杯にしている様子だ。[p]
（すでに愛液が滴り始めている彼女の割れ目にペニスをあてがう。[p]

[bg  time="1"  method="crossfade"  storage="sw3-3.jpg" ]
[chara_mod  name="se"  time="0"  storage="chara/se/sw3-3.png" ]
[chara_mod  name="tx"  time="0"  storage="chara/text/sw3-3.png" ]
[chara_mod  name="ef"  time="0"  storage="chara/effect/sw3-3.png" ]
[chara_mod  name="x"  time="0"  storage="chara/x-ray/sw-1.png" ]
[playse  storage="s-wet1.ogg"  clear="true"  ]
#シルヴィ
んい゛〜っ…！♡！♡♡[p]
#
（ゆっくりと挿入すると熱を持った肉襞がペニスに絡みつき、[r]
シルヴィは恍惚の声を上げた。[p]

[bg  time="1"  method="crossfade"  storage="sw3-4.jpg" ]
[chara_mod  name="se"  time="0"  storage="chara/se/sw3-4.png" ]
[chara_mod  name="tx"  time="0"  storage="chara/text/sw3-4.png" ]
[chara_mod  name="ef"  time="0"  storage="chara/effect/sw3-4.png" ]
[chara_mod  name="x"  time="0"  storage="chara/x-ray/sw-2.png" ]
[playse  loop="true"  storage="l-wet1.ogg"  clear="true"  ]

（今シルヴィをいたわっても彼女を焦らすだけだろう。[p]
（始めから腰を打ち付ける音が響く勢いで子宮を叩く。[p]
#シルヴィ
あ゛っ！♡…はぁ゛っ！♡♡[name]っ！♡！♡♡[p]
#
（彼女は野外であることは御構い無しに思い切り喘ぎ声を上げ始めた。[p]
（トロンとした瞳は開放感に酔っているようだ。[p]
[bg  time="1"  method="crossfade"  storage="sw3-5.jpg" ]
[chara_mod  name="se"  time="0"  storage="chara/se/sw3-5.png" ]
[chara_mod  name="tx"  time="0"  storage="chara/text/sw3-5.png" ]
[chara_mod  name="ef"  time="0"  storage="chara/effect/sw3-5.png" ]
[chara_mod  name="x"  time="0"  storage="chara/x-ray/sw-3.png" ]
[playse  loop="true"  storage="l-wet2.ogg"  clear="true"  ]


#シルヴィ
あ゛っ！♡ひぎぃっ…！♡♡あ゛ぇ゛っ！♡！♡♡♡[p]
#
（さらにペースを上げると、彼女はひときわ大きく喉を震わした。[p]
（空の下で獣のような声をあげるシルヴィとのセックスは[r]
まさに動物の交尾そのものだった。[p]

#シルヴィ
ひぃ゛っ…！♡♡あ゛ぁ゛っ！♡♡♡[p]
#
（本能の赴くままにシルヴィの膣内を蹂躙し快楽を貪り合う[p]
（全力の腰つきでシルヴィを攻め立て息が絶え絶えになるが、[r]
シルヴィに精を吐き出すまでは動きは激しくなる一方だ。[p]
[bg  time="1"  method="crossfade"  storage="sw3-6.jpg" ]

#シルヴィ
お゛ぉっ！！♡！♡♡[r]
あ゛っ！♡あ゛ぅ゛…！！♡！♡♡♡[p]
#
（一心不乱の長いまぐわいも確実に絶頂の時は近づき、[r]
そして快感は抱えきれない量に達した。[p]

[bg  time="1"  method="crossfade"  storage="sw3-7.jpg" ]
[chara_mod  name="se"  time="0"  storage="chara/se/sw3-7.png" ]
[chara_mod  name="tx"  time="0"  storage="chara/text/sw3-7.png" ]
[chara_mod  name="ef"  time="0"  storage="chara/effect/sw3-7.png" ]
[chara_mod  name="x"  time="0"  storage="chara/x-ray/sw-4.png" ]
[playse    storage="fin1.ogg"  clear="true"  ]

#シルヴィ
あ゛あ゛ぁあ゛っ！あ゛！っ♡！あ゛♡♡！っ♡♡♡！♡♡[p]
#
（全体重を思い切りシルヴィの子宮にかけるように腰をぶつけ[r]
煮えたぎった精液を彼女の深くに撃ち込んだ。[p]
#シルヴィ
あ゛ぁあ゛…っ♡！♡♡がぁっ…♡！♡♡！あ゛っ！♡♡♡[p]
#
（シルヴィの腰が絶頂の痙攣に跳ねまわろうともがくが[r]
地面に思い切り押し付けられた彼女の体はほとんど動けないままただ震えた。[p]
[bg  time="1"  method="crossfade"  storage="sw3-8.jpg" ]
[chara_mod  name="se"  time="0"  storage="chara/se/sw3-8.png" ]
[chara_mod  name="tx"  time="0"  storage="chara/text/sw3-8.png" ]
[chara_mod  name="ef"  time="0"  storage="chara/effect/sw3-8.png" ]
[chara_mod  name="x"  time="0"  storage="chara/x-ray/sw-5.png" ]


#シルヴィ
あ゛〜っ！♡♡あ゛〜っ！♡♡[p]

[eval exp="f.sex=f.sex+1" ]
[eval exp="f.h_v=f.h_v+10" ]
[eval exp="f.lust=f.lust+15" ]
[eval exp="f.love=f.love+20" ]
[eval exp="f.heavn=f.heavn+4" ]
[if exp="f.m_wood<=2" ]
[eval  exp="f.m_wood=3" ]
[endif]
[jump  storage=""  target="*end" ]


*end
[black]
#
（しばらく二人とも動けず繋がったまま数分が過ぎ、[r]
息を整えた後もシルヴィは腰が立たなくなっていた。[p]

[hide_skip]
[eval exp="f.day=f.day+1" ]
[eval exp="f.act='wood'" ]
[eval exp="f.out=0" ]
[fadeoutbgm time=500]
[cancelskip]
…[p]
[jump  storage="after_action.ks"  target="*return_bace" ]



[eval exp="f.heavn=f.heavn+1" ]
[eval exp="f.drink=f.drink+1" ]
[eval exp="f.kake=f.kake+1" ]
[eval exp="f.blow=f.blow+1" ]
[eval exp="f.cum=f.cum+1" ]

[playse  loop="true"  storage="l-wet0.ogg"  clear="true"  ]

[_tb_end_tyrano_code]

