[_tb_system_call storage=system/_after_action.ks]

[tb_start_tyrano_code]

*return_bace
[cm ]
[cancelskip]
[if exp="f.step==1"]
[jump  storage="step1.ks"  target="*show_bace"  ]
[elsif exp="f.step==2"]
[jump  storage="step2.ks"  target="*show_bace"  ]
[elsif exp="f.step==3"]
[jump  storage="step3.ks"  target="*show_bace"  ]
[elsif exp="f.step==4"]
[jump  storage="step4.ks"  target="*show_bace"  ]
[elsif exp="f.step==5"]
[jump  storage="step5.ks"  target="*show_bace"  ]
[elsif exp="f.step==6"]
[jump  storage="step6.ks"  target="*show_bace"  ]
[elsif exp="f.step==7"]
[jump  storage="step7.ks"  target="*show_bace"  ]
[else]
[endif]


*return_menu
[cm ]
[cancelskip]
[if exp="f.step==1"]
[jump  storage="step1.ks"  target="*before_menu"  ]
[elsif exp="f.step==2"]
[jump  storage="step2.ks"  target="*before_menu"  ]
[elsif exp="f.step==3"]
[jump  storage="step3.ks"  target="*before_menu"  ]
[elsif exp="f.step==4"]
[jump  storage="step4.ks"  target="*before_menu"  ]
[elsif exp="f.step==5"]
[jump  storage="step5.ks"  target="*before_menu"  ]
[elsif exp="f.step==6"]
[jump  storage="step6.ks"  target="*before_menu"  ]
[elsif exp="f.step==7"]
[jump  storage="step7.ks"  target="*before_menu"  ]
[else]
[endif]


*after_nade
[cancelskip]
[eval exp="f.act=f.act+1"]
[eval exp="f.love=f.love+1"]

[if exp="f.step<6"]
[eval exp="f.nade=f.nade+1"]
[eval exp="f.feeling=f.feeling+10"]
[endif]
[if exp="f.act>=7" ]
[jump  storage=""  target="*stop_nade" ]
[endif]

[if exp="f.step>=6" ]
[jump  storage=""  target="*nade6" ]
[endif]

[button  storage=""  target="*nade_continue_"  graphic="ch/continue.png"    x="0"  y="250" ]
[button  storage=""  target="*stop_nade"  graphic="ch/stop.png"   x="0"  y="450" ]
[s]

*nade6
[cm ]
[if exp="f.nade_c==1" ]
[button  storage=""  target="*nade_continue_"  graphic="ch/continue.png"    x="0"  y="200" ]
[else]
[button  storage=""  target="*nade_continue"  graphic="ch/n-head.png"    x="0"  y="200" ]
[endif]

[if exp="f.nade_c==2" ]
[button  storage=""  target="*nade_continue2_"  graphic="ch/continue.png"    x="0"  y="300" ]
[elsif exp="f.love>=200" ]
[button  storage=""  target="*nade_continue2"  graphic="ch/n-hoho.png"    x="0"  y="300" ]
[endif]

[if exp="f.nade_c==3" ]
[button  storage=""  target="*nade_continue3_"  graphic="ch/continue.png"    x="0"  y="400" ]
[elsif exp="f.love>=500 && f.lust>=300" ]
[button  storage=""  target="*nade_continue3"  graphic="ch/n-mouth.png"    x="0"  y="400" ]
[endif]

[button  storage=""  target="*stop_nade"  graphic="ch/stop.png"   x="0"  y="500" ]
[s]


*nade_continue
[cm ]
[cancelskip]
#
（手撫摸著希爾薇柔軟的秀髮）[p]
*nade_continue_
[cm ]
[cancelskip]
[eval exp="f.nade_conti=1"]
[eval exp="f.nade_c=1"]
[chara_mod name="e-h" time="0" storage="chara/13/m-n-hand.png" ]
[jump  storage="action_lead.ks"  target="*nade"  ]



