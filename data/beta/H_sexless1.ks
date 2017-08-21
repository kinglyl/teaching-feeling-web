[_tb_system_call storage=system/_H_sexless1.ks]

[tb_start_tyrano_code]

*sexless1
[cm  ]
[cancelskip]
[black]
[show_skip]
[fadeoutbgm time=500]
[tb_show_message_window  ]

[set_stand]
…[p]
[f_ctp]
[bg  time="1"  method="crossfade"  storage="bg-room.jpg"  ]
[playbgm  loop="true"  storage="Ivory_Fiber.ogg"  ]
[show_stand]

#シルヴィ

[if exp="f.lust<=40" ]
[f_ct]
あの、[name]…？[p]
ここ数日…、その…夜のお相手をしていませんけど…。[p]
気分じゃないだけですか？[lr]
遠慮してるんだったら必要ないですよ？[p]
[elsif exp="f.lust<=100" ]
[f_ctp]
あの、[name]…？[p]
ここ数日…、その…抱いていただいてないですけど…。[p]
私なんかじゃ、そんなにしたくはならないんでしょうか？[lr]
[f_ct]
もしかして…もう、飽きちゃったとか…？[p]
[else]
[f_ctp]
あの、[name]…？[p]
ここ数日…、その…抱いていただいてないですけど…。[lr]
[name]は…まだしたくなったりしてないですか？[p]
[f_ct]
[endif]

[button  storage=""  target="*nade"  graphic="ch/act.png"    x="0"  y="200" ]
[button  storage=""  target="*bed"  graphic="ch/sex.png"   x="0"  y="350" ]
[s]

*nade
[cm]
[cancelskip]
[cancelskip]
[f_cl]
ん…[lr]
[f_t]
気が乗らなかっただけ、ですか？[p]
[f_st]
そう…ですね…。[lr]
[name]が抱きたいときに抱いていただくのが一番ですね[p]
[f_sclt]
じゃあ、今日はもう寝ましょうか…。[p]
[black]
[fadeoutbgm time=500]
…[p]
[cancelskip]
[jump  storage="after_action.ks"  target="*return_bace" ]

*bed
[cm]
[cancelskip]
[cancelskip]
[fadeoutbgm time=500]
[f_tp]
抱いて…くださるんですか？[p]
[playbgm  loop="true"  storage="Magenta_Touch.ogg"  ]
#
（シルヴィの服を脱がせベッドに横たえる…。[p]

[black]
…[p]

[if exp="f.ring==1" ]
[chara_mod  name="e-ring"  time="0"  storage="chara/ring/sx-a1.png" ]
[elsif exp="f.ring==2" ]
[chara_mod  name="e-ring"  time="0"  storage="chara/ring/sx-a2.png" ]
[elsif exp="f.ring==3" ]
[chara_mod  name="e-ring"  time="0"  storage="chara/ring/sx-a3.png" ]
[elsif exp="f.ring==11" ]
[chara_mod  name="e-ring"  time="0"  storage="chara/ring/sx-b1.png" ]
[elsif exp="f.ring==12" ]
[chara_mod  name="e-ring"  time="0"  storage="chara/ring/sx-b2.png" ]
[elsif exp="f.ring==13" ]
[chara_mod  name="e-ring"  time="0"  storage="chara/ring/sx-b3.png" ]
[elsif exp="f.ring==21" ]
[chara_mod  name="e-ring"  time="0"  storage="chara/ring/sx-c1.png" ]
[else]
[chara_mod  name="e-ring"  time="0"  storage="chara/ring/00.png" ]
[endif]

[if exp="f.head==1" ]
[chara_mod  name="e-head"  time="0"  storage="chara/head/sx-a1.png" ]
[elsif exp="f.head==2" ]
[chara_mod  name="e-head"  time="0"  storage="chara/head/sx-a2.png" ]
[else]
[chara_mod  name="e-head"  time="0"  storage="chara/head/00.png" ]
[endif]

