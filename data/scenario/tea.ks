[_tb_system_call storage=system/_tea.ks]

[tb_start_tyrano_code]

*tea
[cm]
[show_skip]
#
飯後來喝一杯茶吧[p]

[if exp="f.flower<=0 && f.flower_b<=0 || f.lust<=15" ]
[jump  storage=""  target="*normal" ]
[endif]

要放入什麽香料呢？[p]
所持數-粉色的花（[emb exp="f.flower"]、藍色的花（[emb exp="f.flower_b"]
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
放入多少？[p]
所持數-粉色的花（[emb exp="f.flower"]

[button  storage=""  target="*little-p"  graphic="ch/little.png"  x="0"  y="180" hint="粉色的花消耗一個" ]
[if exp="f.flower>=3" ]
[button  storage=""  target="*mid-p"  graphic="ch/middle.png"  x="0"  y="300"  hint="粉色的花消耗三個" ]
[endif]
[if exp="f.flower>=5" ]
[button  storage=""  target="*lot-p"  graphic="ch/lot.png"  x="0"  y="420"  hint="粉色的花消耗五個" ]
[endif]
[s]

*little-p
[cm]
#希爾薇
[s_t]
是要沏茶嗎？[p]
如果您說的話我就去準備了…[p]
[s_st]
那謝謝您了[p]
那麼一起吧[p]
[s_cl]
…。[p]

[s_st]
是微微甜香味的茶啊[p]
非常美味[p]
[s_s]
[eval exp="f.flower=f.flower-1" ]
[eval exp="f.lust=f.lust+5" ]
[eval exp="f.act=f.act+1" ]
[jump  storage="setting.ks"  target="*return_menu" ]


*mid-p
[cm]
[s_t]
是要沏茶嗎？[p]
如果您說的話我就去準備了…[p]
[s_st]
那謝謝您了[p]
那麼一起吧[p]
[s_cl]
…。[p]

[s_st]
甘甜的香味，非常的美味[p]
[s_stp]
總覺得身體暖和起來了[p]
[s_sp]

[eval exp="f.flower=f.flower-3" ]
[eval exp="f.lust=f.lust+20" ]
[eval exp="f.act=f.act+1" ]
[jump  storage="setting.ks"  target="*return_menu" ]

*lot-p
[cm]
[s_t]
是要沏茶嗎？[p]
如果您說的話我就去準備了…[p]
[s_st]
那謝謝您了[p]
那麼一起吧[p]
[s_cl]
…。[p]

[s_stp]
又甜又好喝[p]
[s_tp]
喝了好多呢[r]感覺稍微有點熱起來了呢[p]
屋子裏不是很熱吧？[p]
[s_p]

[eval exp="f.flower=f.flower-5" ]
[eval exp="f.lust=f.lust+35" ]
[eval exp="f.act=f.act+1" ]
[jump  storage="setting.ks"  target="*return_menu" ]


*tea-b
[cm]
要放入什麽香料呢？[p]
所持数-藍色的花（[emb exp="f.flower_b"]

[button  storage=""  target="*little-b"  graphic="ch/little.png"  x="0"  y="180" hint="藍色的花消耗一個" ]
[if exp="f.flower_b>=3" ]
[button  storage=""  target="*mid-b"  graphic="ch/middle.png"  x="0"  y="300"  hint="藍色的花消耗三個" ]
[endif]
[if exp="f.flower_b>=5" ]
[button  storage=""  target="*lot-b"  graphic="ch/lot.png"  x="0"  y="420"  hint="藍色的花消耗五個" ]
[endif]
[s]

*little-b
[cm]
#希爾薇
[s_t]
是要沏茶嗎？[p]
如果您說的話我就去準備了…[p]
[s_st]
那謝謝您了[p]
那麼一起吧[p]
[s_cl]
…。[p]

[s_st]
這樣的茶水[p]
非常好喝[p]
[s_s]

