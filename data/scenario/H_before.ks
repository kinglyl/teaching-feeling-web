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
#希爾薇
…[name]？[p]
#
（我靜靜的吻了希爾薇……）[p]
#希爾薇
……嗯[p]
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
[button  storage=""  target="*xxx"  graphic="ch/use-x.png"    x="0"  y="160" hint="增加希爾薇絕頂次數" ]
[endif]
[if exp="f.drugz>=1 && f.lust>=35" ]
[button  storage=""  target="*zzz"  graphic="ch/use-z.png"   x="0"  y="260" hint="增加射精次數" ]
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
#希爾薇
[if exp="f.lust<=40" ]
[f_tp]
……做呢[p]
[f_clp]
好的我知道了[p]
[elsif exp="f.lust<=100" ]
[f_tp]
可以抱我嗎？[p]
[f_ssp]
好的，我很願意……♡[p]
[else]
[f_tp]
可以抱我嗎？[p]
[f_ctp]
我已經等不及了[lr]
快……[p]
[endif]
[black]
#
（希爾薇把衣服脫掉躺在了床上）[p]
[cancelskip]
[jump  storage="H_ex.ks"  target="*H_ex" ]




*first_drug
[cm]
[cancelskip]
[f_t]
[show_stand]
#希爾薇
這是……什麽啊？[p]
[f_tp]
……能變舒服的藥？[p]
……好我馬上就飲用[p]
[f_stp]
既然是[name]準備的東西就應該沒問題的[p]
#
（希爾薇脫掉衣服躺在了床上）[p]
[cancelskip]
[black]
[jump  storage="H_ex.ks"  target="*H_ex" ]

*mouth
[cm]
[cancelskip]
[show_stand]
#希爾薇
[eval exp="f.blow=f.blow+1" ]

[if exp="f.m_mouth==0" ]
[eval  exp="f.m_mouth=1" ]
[f_tp]
用嘴……來嗎？[p]
……我知道了[p]
雖然我不知道我能不能做好，但是我會試著做的[p]
[jump  storage="H_mouth.ks"  target="*a" ]
[elsif exp="f.lust>=100 && f.h_m>=100" ]
[f_stp]
好的……♡[p]
就用嘴来做♡[p]
[jump  storage="H_mouth.ks"  target="*c" ]
[elsif exp="f.lust>=40 && f.h_m>=50" ]
[f_stp]
用嘴来做嗎？[p]
我明白了，我會盡最大努力為您服務的♡[p]
[jump  storage="H_mouth.ks"  target="*b" ]
[else]
[f_tp]
用嘴来做嗎？[p]
好的！我會努力的[p]
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
（壹次射精結束後我把她推到在床上）[p]
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
（今天已經滿足了，去休息吧……）[p]
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

#希爾薇
…今天就這樣結束了嗎？[p]
[if exp="f.lust>=1000" ]
[name]……我也想要……[lr]
我想要[name]的……[p]
[elsif exp="f.lust>=100" ]
[name]……那个……我，我也……[p]
[else]
那個……[p]
[endif]

[button  storage=""  target="*ok"  graphic="ch/sex.png"    x="0"  y="200" ]
[button  storage=""  target="*endisend"  graphic="ch/rest.png"   x="0"  y="350" ]
[s]


*ok
[cm]
[cancelskip]
[black]
#
（希爾薇的樣子讓我無法抑制的把她推倒在了床上）[p]
#希爾薇
…♡[p]
[cancelskip]
[jump  storage="H_ex.ks"  target="*H_ex" ]

*endisend
[cm]
[f_clp]
[if exp="f.lust>=1000" ]
嗚嗚……我明……白了……[p]
[elsif exp="f.lust>=100" ]
啊，對不起……[p]
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
#希爾薇
[if exp="f.self<=3" ]
嗯，”我自己“……嗎？[lr]
像”那個時候“一樣……嗎？[p]
[f_clp]
…[p]
[f_tp]
[name]想看的話，就明白了……[p]
襯衫，就這樣借用一下吧[p]
[f_ccltp]
沒有這個的話，那個……到「最後」就做不了[p]
[jump  storage="H_self.ks"  target="*H_self" ]

[elsif exp="f.self<=30" ]
自己……嗎？[p]
……是的，我明白了[lr]
[name]如果，想看的話……[p]
[jump  storage="H_self.ks"  target="*H_self" ]
[else]
自己……嗎？[p]
是的，我明白了[p]
[f_cltp]
……好好地，看著吧[p]
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
（今天已經滿足了，去休息吧……）[p]
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
（現在變得不能忍耐希爾薇的淫亂行為[r]
把她在床上推倒了）[p]
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