[if exp="f.glasses==0" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/00.png" ]
[elsif exp="f.glasses==1" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/sx-a1.png" ]
[elsif exp="f.glasses==2" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/sx-a2.png" ]
[elsif exp="f.glasses==3" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/sx-a3.png" ]
[elsif exp="f.glasses==4" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/sx-a4.png" ]
[elsif exp="f.glasses==5" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/sx-a5.png" ]
[elsif exp="f.glasses==11" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/sx-b1.png" ]
[elsif exp="f.glasses==12" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/sx-b2.png" ]
[elsif exp="f.glasses==13" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/sx-b3.png" ]
[elsif exp="f.glasses==14" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/sx-b4.png" ]
[elsif exp="f.glasses==15" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/sx-b5.png" ]
[elsif exp="f.glasses==21" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/sx-c1.png" ]
[elsif exp="f.glasses==22" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/sx-c2.png" ]
[elsif exp="f.glasses==23" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/sx-c3.png" ]
[elsif exp="f.glasses==24" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/sx-c4.png" ]
[elsif exp="f.glasses==25" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/sx-c5.png" ]
[endif]
[chara_mod  name="z-a"  time="0"  storage="chara/25/00.png" ]

[bg  time="1"  method="crossfade"  storage="sx-1.jpg" ]
[chara_mod  name="se"  time="0"  storage="chara/se/sx-1.png" ]
[chara_mod  name="tx"  time="0"  storage="chara/text/00.png" ]
[chara_mod  name="ef"  time="0"  storage="chara/effect/00.png" ]
[chara_mod  name="x"  time="0"  storage="chara/x-ray/00.png" ]
[chara_show  name="e-ring"  time="0"  wait="true"  left="0.1" ]
[chara_show  name="e-head"  time="0"  wait="true"  left="0.1" ]
[chara_show  name="e-glasses"  time="0"  wait="true"  left="0.1" ]
[chara_show  name="z-a"  time="0"  wait="true"  left="0.1" ]

[show_effect]


#シルヴィ
あぁ、[name]の、たくましい…♡[p]
#
（シルヴィのわれめに硬く膨れ上がったイチモツを添えると[r]
彼女は期待に満ちた目でそれを凝視した。[p]
#シルヴィ
すいません…[lr]本当は…私がして欲しかっただけなんです…♡[p]
[name]に…抱いていただきたくて…。[p]
#
（抱えたシルヴィの脚は軽く汗ばみ彼女の興奮を感じる。[lr]
（前戯の必要はなさそうだ…[p]
[bg  time="1"  method="crossfade"  storage="sx-2.jpg" ]
[chara_mod  name="se"  time="0"  storage="chara/se/sx-2.png" ]
[chara_mod  name="tx"  time="0"  storage="chara/text/sx-2.png" ]
[chara_mod  name="ef"  time="0"  storage="chara/effect/sx-2.png" ]
[chara_mod  name="x"  time="0"  storage="chara/x-ray/sx-2.png" ]
[playse    storage="s-wet1.ogg"  clear="true"  ]

#シルヴィ
あぁ…！[p]
入ってくる…[name]の…♡[p]
#
（シルヴィの膣は相変わらず狭くきついが、[r]
溢れる愛液が十分に摩擦を減らしているようだ。[p]
（出来上がった肉壁はペニスをすんなり受け入れた。[p]

[bg  time="1"  method="crossfade"  storage="sx-3.jpg" ]
[chara_mod  name="se"  time="0"  storage="chara/se/sx-3.png" ]
[chara_mod  name="tx"  time="0"  storage="chara/text/sx-3.png" ]
[chara_mod  name="ef"  time="0"  storage="chara/effect/sx-3.png" ]
[chara_mod  name="x"  time="0"  storage="chara/x-ray/sx-3.png" ]

#シルヴィ
あ〜…は〜…♡[lr]
[name]…♡[p]
これが…忘れられなくて…[lr]
長く放って置かれると…ここが寂しくなっちゃうんです…♡[p]
#
（熱くぬめった膣内が喜びに震え、動かずともペニスに甘い刺激を送ってくる…。[p]
[bg  time="1"  method="crossfade"  storage="sx-4.jpg" ]
[chara_mod  name="se"  time="0"  storage="chara/se/sx-4.png" ]
[chara_mod  name="tx"  time="0"  storage="chara/text/sx-4.png" ]
[chara_mod  name="ef"  time="0"  storage="chara/effect/sx-4.png" ]
[playse  loop="true"  storage="l-wet1.ogg"  clear="true"  ]

#
（沸き上がる欲望を感じ、たまらず腰を動かし始める。[p]
#シルヴィ
あっ…♡これっ…気持ち…いいっ…♡[p]

#
（初めから少し激しい動きにも関わらずシルヴィは甘い吐息を漏らしている。[p]

（ペニスに伝わるシルヴィの体温を楽しみながら、しばらくの間じっくりと腰を動かす。[p]
（彼女もとろけるような表情をして膣を掻き分けられる感覚を噛みしめているようだ。[p]

[bg  time="1"  method="crossfade"  storage="sx-5.jpg" ]
[chara_mod  name="se"  time="0"  storage="chara/se/sx-5.png" ]
[chara_mod  name="tx"  time="0"  storage="chara/text/sx-5.png" ]
[chara_mod  name="ef"  time="0"  storage="chara/effect/sx-5.png" ]
[chara_mod  name="x"  time="0"  storage="chara/x-ray/sx-5.png" ]
[playse  loop="true"  storage="l-wet2.ogg"  clear="true"  ]

#シルヴィ
あっ♡あっ…♡[p]
[name]っ…それ…っだめですっ♡[p]
#
（腰の動きにひねりを加え、内から腹をこするようにシルヴィを攻め立てる。[p]
#シルヴィ
あ、ごめんなさい…っ[lr]
私、もう…っ！！[p]
#
（弱いところを突いたせいでシルヴィは一気に絶頂を前にしているようだ。[p]



[if exp="f.fin_choice==1" ]
[button  storage=""  target="*in"  graphic="ch/in.png"    x="0"  y="200" ]
[button  storage=""  target="*out"  graphic="ch/out.png"   x="0"  y="350" ]
[s]
[elsif exp="f.fin_in_out==1" ]
[jump  storage=""  target="*in" ]
[elsif exp="f.fin_in_out==0" ]
[jump  storage=""  target="*out" ]
[endif]


*in
[cm]
[cancelskip]
[cancelskip]
[bg  time="1"  method="crossfade"  storage="sx-6a.jpg" ]
[chara_mod  name="se"  time="0"  storage="chara/se/sx-6a.png" ]
[chara_mod  name="tx"  time="0"  storage="chara/text/sx-6a.png" ]
[chara_mod  name="ef"  time="0"  storage="chara/effect/sx-6a.png" ]
[chara_mod  name="x"  time="0"  storage="chara/x-ray/sx-6a.png" ]
[playse    storage="fin1.ogg"  clear="true"  ]

（シルヴィの甘い声とヒクつく肉襞につられてこちらの高ぶりも頂点に達した[p]
#シルヴィ
ん…くぅっ！！♡！♡♡[p]
#
（射精の瞬間に腰を密着させシルヴィの子宮に思い切り精液を吐き出す。[p]
（絶頂に達しているシルヴィの肉襞がギュウギュウとペニス全体を締め上げ[r]
まるで精液を一滴残らず飲み干そうとしているようだ。[p]

[bg  time="1"  method="crossfade"  storage="sx-7a.jpg" ]
[chara_mod  name="se"  time="0"  storage="chara/se/sx-7a.png" ]
[chara_mod  name="tx"  time="0"  storage="chara/text/sx-7.png" ]
[chara_mod  name="ef"  time="0"  storage="chara/effect/sx-7.png" ]
[chara_mod  name="x"  time="0"  storage="chara/x-ray/sx-7.png" ]

#シルヴィ
は〜…♡ふ〜…♡[p]

[bg  time="1"  method="crossfade"  storage="sx-8a.jpg" ]

ありがとう…ございます…♡[p]
もう…少しこのまま…♡♡[p]
[eval exp="f.cum=f.cum+1" ]
[jump  storage=""  target="*end" ]


*out
[cm]
[cancelskip]
[cancelskip]
[bg  time="1"  method="crossfade"  storage="sx-6b.jpg" ]
[chara_mod  name="se"  time="0"  storage="chara/se/sx-6b.png" ]
[chara_mod  name="tx"  time="0"  storage="chara/text/sx-6b.png" ]
[chara_mod  name="ef"  time="0"  storage="chara/effect/sx-6b.png" ]
[chara_mod  name="x"  time="0"  storage="chara/x-ray/00.png" ]
[playse    storage="squi.ogg"  clear="true"  ]

（シルヴィの甘い声とヒクつく肉襞につられてこちらの高ぶりも頂点に達した[p]
#シルヴィ
ん…くぅっ！！♡！♡♡[p]
#
（射精の瞬間ペニスを引き抜くと吹き出す精液がシルヴィの体に降りかかった。[p]

[bg  time="1"  method="crossfade"  storage="sx-7b.jpg" ]
[chara_mod  name="se"  time="0"  storage="chara/se/sx-7b.png" ]
[chara_mod  name="tx"  time="0"  storage="chara/text/sx-7.png" ]
[chara_mod  name="ef"  time="0"  storage="chara/effect/sx-7.png" ]
[chara_mod  name="z-a"  time="0"  storage="chara/25/sx-z.png" ]

#シルヴィ
は〜…♡ふ〜…♡[p]

[bg  time="1"  method="crossfade"  storage="sx-8b.jpg" ]
ありがとう…ございます…♡[p]
あぁ…、[name]の精液が…こんなに…♡♡[p]

[eval exp="f.kake=f.kake+1" ]
[jump  storage=""  target="*end" ]

*end
[black]
[hide_skip]
[eval exp="f.sex=f.sex+1" ]
[eval exp="f.h_v=f.h_v+5" ]
[eval exp="f.lust=f.lust+5" ]
[eval exp="f.love=f.love+8" ]
[eval exp="f.heavn=f.heavn+2" ]
[eval exp="f.day=f.day+1" ]
[eval exp="f.act='sex'" ]
[eval exp="f.out=0" ]
[eval exp="f.m_x=1" ]
[fadeoutbgm time=500]
[cancelskip]
…[p]
[jump  storage="after_action.ks"  target="*return_bace" ]


[_tb_end_tyrano_code]