[eval exp="f.flower_b=f.flower_b-1" ]
[eval exp="f.lust=f.lust-5" ]
[eval exp="f.act=f.act+1" ]
[jump  storage="setting.ks"  target="*return_menu" ]


*mid-b
[cm]
[s_t]
是要沏茶嗎？[p]
如果您說的話我就去準備了…[p]
[s_st]
那謝謝您了[p]
那麼一起吧[p]
[s_cl]
…。[p]

[s_st]
茶的味道好香啊[p]
[s_st]
我很平靜[p]
[s_s]

[eval exp="f.flower_b=f.flower_b-3" ]
[eval exp="f.lust=f.lust-20" ]
[eval exp="f.act=f.act+1" ]
[jump  storage="setting.ks"  target="*return_menu" ]

*lot-b
[cm]
[s_t]
是要沏茶嗎？[p]
如果您說的話我就去準備了…[p]
[s_st]
那謝謝您了[p]
那麼一起吧[p]
[s_cl]
…。[p]

[s_st]
增強薄荷香味的茶[lr]
但是我不討厭[p]
[s_clt]
呼啊~~[p]
[s_ctp]
啊，對不起[r]
如果暖和了的話，總覺得點發困了…[p]
[s_s]

[eval exp="f.flower_b=f.flower_b-5" ]
[eval exp="f.lust=f.lust-35" ]
[eval exp="f.act=f.act+1" ]
[jump  storage="setting.ks"  target="*return_menu" ]




*normal
[cm  ]
#希爾薇
[s_st]
茶嗎？？[lr]
[s_sst]
是的，我準備的[p]
[name]請等我一下[p]
[black]
#
…[p]
過了一會兒，希爾薇拿著兩人份的茶具從廚房回來了[p]
[set_sit]
[s_st]
[show_sit]
#希爾薇
讓您久等了[lr]

[eval exp="f.love=f.love+1" ]
[eval exp="f.lust=f.lust-1" ]

[if exp="f.miyage=='クッキー'" ]
剛才[ name ]買來的[ miyage ]也一起吃吧[p]
[s_cl]
…。[p]
[jump  storage=""  target="*cookie" ]
[elsif exp="f.miyage=='ラスク'" ]
剛才[ name ]買來的[ miyage ]也一起吃吧[p]
[s_cl]
…。[p]
[jump  storage=""  target="*rask" ]
[elsif exp="f.miyage=='ショートケーキ'" ]
剛才[ name ]買來的[ miyage ]也一起吃吧[p]
[s_cl]
…。[p]
[jump  storage=""  target="*cake" ]
[elsif exp="f.miyage=='ブラウニー'" ]
剛才[ name ]買來的[ miyage ]也一起吃吧[p]
[s_cl]
…。[p]
[jump  storage=""  target="*blow" ]
[elsif exp="f.miyage=='プリン'" ]
剛才[ name ]買來的[ miyage ]也一起吃吧[p]
[s_cl]
…。[p]
[jump  storage=""  target="*pding" ]
[elsif exp="f.miyage=='フルーツタルト'" ]
剛才[ name ]買來的[ miyage ]也一起吃吧[p]
[s_cl]
…。[p]
[jump  storage=""  target="*tarte" ]
[endif]

那就好[p]
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
當初我知道要成為[name]的東西的時候還有些不安呢[p]
[s_sst]
但是，現在我感到的全都是溫暖，安心，幸福和快樂[p]
[s_s]
[jump  storage="after_action.ks"  target="*after_talk" ]


*tea2
[s_sclt]
現在很安靜呢…[p]
[s_sst]
只是茶的話，[name]也來壹起喝吧[p]
[s_s]
[jump  storage="after_action.ks"  target="*after_talk" ]

*tea3
[s_clt]
呼呼…。[p]
[s_st]
只是和最喜歡的人壹起喝茶[r]
就感覺到了溫暖和怯意呢[p]
[s_s]
[jump  storage="after_action.ks"  target="*after_talk" ]