*nade_continue2
[cm ]
[cancelskip]
#
（手輕輕撫摸著希爾薇溫暖的臉頬）[p]
*nade_continue2_
[cm ]
[cancelskip]
[eval exp="f.nade_conti=1"]
[eval exp="f.nade_c=2"]
[chara_mod name="e-h" time="0" storage="chara/13/m-n-hand-.png" ]
[jump  storage="action_lead.ks"  target="*nade6b"  ]





*nade_continue3
[cm ]
[cancelskip]
[eval exp="f.nade_conti=1"]
[eval exp="f.nade_c=3"]
[set_nade]
[nh_n]
[n_3ccl]
[show_nade]
#希爾薇
恩…[p]
#
（希爾薇握著我的手吸吮著我的手指）[p]
[jump  storage="after_action.ks"  target="*after_nade" ]

*nade_continue3_
[cm ]
[cancelskip]
[eval exp="f.nade_conti=1"]
[eval exp="f.nade_c=3"]
[jump  storage="action_lead.ks"  target="*nade6c"  ]

*stop_nade
[cm ]
[hide_skip]
[cancelskip]
[eval exp="f.nade_c=0" ]

[freeimage layer=0]
[if exp="f.step==1"]
[jump  storage="step1.ks"  target="*show_bace"  ]
[elsif exp="f.step==2"]
[jump  storage="step2.ks"  target="*show_bace"  ]
[elsif exp="f.step==3"]
[jump  storage="step3.ks"  target="*show_bace"  ]
[elsif exp="f.step==4"]
[jump  storage="step4.ks"  target="*show_bace"  ]
[elsif exp="f.step==5"]
[jump  storage="step5.ks"  target="*show_bace"  ]
[elsif exp="f.step==6"]
[jump  storage="step6.ks"  target="*show_bace"  ]
[elsif exp="f.step==7"]
[jump  storage="step7.ks"  target="*show_bace"  ]
[else]
[endif]



*after_talk
[hide_skip]
[eval exp="f.act=f.act+1"]
[if exp="f.step==6"]
[eval exp="f.love=f.love+1" ]
[elsif exp="f.step>=4"]
[eval exp="f.love=f.love+1" ]
[eval exp="f.feeling=f.feeling+10"]
[eval exp="f.talk=f.talk+1"]
[else]
[eval exp="f.feeling=f.feeling+10"]
[eval exp="f.talk=f.talk+1"]
[endif]

[cancelskip]
[if exp="f.step==1"]
[jump  storage="step1.ks"  target="*before_menu"  ]
[elsif exp="f.step==2"]
[jump  storage="step2.ks"  target="*before_menu"  ]
[elsif exp="f.step==3"]
[jump  storage="step3.ks"  target="*before_menu"  ]
[elsif exp="f.step==4"]
[jump  storage="step4.ks"  target="*before_menu"  ]
[elsif exp="f.step==5"]
[jump  storage="step5.ks"  target="*before_menu"  ]
[elsif exp="f.step==6"]
[jump  storage="step6.ks"  target="*before_menu"  ]
[elsif exp="f.step==7"]
[jump  storage="step7.ks"  target="*before_menu"  ]
[else]
[endif]



*after_touch
[cm ]
[cancelskip]
[freeimage layer=0]
[wait time=10]
[eval exp="f.feeling=f.feeling+10"]
[eval exp="f.act=f.act+1"]
[if exp="f.step==1"]
[jump  storage="step1.ks"  target="*show_bace"  ]
[elsif exp="f.step==2"]
[jump  storage="step2.ks"  target="*show_bace"  ]
[elsif exp="f.step==3"]
[jump  storage="step3.ks"  target="*show_bace"  ]
[elsif exp="f.step==4"]
[jump  storage="step4.ks"  target="*show_bace"  ]
[elsif exp="f.step==5"]
[jump  storage="step5.ks"  target="*show_bace"  ]
[elsif exp="f.step==6"]
[jump  storage="step6.ks"  target="*show_bace"  ]
[elsif exp="f.step==7"]
[jump  storage="step7.ks"  target="*show_bace"  ]
[else]
[endif]


