[_tb_system_call storage=system/_H_sexless2.ks]

[tb_start_tyrano_code]

*sexless2
[cm  ]
[cancelskip]
[black]
[show_skip]
[fadeoutbgm time=500]
[tb_show_message_window  ]
[playbgm  loop="true"  storage="Ivory_Fiber.ogg"  ]

[set_stand]
…[p]
[f_ctp]
[bg  time="1"  method="crossfade"  storage="bg-room.jpg"  ]
[show_stand]

#シルヴィ
[f_ctp]
あの、[name]…？[p]
まだ…私を抱きたい気分にはならないでしょうか？[p]

[freeimage layer=0]
[call  storage="set_show.ks"  target="*set_mise" ]
[call  storage="set_show.ks"  target="*show_mise" ]

（突然シルヴィは秘部を見せつけてきた。[p]
（羞恥に震えながらも滴る愛液が太ももを伝い足元まで流れている。[p]

#シルヴィ
[if exp="f.lust<=40" ]
わ…私、体がなんだかおかしくて…[p]
多分、自分じゃどうしようもないと思うんです…[lr]
だから…その…。[p]
[elsif exp="f.lust<=100" ]
[name]に抱いて欲しくて、お腹の下の方が切なくて…[p]
…お願い…できませんか？[p]
[else]
もう、子宮が切なくて切なくて…[lr]
[name]に抱いていただかないとどうにかなってしまいそうなんです…。[p]
どうか…犯してください。お願いします…[p]
[endif]

[button  storage=""  target="*nop"  graphic="ch/latar.png"    x="0"  y="200" ]
[button  storage=""  target="*bed"  graphic="ch/sex.png"   x="0"  y="350" ]
[s]


*nop
[cm]
[cancelskip]
[if exp="f.lust<=40" ]
…わかり…ました[p]
[name]がしてくれるまで…待ちます…[p]
…きっと、少しの辛抱…ですよね。[p]
[elsif exp="f.lust<=100" ]
…わかり…ました[lr]
でも、できるだけ早く…お願いします。[p]
できるだけ…早く…[p]
[else]
そんな…。まだ、お預けなんですか？[p]
…わかり…ました[p]
でも、できるだけ早く…お願いします。[p]
でないと、私…。私…。[p]
[endif]

[black]
[fadeoutbgm time=500]
…[p]
[jump  storage="after_action.ks"  target="*return_bace" ]




*bed
[cm]
[cancelskip]
[fadeoutbgm time=500]
[playbgm  loop="true"  storage="Magenta_Touch.ogg"  ]
[black]
[if exp="f.ring==1" ]
[chara_mod  name="e-ring"  time="0"  storage="chara/ring/sxx-a1.png" ]
[elsif exp="f.ring==2" ]
[chara_mod  name="e-ring"  time="0"  storage="chara/ring/sxx-a2.png" ]
[elsif exp="f.ring==3" ]
[chara_mod  name="e-ring"  time="0"  storage="chara/ring/sxx-a3.png" ]
[elsif exp="f.ring==11" ]
[chara_mod  name="e-ring"  time="0"  storage="chara/ring/sxx-b1.png" ]
[elsif exp="f.ring==12" ]
[chara_mod  name="e-ring"  time="0"  storage="chara/ring/sxx-b2.png" ]
[elsif exp="f.ring==13" ]
[chara_mod  name="e-ring"  time="0"  storage="chara/ring/sxx-b3.png" ]
[elsif exp="f.ring==21" ]
[chara_mod  name="e-ring"  time="0"  storage="chara/ring/sxx-c1.png" ]
[else]
[chara_mod  name="e-ring"  time="0"  storage="chara/ring/00.png" ]
[endif]

[if exp="f.head==1" ]
[chara_mod  name="e-head"  time="0"  storage="chara/head/sxx-a1.png" ]
[elsif exp="f.head==2" ]
[chara_mod  name="e-head"  time="0"  storage="chara/head/sxx-a2.png" ]
[else]
[chara_mod  name="e-head"  time="0"  storage="chara/head/00.png" ]
[endif]