*tea4
[s_ct]
啊嗚…[p]
[s_t]
啊，沒關系的。只是喝的有點快[p]
[s_st]
請[name]也要註意哦[p]
[s_clt]
呼ー。。 呼ー…[p]
[s_s]
[jump  storage="after_action.ks"  target="*after_talk" ]

*tea5
[s_t]
嗯，感覺有點淡呢…[p]
[s_ct]
很抱歉。[r]茶葉的量還有熱水的溫度都沒有掌握好[p]
[s_t]
美味。。嗎？[p]
那樣就好[p]
[s_st]
下次我壹定會沖泡得更美味的[p]
[s_s]
[jump  storage="after_action.ks"  target="*after_talk" ]

*tea6
[s_t]
要稍微放些糖嗎？[p]
雖然直接喝也不錯，但是感覺稍微甜壹些更好呢…[p]
[s_cl]
…。[p]
[s_sst]
呼呼…好甜。。♡[p]
[s_s]
[jump  storage="after_action.ks"  target="*after_talk" ]

*tea7
[s_st]
雖然茶很美味，但是感覺還是配壹些餅乾更好呢[p]
[s_sclt]
我壹直在想，我什麼時候能做出美味的甜點[r]
來和[name]壹起分享呢[p]
[s_st]
開玩笑的，那種事不可能吧？[p]
[s_s]
[jump  storage="after_action.ks"  target="*after_talk" ]

*tea8
[s_clt]
呼…[p]
[s_st]
這洋安穩的時光，在以前是完全不敢想象的[p]
[s_clt]
現在的我實在太幸福了，偶爾會流出眼淚來☻…[p]
[s_s]
[jump  storage="after_action.ks"  target="*after_talk" ]







*cookie
[cm ]
[s_st]
剛剛烤好的曲奇餅配茶挺合適的[lr]
[s_sclt]
好吃…~[p]
[s_s]
…。[p]
[s_ct]
啊，對不起…[lr]
全吃了沒有分給[name]您[p]
[s_c]
[jump  storage=""  target="*ate" ]

*rask
[cm ]
[s_sclt]
嗯~~~非常鬆脆[p]
[s_st]
普通的餅乾配茶也是非常好的點心[p]
[s_t]
這樣的我也會做[p]
[s_]
[jump  storage=""  target="*ate" ]

*cake
[cm ]
[s_cl]
啊姆[p]
[s_s]
呵呵…好吃[p]
[s_stp]
在店裡吃的氣氛也很好[r]
但是我喜歡和[name]兩個人一起靜靜的吃[p]
[s_sp]
[jump  storage=""  target="*ate" ]

*blow
[cm ]
[s_sclt]
啊姆~~很好吃，很好吃[p]
[s_st]
茶的香味很好地配合了苦澀的巧克力的香味[p]
[s_sclt]
比蛋糕稍微硬壹些讓人覺得喝些茶更好呢[p]
[s_scl]
[jump  storage=""  target="*ate" ]

*pding
[cm ]
[s_sclt]
嗯~~~~很甜[[p]
[s_st]
布丁和紅茶都是甜食的呢[lr]
[s_sclt]
真好吃[p]
[s_st]
不吃的話待會兒可就沒有了哦[p]
[s_s]
[jump  storage=""  target="*ate" ]


*tarte
[cm ]
[s_sclt]
真好吃[p]
[s_st]
能吃到各種各樣的水果呢[p]
平常要是買這麽多的水果的話在放壞了之前可是吃不完的呢[lr]
做成甜點的水果跟普通的水果比起來感覺味道不太壹樣呢[p]
[s_s]
[jump  storage=""  target="*ate" ]


*ate
[cm ]
[eval exp="f.miyage='non'" ]
[eval exp="f.love=f.love+1" ]
[jump  storage="after_action.ks"  target="*after_talk" ]

[_tb_end_tyrano_code]
