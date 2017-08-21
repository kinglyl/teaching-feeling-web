[_tb_system_call storage=system/_H_before.ks]

[tb_start_tyrano_code]


*bed
[cm  ]
[fadeoutbgm  time=500]
[eval exp="f.miyage='non'" ]
[eval exp="f.work_c=0" ]

[if  exp="f.sex=='yet'" ]
[show_skip]
[black]
[set_stand]
[bg  time="1"  method="crossfade"  storage="bg-room.jpg" ]
[playbgm  loop="true"  storage="Ivory_Fiber.ogg" ]
[f_t]
…[p]
[show_stand]
#シルヴィ
…[name]？[p]
#
シルヴィにそっとキスをする…。[p]
#シルヴィ
…ん[p]
[jump  storage="event5.ks"  target="*kiss" ]
[endif]

[fadeoutbgm  time=500]
[cancelskip]
[show_skip]
[black]
[set_stand]
#
…[p]
[f_p]
[bg  time="1"  method="crossfade"  storage="bg-room.jpg"  ]
[playbgm  loop="true"  storage="Magenta_Touch.ogg"  ]

[if exp="f.lust<=10" ]
[jump  storage=""  target="*sex" ]
[endif]

[button  storage=""  target="*sex"  graphic="ch/sex.png"    x="0"  y="200" ]
[button  storage=""  target="*mouth"  graphic="ch/mouth.png"   x="0"  y="300" ]
[if exp="f.lust>=400 && f.self>=1 && f.dress==5 || f.lust>=400 && f.self>=1 && f.dress==6 " ]
[button  storage=""  target="*self"  graphic="ch/self.png"    x="0"  y="400" ]
[endif]
[s]




*sex
[cm]
[cancelskip]
[if exp="f.drugz==0 && f.drugx==0" ]
[jump  storage=""  target="*pure" ]
[elsif exp="f.lust<=35" ]
[jump  storage=""  target="*pure" ]
[elsif exp="f.drugx==0 && f.lust<=35" ]
[jump  storage=""  target="*pure" ]
[endif]

[if exp="f.drugx>=1 && f.lust>=100" ]
[button  storage=""  target="*xxx"  graphic="ch/use-x.png"    x="0"  y="160" hint="シルヴィの絶頂上限がなくなります" ]
[endif]
[if exp="f.drugz>=1 && f.lust>=35" ]
[button  storage=""  target="*zzz"  graphic="ch/use-z.png"   x="0"  y="260" hint="射精上限がなくなります" ]
[endif]
[if exp="f.drugz>=1 && f.drugx>=1 && f.lust>=100" ]
[button  storage=""  target="*zxzx"  graphic="ch/use-zx.png"   x="0"  y="360"  ]
[endif]
[button  storage=""  target="*pure"  graphic="ch/nothing.png"   x="0"  y="460"  ]
[s]

*xxx
[cm]
[cancelskip]
[if exp="f.drug_use=='non'" ]
[eval  exp="f.drug_use=1" ]
[jump  storage=""  target="*first_drug" ]
[endif]
[eval  exp="f.drugx=f.drugx-1" ]
[eval  exp="f.drug_s=1" ]
[jump  storage=""  target="*pure" ]

*zzz
[cm]
[cancelskip]
[eval  exp="f.drugz=f.drugz-1" ]
[eval  exp="f.drug_y=1" ]
[jump  storage=""  target="*pure" ]

*zxzx
[cm]
[cancelskip]
[if exp="f.drug_use=='non'" ]
[eval  exp="f.drug_use=1" ]
[eval  exp="f.drugx=f.drugx-1" ]
[eval  exp="f.drug_s=1" ]
[eval  exp="f.drugz=f.drugz-1" ]
[eval  exp="f.drug_y=1" ]
[jump  storage=""  target="*first_drug" ]
[endif]

[eval  exp="f.drugx=f.drugx-1" ]
[eval  exp="f.drug_s=1" ]
[eval  exp="f.drugz=f.drugz-1" ]
[eval  exp="f.drug_y=1" ]
[jump  storage=""  target="*pure" ]


*pure
[cm]
[cancelskip]
[show_stand]
#シルヴィ
[if exp="f.lust<=40" ]
[f_tp]
…するんですね。[p]
[f_clp]
はい、わかりました。[p]
[elsif exp="f.lust<=100" ]
[f_tp]
抱いてくださるんですか？[p]
[f_ssp]
はい、喜んで…♡[p]
[else]
[f_tp]
抱いてくださるんですか？[p]
[f_ctp]
もう、待ちきれません。[lr]
早く…[p]
[endif]
[black]
#
（シルヴィの服を脱がせベッドに横たえた…。[p]
[cancelskip]
[jump  storage="H_ex.ks"  target="*H_ex" ]




*first_drug
[cm]
[cancelskip]
[f_t]
[show_stand]
#シルヴィ
これは…なんですか？[p]
[f_tp]
…気持ちよくなれるお薬？[p]
…わかりました、飲んでみます。[p]
[f_stp]
[name]が用意してくださったんですから、悪いものなはずがないですよね。[p]
#
（シルヴィの服を脱がせベッドに横たえた…。[p]
[cancelskip]
[black]
[jump  storage="H_ex.ks"  target="*H_ex" ]

*mouth
[cm]
[cancelskip]
[show_stand]
#シルヴィ
[eval exp="f.blow=f.blow+1" ]