[if exp="f.glasses==0" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/00.png" ]
[elsif exp="f.glasses==1" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/sxx-a1.png" ]
[elsif exp="f.glasses==2" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/sxx-a2.png" ]
[elsif exp="f.glasses==3" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/sxx-a3.png" ]
[elsif exp="f.glasses==4" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/sxx-a4.png" ]
[elsif exp="f.glasses==5" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/sxx-a5.png" ]
[elsif exp="f.glasses==11" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/sxx-b1.png" ]
[elsif exp="f.glasses==12" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/sxx-b2.png" ]
[elsif exp="f.glasses==13" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/sxx-b3.png" ]
[elsif exp="f.glasses==14" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/sxx-b4.png" ]
[elsif exp="f.glasses==15" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/sxx-b5.png" ]
[elsif exp="f.glasses==21" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/sxx-c1.png" ]
[elsif exp="f.glasses==22" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/sxx-c2.png" ]
[elsif exp="f.glasses==23" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/sxx-c3.png" ]
[elsif exp="f.glasses==24" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/sxx-c4.png" ]
[elsif exp="f.glasses==25" ]
[chara_mod name="e-glasses" time="0" storage="chara/glasses/sxx-c5.png" ]
[endif]
[chara_mod  name="z-a"  time="0"  storage="chara/25/00.png" ]

[bg  time="1"  method="crossfade"  storage="sxx-1-.jpg" ]
[chara_mod  name="se"  time="0"  storage="chara/se/sxx-1.png" ]
[chara_mod  name="tx"  time="0"  storage="chara/text/00.png" ]
[chara_mod  name="ef"  time="0"  storage="chara/effect/00.png" ]
[chara_mod  name="x"  time="0"  storage="chara/x-ray/00.png" ]
[chara_show  name="e-ring"  time="0"  wait="true"  left="0.1" ]
[chara_show  name="e-head"  time="0"  wait="true"  left="0.1" ]
[chara_show  name="e-glasses"  time="0"  wait="true"  left="0.1" ]
[chara_show  name="z-a"  time="0"  wait="true"  left="0.1" ]
[show_effect]

#
（シルヴィの淫猥な懇願にたまらなくなり、[r]
彼女の服を引き剥がしベッドに押し倒す。[p]
#シルヴィ
あぁ…[name]に犯していただけるんですね…♡[p]
ありがとうございます♡ありがとうございます♡[p]
#
（息を荒くし挿入を待ちわびているシルヴィの中に一気に侵入する。[p]
[bg  time="1"  method="crossfade"  storage="sxx-2-.jpg" ]
[chara_mod  name="se"  time="0"  storage="chara/se/sxx-2.png" ]
[chara_mod  name="tx"  time="0"  storage="chara/text/sxx-2.png" ]
[chara_mod  name="ef"  time="0"  storage="chara/effect/sxx-2.png" ]
[chara_mod  name="x"  time="0"  storage="chara/x-ray/sxx-2.png" ]

[playse   storage="s-wet1.ogg"  clear="true"  ]

#シルヴィ
はぁ…ふぅ…っ♡！♡[p]
#
（シルヴィの肉襞は熱く煮えたぎり、侵入していくペニスに吸い付くように絡む。[p]

#シルヴィ
あ…ぁ…♡♡♡[name]の…♡！♡♡[p]
[name]のが♡入って…♡♡♡[p]

[bg  time="1"  method="crossfade"  storage="sxx-3-.jpg" ]
[chara_mod  name="se"  time="0"  storage="chara/se/sxx-3.png" ]
[chara_mod  name="tx"  time="0"  storage="chara/text/sxx-3.png" ]
[chara_mod  name="ef"  time="0"  storage="chara/effect/sxx-3.png" ]
[chara_mod  name="x"  time="0"  storage="chara/x-ray/sxx-3.png" ]

#シルヴィ
ふっ♡んぅ…っ！！♡！♡♡[p]
#
（まだ動いていないにもかかわらずシルヴィの体がビクリと震え、[r]
膣が不規則にペニスを締め付けた。[p]
（挿入だけで絶頂してしまったらしい。[p]


[bg  time="1"  method="crossfade"  storage="sxx-4-.jpg" ]
[chara_mod  name="se"  time="0"  storage="chara/se/sxx-4.png" ]
[chara_mod  name="tx"  time="0"  storage="chara/text/00.png" ]
[chara_mod  name="ef"  time="0"  storage="chara/effect/sxx-4.png" ]
[chara_mod  name="x"  time="0"  storage="chara/x-ray/sxx-4.png" ]

はっ♡…ひぅっ…！♡[p]
ご…ごめん…なさい…♡[lr]
久しぶりで…♡体が…おかしくって…♡[p]
[bg  time="1"  method="crossfade"  storage="sxx-5.jpg"  ]
#シルヴィ
でも♡まだ…大丈夫ですから…♡[lr]
どうか、続けて…ください…♡♡[p]

#
（余韻に震えながらも行為の継続を望むシルヴィの淫猥さに心揺さぶられ[r]
たまらず腰を動かす[p]

[bg  time="1"  method="crossfade"  storage="sxx-6.jpg" ]
[chara_mod  name="se"  time="0"  storage="chara/se/sxx-6.png" ]
[chara_mod  name="tx"  time="0"  storage="chara/text/sxx-6.png" ]
[chara_mod  name="ef"  time="0"  storage="chara/effect/sxx-6.png" ]
[chara_mod  name="x"  time="0"  storage="chara/x-ray/sxx-6.png" ]
[playse  loop="true"  storage="l-wet2.ogg"  clear="true"  ]

#シルヴィ
あ゛〜っ♡♡あ゛〜っ♡！♡♡[p]
#
（絶頂直後で痙攣も収まりきっていない膣を激しく掻き分け、[r]
子宮を小突くとシルヴィは甘い声を漏らした[p]

[bg  time="1"  method="crossfade"  storage="sxx-7.jpg"  ]

#シルヴィ
これ…！♡これが欲しくて…♡たまらなかったんです…！♡！♡♡[p]

[bg  time="1"  method="crossfade"  storage="sxx-8.jpg"  ]
#シルヴィ
イイ゛っ゛♡！♡♡気持ちイイ゛♡！♡♡[r]
[name]…♡！♡♡[p]
#
（腰を打ち付けるたびに汗と愛液が弾けびちゃびちゃと卑猥な水音を立てる。[p]
[bg  time="1"  method="crossfade"  storage="sxx-9.jpg"  ]
#シルヴィ
もっと…♡もっと…♡♡かき回して…♡！♡♡[p]
#
（シルヴィの膣はひくひくと動きペニスに刺激を送り続けている。[p]
（先ほどの絶頂の余韻がまだ冷めきっていないようだ。[p]


[bg  time="1"  method="crossfade"  storage="sxx-10.jpg"  ]
#シルヴィ
あぁ…っ♡もう来るっ！♡♡大きいの来…ちゃう！♡！♡♡[p]

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
[eval exp="f.cum=f.cum+1" ]
[bg  time="1"  method="crossfade"  storage="sxx-11a.jpg" ]
[chara_mod  name="se"  time="0"  storage="chara/se/sxx-11a.png" ]
[chara_mod  name="tx"  time="0"  storage="chara/text/sxx-11.png" ]
[chara_mod  name="ef"  time="0"  storage="chara/effect/sxx-11.png" ]
[chara_mod  name="x"  time="0"  storage="chara/x-ray/sxx-11.png" ]
[playse  storage="fin1.ogg"  clear="true"  ]

イっ…♡イ゛グっ…！！！♡！♡♡！[p]
#
（シルヴィが絶頂に震え歯をガチンと鳴らすと同時に膣がひときわ強く締まり[r]
たまらずこちらも腰を打ち付け精液をぶちまけた。[p]
[bg  time="1"  method="crossfade"  storage="sxx-12a.jpg" ]
[chara_mod  name="se"  time="0"  storage="chara/se/sxx-12.png" ]
[chara_mod  name="tx"  time="0"  storage="chara/text/sxx-12.png" ]
[chara_mod  name="ef"  time="0"  storage="chara/effect/sxx-12.png" ]
[chara_mod  name="x"  time="0"  storage="chara/x-ray/sxx-12.png" ]

はぁ゛〜…♡♡あ゛〜…♡！♡♡[p]

#
（幸せそうな表情のシルヴィを見ていると[r]
イチモツは縮むどころかさらに固さを増していく…。[p]
（…しばらくぶりの興奮は一度では収まりそうにない。[p]
[bg  time="1"  method="crossfade"  storage="sxx-13.jpg"  ]
#シルヴィ
も…もしかし…て、まだ…続け…るんですか？♡[r]
私、おか…しくなっちゃいそう…。[p]
でも、続けて…♡続けてください…♡♡[p]

[bg  time="1"  method="crossfade"  storage="sxx-14.jpg" ]
[chara_mod  name="se"  time="0"  storage="chara/se/sxx-14.png" ]
[chara_mod  name="tx"  time="0"  storage="chara/text/sxx-14.png" ]
[chara_mod  name="ef"  time="0"  storage="chara/effect/sxx-14.png" ]
[chara_mod  name="x"  time="0"  storage="chara/x-ray/sxx-14.png" ]
[playse  loop="true"  storage="l-wet2.ogg"  clear="true"  ]

あ゛〜っ♡♡あ゛〜っ♡！♡♡[p]
[black]
結局それから１度では収まらず、しばらくシルヴィとまぐわい続けてしまった。[p]

[jump  storage=""  target="*end" ]

*out
[cm]
[cancelskip]
[eval exp="f.kake=f.kake+1" ]
[bg  time="1"  method="crossfade"  storage="sxx-11b.jpg" ]
[chara_mod  name="se"  time="0"  storage="chara/se/sxx-11b.png" ]
[chara_mod  name="x"  time="0"  storage="chara/x-ray/00.png" ]
[chara_mod  name="z-a"  time="0"  storage="chara/25/sxx-1.png" ]
[playse    storage="squi.ogg"  clear="true"  ]
イっ…♡イ゛グっ…！！！♡！♡♡！[p]
#
（シルヴィが絶頂に震え歯をガチンと鳴らすと同時に膣がひときわ強く締まり[r]
思わず腰を引きシルヴィの体に精液をぶちまけた。[p]

[bg  time="1"  method="crossfade"  storage="sxx-12b.jpg" ]
[chara_mod  name="se"  time="0"  storage="chara/se/sxx-12.png" ]
[chara_mod  name="tx"  time="0"  storage="chara/text/sxx-12.png" ]
[chara_mod  name="ef"  time="0"  storage="chara/effect/sxx-12.png" ]
[chara_mod  name="z-a"  time="0"  storage="chara/25/sxx-2.png" ]
#
（幸せそうな表情のシルヴィを見ていると[r]
イチモツは縮むどころかさらに固さを増していく…。[p]
（…しばらくぶりの興奮は一度では収まりそうにない。[p]

[bg  time="1"  method="crossfade"  storage="sxx-13.jpg" ]
[playse   storage="s-wet1.ogg"  clear="true"  ]
（再びシルヴィの膣にペニスを沈める。[p]
#シルヴィ
も…もしかし…て、まだ…続け…るんですか？♡[r]
私、おか…しくなっちゃいそう…。[p]
でも、続けて…♡続けてください…♡♡[p]

[bg  time="1"  method="crossfade"  storage="sxx-14.jpg" ]
[chara_mod  name="se"  time="0"  storage="chara/se/sxx-14.png" ]
[chara_mod  name="tx"  time="0"  storage="chara/text/sxx-14.png" ]
[chara_mod  name="ef"  time="0"  storage="chara/effect/sxx-14.png" ]
[chara_mod  name="x"  time="0"  storage="chara/x-ray/sxx-6.png" ]
[playse  loop="true"  storage="l-wet2.ogg"  clear="true"  ]
あ゛〜っ♡♡あ゛〜っ♡！♡♡[p]
[black]
結局それから１度では収まらず、しばらくシルヴィとまぐわい続けてしまった。[p]

[jump  storage=""  target="*end" ]


*end
[black]
[hide_skip]
[eval exp="f.sex=f.sex+2" ]
[eval exp="f.h_v=f.h_v+10" ]
[eval exp="f.lust=f.lust+10" ]
[eval exp="f.love=f.love+13" ]
[eval exp="f.heavn=f.heavn+5" ]
[eval exp="f.day=f.day+1" ]
[eval exp="f.act='sex'" ]
[eval exp="f.out=0" ]
[eval exp="f.m_xx=1" ]
[fadeoutbgm time=500]
[cancelskip]
…[p]
[stopse ]
[jump  storage="after_action.ks"  target="*return_bace" ]


[_tb_end_tyrano_code]