*after_town
[fadeoutbgm time=500]
[cancelskip]
[black]
[if exp="f.step==6"]
[eval exp="f.act=f.act+2"]
[eval exp="f.out=1"]
[else]
[eval exp="f.feeling=f.feeling+10"]
[eval exp="f.act=f.act+2"]
[eval exp="f.out=1"]
[endif]
#
…[p]
[playbgm  loop="true"  storage="Silver_Glass.ogg"  ]

[if exp="f.step==3"]
[jump  storage="step3.ks"  target="*show_bace"  ]
[elsif exp="f.step==4"]
[jump  storage="step4.ks"  target="*show_bace"  ]
[elsif exp="f.step==5"]
[jump  storage="step5.ks"  target="*show_bace"  ]
[elsif exp="f.step==6"]
[jump  storage="step6.ks"  target="*show_bace"  ]
[elsif exp="f.step==7"]
[jump  storage="step7.ks"  target="*show_bace"  ]
[else]
[endif]

*after_shop

[if exp="f.love>=300 && f.shop_c==0" ]
[eval exp="f.shop_c=1" ]
#
再繼續看看吧[l]
[free]
[set_lady]
[chara_show  name="man"  time="100"  wait="true" ]
[anim name="man" time="300" left="20" ]
[chara_mod  name="window"  time="1"  storage="chara/12/shop-win.png" ]
[chara_show  name="window"  time="1"  wait="true" left="613"  top="22" ]

[jump  storage="shop.ks"  target="*shop_dress"  ]
[elsif exp="f.love>=1000 && f.shop_c==1" ]
[eval exp="f.shop_c=2" ]
#
再繼續看看吧[l]
[free]
[set_lady]
[chara_show  name="man"  time="100"  wait="true" ]
[anim name="man" time="300" left="20" ]
[chara_mod  name="window"  time="1"  storage="chara/12/shop-win.png" ]
[chara_show  name="window"  time="1"  wait="true" left="613"  top="22" ]
[jump  storage="shop.ks"  target="*shop_dress"  ]

[elsif exp="f.love>=3000 && f.shop_c==2" ]
[eval exp="f.shop_c=3" ]
#
再繼續看看吧[l]
[free]
[set_lady]
[chara_show  name="man"  time="100"  wait="true" ]
[anim name="man" time="300" left="20" ]
[chara_mod  name="window"  time="1"  storage="chara/12/shop-win.png" ]
[chara_show  name="window"  time="1"  wait="true" left="613"  top="22" ]
[jump  storage="shop.ks"  target="*shop_dress"  ]
[endif]

[fadeoutbgm time=500]
[cancelskip]
[black]
[if exp="f.step==6"]
[eval exp="f.act=f.act+2"]
[eval exp="f.out=1"]
[else]
[eval exp="f.feeling=f.feeling+10"]
[eval exp="f.act=f.act+2"]
[eval exp="f.out=1"]
[endif]
#
…[p]
[playbgm  loop="true"  storage="Silver_Glass.ogg"  ]

[if exp="f.step==3"]
[jump  storage="step3.ks"  target="*show_bace"  ]
[elsif exp="f.step==4"]
[jump  storage="step4.ks"  target="*show_bace"  ]
[elsif exp="f.step==5"]
[jump  storage="step5.ks"  target="*show_bace"  ]
[elsif exp="f.step==6"]
[jump  storage="step6.ks"  target="*show_bace"  ]
[elsif exp="f.step==7"]
[jump  storage="step7.ks"  target="*show_bace"  ]
[else]
[endif]

[_tb_end_tyrano_code]