[if exp="f.m_mouth==0" ]
[eval  exp="f.m_mouth=1" ]
[f_tp]
お口で…ですか？[p]
…わかりました。[p]
上手にできるかわからないですけど、やってみます。[p]
[jump  storage="H_mouth.ks"  target="*a" ]
[elsif exp="f.lust>=100 && f.h_m>=100" ]
[f_stp]
はい…♡[p]
お口でさせていただきます♡[p]
[jump  storage="H_mouth.ks"  target="*c" ]
[elsif exp="f.lust>=40 && f.h_m>=50" ]
[f_stp]
お口でしますか？[p]
わかりました。一生懸命ご奉仕します♡[p]
[jump  storage="H_mouth.ks"  target="*b" ]
[else]
[f_tp]
お口でですか？[p]
はい…頑張ります。[p]
[jump  storage="H_mouth.ks"  target="*a" ]
[endif]



*mouth_after
[cm]
[cancelskip]
[if  exp="f.lust<=80" ]
[jump  storage=""  target="*end" ]
[else]
[button  storage=""  target="*conti"  graphic="ch/sex.png"    x="0"  y="200" ]
[button  storage=""  target="*end"  graphic="ch/rest.png"   x="0"  y="350" ]
[s]
[endif]
[cancelskip]
[eval exp="f.day=f.day+1" ]
[jump  storage="after_action.ks"  target="*return_bace" ]

*conti
[cm]
[cancelskip]
[black]
#
（１度の射精では収まりきらずシルヴィをベッドに押し倒した[p]
[cancelskip]
[jump  storage="H_ex.ks"  target="*H_ex" ]

*end
[cm]
[cancelskip]
[black]
[if exp="f.sexless_c==3" ]
[jump  storage=""  target="*please" ]
[endif]
#
（満足したので今日はもう休むことにしよう…。[p]
[fadeoutbgm  time=500]
[cancelskip]
…[p]
[eval exp="f.sexless=f.sexless+2" ]
[eval exp="f.out=0" ]
[eval exp="f.act='nonp'" ]
[eval exp="f.day=f.day+1" ]
[jump  storage="after_action.ks"  target="*return_bace" ]


*please
[cm]
[bg  time="1"  method="crossfade"  storage="bg-room.jpg" ]
[set_stand]
[f_ctp]
[show_stand]

#シルヴィ
…今日は終わりですか？[p]
[if exp="f.lust>=1000" ]
[name]…私にもしてください…。[lr]
私も[name]にして欲しい…。[p]
[elsif exp="f.lust>=100" ]
[name]…その…。わ、私も…。[p]
[else]
その…。[p]
[endif]

[button  storage=""  target="*ok"  graphic="ch/sex.png"    x="0"  y="200" ]
[button  storage=""  target="*endisend"  graphic="ch/rest.png"   x="0"  y="350" ]
[s]


*ok
[cm]
[cancelskip]
[black]
#
（シルヴィの様子に抑えられなくなり彼女を押し倒した[p]
#シルヴィ
…♡[p]
[cancelskip]
[jump  storage="H_ex.ks"  target="*H_ex" ]

*endisend
[cm]
[f_clp]
[if exp="f.lust>=1000" ]
うぅ…。わかり…ました…。[p]
[elsif exp="f.lust>=100" ]
あ、ごめんなさい…。[p]
[else]
…。[p]
[endif]

[black]
（…[p]
[fadeoutbgm  time=500]
[cancelskip]
…[p]
[eval exp="f.sexless=f.sexless+2" ]
[eval exp="f.out=0" ]
[eval exp="f.act='nonp'" ]
[jump  storage="after_action.ks"  target="*return_bace" ]





*self
[cm]
[f_tp]
[show_stand]
#シルヴィ
[if exp="f.self<=3" ]
え、「自分で」…ですか？[lr]
「あの時」みたい…に？[p]
[f_clp]
…。[p]
[f_tp]
[name]が見たいなら、わかりました…。[p]
シャツ、このままお借りしますね。[p]
[f_ccltp]
これがないと、その…「最後」まで…できないんで。[p]
[jump  storage="H_self.ks"  target="*H_self" ]

[elsif exp="f.self<=30" ]
自分で…ですか？[p]
…はい、わかりました。[lr]
[name]が、見たいなら…。[p]
[jump  storage="H_self.ks"  target="*H_self" ]
[else]
自分で…ですか？[p]
はい、わかりました。[p]
[f_cltp]
…しっかり、見ていてくださいね。[p]
[jump  storage="H_self.ks"  target="*H_self" ]
[endif]

*self_after
[cm]
[cancelskip]
[button  storage=""  target="*conti_s"  graphic="ch/sex.png"    x="0"  y="200" ]
[button  storage=""  target="*end_s"  graphic="ch/rest.png"   x="0"  y="350" ]
[s]

*end_s
[cm]
[cancelskip]
[black]
[if exp="f.sexless_c==3" ]
[jump  storage=""  target="*please" ]
[endif]
#
（満足したので今日はもう休むことにしよう…。[p]
[fadeoutbgm  time=500]
[cancelskip]
…[p]
[eval exp="f.sexless=f.sexless-1" ]
[eval exp="f.out=0" ]
[eval exp="f.act='nonp'" ]
[eval exp="f.day=f.day+1" ]
[jump  storage="after_action.ks"  target="*return_bace" ]

*conti_s
[cm]
[cancelskip]
[black]
#
（シルヴィの淫猥な行為を目の前に我慢が出来なくなり[r]
彼女をベッドに押し倒した[p]
[cancelskip]
[jump  storage="H_ex.ks"  target="*H_ex" ]


[eval exp="f.lust=f.lust+2" ]
[eval exp="f.love=f.love+3" ]
[eval  exp="f.h_m=f.h_m+1" ]
[eval exp="f.day=f.day+1" ]
[eval exp="f.act='sex'" ]
[eval exp="f.out=0" ]
[fadeoutbgm time=500]
[cancelskip]
…[p]
[jump  storage="after_action.ks"  target="*return_bace" ]
[_tb_end_tyrano_code]

