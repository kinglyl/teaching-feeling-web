[_tb_system_call storage=system/_shop.ks]

[tb_start_tyrano_code]

*shop
[cm]
[fadeoutbgm time=500]
[black]
[if exp="f.shop==0" ]
[eval exp="f.shop=1" ]
[jump  storage="event3.ks"  target="*shop_first" ]
[endif]

[bought_count]
;[emb exp="f.bought_count" ]

[iscript]
f.lady=Math.floor(Math.random() * 3 + 1);
[endscript]

[playbgm  loop="true"  storage="Brilliant_Red.ogg" ]
[bg  time="1"  method="crossfade"  storage="bg-shop.jpg" ]
#
（來到了服裝店）[p]

[set_lady]
[chara_show  name="man"  time="100"  wait="true" ]

[aurel]
啊啦啊啦，歡迎光臨，請隨意挑選[p]

#
（要買些什麼呢？）[p]

[anim name="man" time="300" left="20" ]
[chara_mod  name="window"  time="1"  storage="chara/12/shop-win.png" ]
[chara_show  name="window"  time="1"  wait="true" left="613"  top="22" ]

*shop_dress
[cm]
[eval exp="f.ch_win=1" ]
[button  storage=""  target="*return_menu"  graphic="m/back.png"  width="104"  height="33"  x="1188"  y="563"  _clickable_img="" ]
[button  storage=""  target="*c_b1"  graphic="c/tite.png"  x="698"  y="180"  ]
[button  storage=""  target="*c_b2"  graphic="c/black.png"  x="912"  y="180"  ]
[button  storage=""  target="*c_b3"  graphic="c/magend.png"   x="968"  y="180"  ]

[if exp="f.step>3" ]
[button  storage=""  target="*c_b4"  graphic="c/red.png"   x="1024"  y="180"  ]
[button  storage=""  target="*c_b5"  graphic="c/green.png"   x="1082"  y="180"  ]
[endif]

[if exp="f.step>3" ]
[button  storage=""  target="*c_c1"  graphic="c/hira.png"  x="698"  y="230"  ]
[endif]

[if exp="f.c_c1==1" ]
[button  storage=""  target="*c_c2"  graphic="c/black.png"  x="890"  y="230"  ]
[button  storage=""  target="*c_c3"  graphic="c/green.png"    x="945"  y="230"  ]
[button  storage=""  target="*c_c4"  graphic="c/red.png"  x="999"  y="230"  ]
[button  storage=""  target="*c_c5"  graphic="c/magend.png"  x="1057"  y="230"  ]
[endif]

[if exp="f.step>=6" ]
[button  storage=""  target="*c_d1"  graphic="c/under.png"  x="698"  y="380"  ]
[endif]

[if exp="f.c_d1==1" ]
[button  storage=""  target="*c_d2"  graphic="c/black.png"  x="921"  y="380"  ]
[button  storage=""  target="*c_d3"  graphic="c/pink.png"   x="975"  y="380"  ]
[endif]

[if exp="f.step>=6" ]
[button  storage=""  target="*c_e1"  graphic="c/onep.png"  x="698"  y="280"  ]
[endif]

[if exp="f.c_e1==1" ]
[button  storage=""  target="*c_e2"  graphic="c/yellow.png"  x="840"  y="280"  ]
[button  storage=""  target="*c_e3"  graphic="c/red.png"  x="915"  y="280"  ]
[button  storage=""  target="*c_e4"  graphic="c/magend.png"  x="970"  y="280"  ]
[button  storage=""  target="*c_e5"  graphic="c/white.png"  x="1025"  y="280"  ]
[endif]

[if exp="f.step>=6 && f.love>=500" ]
[button  storage=""  target="*c_f1"  graphic="c/nurse.png"  x="698"  y="330"  ]
[endif]

[if exp="f.c_f1==1" ]
[button  storage=""  target="*c_f2"  graphic="c/pink.png"  x="860"  y="330"  ]
[button  storage=""  target="*c_f3"  graphic="c/black.png"  x="935"  y="330"  ]
[endif]

[if exp="f.step>=6 && f.love>=600" ]
[button  storage=""  target="*c_g1"  graphic="c/wahuku.png"  x="698"  y="430"  ]
[endif]

[if exp="f.c_g1==1" ]
[button  storage=""  target="*c_g2"  graphic="c/blue.png"  x="815"  y="430"  ]
[button  storage=""  target="*c_g3"  graphic="c/magend.png"  x="868"  y="430"  ]
[button  storage=""  target="*c_g4"  graphic="c/pink.png"  x="925"  y="430"  ]
[button  storage=""  target="*c_g5"  graphic="c/black.png"  x="1000"  y="430"  ]
[endif]

[if exp="f.step>=6 && f.love>=800" ]
[button  storage=""  target="*c_h1"  graphic="c/sera.png"  x="698"  y="480"  ]
[endif]

[if exp="f.c_h1==1" ]
[button  storage=""  target="*c_h2"  graphic="c/black.png"  x="835"  y="480"  ]
[button  storage=""  target="*c_h3"  graphic="c/long-w.png"  x="888"  y="480"  ]
[button  storage=""  target="*c_h4"  graphic="c/long-b.png"  x="1008"  y="480"  ]
[endif]

[if exp="f.step>=6 && f.love>=700" ]
[button  storage=""  target="*c_i1"  graphic="c/epdress.png"  x="698"  y="530"  ]
[endif]

[if exp="f.c_i1==1" ]
[button  storage=""  target="*c_i2"  graphic="c/blue.png"  x="865"  y="530"  ]
[button  storage=""  target="*c_i3"  graphic="c/magend.png"  x="918"  y="530"  ]
[button  storage=""  target="*c_i4"  graphic="c/green.png"  x="975"  y="530"  ]
[button  storage=""  target="*c_i5"  graphic="c/pink.png"  x="1030"  y="530"  ]
[endif]

[if exp="f.ch_win==1" ]
[button  storage=""  target="*shop_dress"  graphic="c/clothes.png"  width="58"  height="42"  x="1003"  y="68"  _clickable_img="" ]
[else]
[button  storage=""  target="*shop_dress"  graphic="c/clothes-.png"  width="58"  height="42"  x="1003"  y="68"  _clickable_img="" ]
[endif]

[if exp="f.ch_win==2" ]
[button  storage=""  target="*shop_hair"  graphic="c/hair.png"  width="86"  height="43"  x="1053"  y="68"  _clickable_img="" ]
[else]
[button  storage=""  target="*shop_hair"  graphic="c/hair-.png"  width="86"  height="43"  x="1053"  y="68"  _clickable_img="" ]
[endif]

[if exp="f.ch_win==3" ]
[button  storage=""  target="*shop_pin"  graphic="c/acce.png"  width="114"  height="42"  x="1131"  y="68"  _clickable_img="" ]
[else]
[button  storage=""  target="*shop_pin"  graphic="c/acce-.png"  width="114"  height="42"  x="1131"  y="68"  _clickable_img="" ]
[endif]

[if exp="f.ch_win==4" ]
[button  storage=""  target="*shop_leg"  graphic="c/leg.png"  width="48"  height="42"  x="1238"  y="68"  _clickable_img="" ]
[else]
[button  storage=""  target="*shop_leg"  graphic="c/leg-.png"  width="48"  height="42"  x="1238"  y="68"  _clickable_img="" ]
[endif]


[if exp="f.step>=6 && f.shop_t==1" ]
[button  storage=""  target="*talk"  graphic="c/shop-talk.png"  x="820"  y="20"  _clickable_img="" ]
[endif]

[s  ]


*bought_dress
[cm]
（這個已經買過了，買點別的吧。）[l]
[jump  storage=""  target="*shop_dress" ]
*bought_hair
[cm]
（這個已經買過了，買點別的吧。）[l]
[jump  storage=""  target="*shop_hair" ]
*bought_pin
[cm]
（這個已經買過了，買點別的吧。）[l]
[jump  storage=""  target="*shop_pin" ]
*bought_leg
[cm]
（這個已經買過了，買點別的吧。）[l]
[jump  storage=""  target="*shop_leg" ]

*color
已購買[p]
[free]
[set_stand]
[f_t]
[show_stand]


[if exp="f.step<5" ]
#希爾薇
這個……和以前買過的衣服顏色不壹樣呢。[p]
顏色不同感覺也不一樣了呢。[lr]這件衣服、我穿起來好看嗎？[p]
[f_s]
非常感謝[p]
[else]
#希爾薇
這個……和以前買過的衣服顏色不壹樣呢[lr]
[f_st]
謝謝您[p]
顏色不同感覺也不一樣了呢[lr]
[f_sst]
好想快點穿上試試[p]
[endif]
[jump  storage="after_action.ks"  target="*after_shop" ]


*wa_color
#希爾薇
這個，這個和之前的顏色不一樣了呢[lr]
要穿和服嗎[p]
這個雖然穿起來挺繁瑣的，但卻很漂亮呢[p]
[f_sst]
謝謝您[p]
[jump  storage="after_action.ks"  target="*after_shop" ]




*color_r
已購買[p]
[free]
[set_stand]
[f_t]
[show_stand]

[if exp="f.step<5" ]
#希爾薇
這個……這個和之前給我買的絲帶的顏色不一樣了呢[p]
真的……給我，可以嗎？[p]
[f_s]
非常謝謝[p]
[else]
#希爾薇
這個……這個和之前給我買的絲帶的顏色不一樣了呢[lr]
[f_st]
謝謝您[p]
帶上絲帶感覺跟以前不一樣了呢。[lr]
[f_sst]
能有這麽多我很開心呢[p]
[endif]
[jump  storage="after_action.ks"  target="*after_shop" ]

*color_p
已購買[p]
[free]
[set_stand]
[f_t]
[show_stand]

[if exp="f.step<5" ]
#希爾薇
這個…和以前買的發卡顏色不壹樣呢[p]
真的可以給我嗎？[p]
[f_s]
謝謝您[p]
[else]
#希爾薇
這個…和以前買的發卡顏色不壹樣呢[lr]
[f_st]
謝謝您[p]
雖然很小，但是卻很好看呢[lr]
[f_sst]您喜歡哪種呢？[p]
[endif]
[jump  storage="after_action.ks"  target="*after_shop" ]


*color_g
已購買[p]
[free]
[set_stand]
[f_t]
[show_stand]

#希爾薇
這個……和之前的眼鏡顏色不一樣了呢[lr]
[f_s]
謝謝您[p]
[f_st]
帶起眼鏡來感覺很不可思議呢[p]
[jump  storage="after_action.ks"  target="*after_shop" ]


*color_s
已購買[p]
[free]
[set_stand]
[f_t]
[show_stand]

#希爾薇
這個是，新買的襪子？[lr]
[f_s]
[if exp="f.step>=5" ]
謝謝您[lr]
[f_st]
我也喜歡[name]喜歡的東西[p]
[else]
謝謝您[p]
[endif]
[jump  storage="after_action.ks"  target="*after_shop" ]








*c_b1
[cm]
[jump  storage=""  target="*bought_dress" ]

*c_b2
[cm  ]
[if exp="f.c_b2==0" ]
[eval exp="f.c_b2=1" ]
（淑雅的衣服）
[jump  storage=""  target="*color" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]

*c_b3
[cm  ]
[if exp="f.c_b3==0" ]
[eval exp="f.c_b3=1" ]
（淑雅的衣服）
[jump  storage=""  target="*color" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]

*c_b4
[cm  ]
[if exp="f.c_b4==0" ]
[eval exp="f.c_b4=1" ]
（淑雅的衣服）
[jump  storage=""  target="*color" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]

*c_b5
[cm  ]
[if exp="f.c_b5==0" ]
[eval exp="f.c_b5=1" ]
（淑雅的衣服）
[jump  storage=""  target="*color" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]

*c_c1
[cm  ]
[if exp="f.c_c1==0" ]
[eval exp="f.c_c1=1" ]
#
（輕盈的連衣裙已購買）[p]
[free]
[set_stand]
[f_]
[show_stand]

#希爾薇
[f_st]
輕盈的連衣裙，絲帶也很多，真可愛[lr]
謝謝您[p]
[jump  storage="after_action.ks"  target="*after_shop" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]

*c_c2
[cm  ]
[if exp="f.c_c2==0" ]
[eval exp="f.c_c2=1" ]
（輕盈的連衣裙）
[jump  storage=""  target="*color" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]

*c_c3
[cm  ]
[if exp="f.c_c3==0" ]
[eval exp="f.c_c3=1" ]
（輕盈的連衣裙）
[jump  storage=""  target="*color" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]

*c_c4
[cm  ]
[if exp="f.c_c4==0" ]
[eval exp="f.c_c4=1" ]
（輕盈的連衣裙）
[jump  storage=""  target="*color" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]

*c_c5
[cm  ]
[if exp="f.c_c5==0" ]
[eval exp="f.c_c5=1" ]
（輕盈的連衣裙）
[jump  storage=""  target="*color" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]

*c_d1
[cm  ]
[if exp="f.c_d1==0" ]
[eval exp="f.c_d1=1" ]
（薄薄的睡衣已購買）[p]
[free]
[set_stand]
[f_tp]
[show_stand]


#希爾薇
這件衣服相當薄啊[lr]還是半透明的……[p]
虽然有些害羞……。[lr]
[f_stp]
[name]如果你喜歡的話我就穿吧[p]
[jump  storage="after_action.ks"  target="*after_shop" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]

*c_d2
[cm  ]
[if exp="f.c_d2==0" ]
[eval exp="f.c_d2=1" ]
（很薄的睡衣）
[jump  storage=""  target="*color" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]

*c_d3
[cm  ]
[if exp="f.c_d3==0" ]
[eval exp="f.c_d3=1" ]
（很薄的睡衣）
[jump  storage=""  target="*color" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]

*c_e1
[cm  ]
[if exp="f.c_e1==0" ]
[eval exp="f.c_e1=1" ]
（藍色夏裝已購買）[p]
[free]
[set_stand]
[f_st]
[show_stand]

#希爾薇
這是…好可愛的夏裝呢[lr]穿上去很涼爽也很方便運動[p]
您要買嗎？[lr]
[f_sst]
謝謝您[p]
好想穿著這個和[name]壹起出門呢[p]
[jump  storage="after_action.ks"  target="*after_shop" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]

*c_e2
[cm  ]
[if exp="f.c_e2==0" ]
[eval exp="f.c_e2=1" ]
（黃色夏裝）
[jump  storage=""  target="*color" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]

*c_e3
[cm  ]
[if exp="f.c_e3==0" ]
[eval exp="f.c_e3=1" ]
（紅色夏裝）
[jump  storage=""  target="*color" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]

*c_e4
[cm  ]
[if exp="f.c_e4==0" ]
[eval exp="f.c_e4=1" ]
（紫色夏裝）
[jump  storage=""  target="*color" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]

*c_e5
[cm  ]
[if exp="f.c_e5==0" ]
[eval exp="f.c_e5=1" ]
（白色夏裝）
[jump  storage=""  target="*color" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]

*c_f1
[cm  ]
[if exp="f.c_f1==0" ]
[eval exp="f.c_f1=1" ]
（護士服已購買）[p]
[free]
[set_stand]
[f_st]
[show_stand]

#希爾薇
這是…護士小姐的衣服呢。[lr]是穿著這個衣服來為[name]的工作幫忙的嗎？？[p]
[f_sst]
謝謝您[r]
我會努力加油幫助[name]的工作的[p]
[jump  storage="after_action.ks"  target="*after_shop" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]


*c_f2
[cm  ]
[if exp="f.c_f2==0" ]
[eval exp="f.c_f2=1" ]
（粉色的護士服已購買）[p]
[free]
[set_stand]
[f_st]
[show_stand]

#希爾薇
這是…和之前顏色不壹樣的護士服呢。[lr]是預備的服裝嗎[p]
我倒是覺得它有些可愛呢[p]
[f_sst]
謝謝您。[r]
我會更努力的[p]
[jump  storage="after_action.ks"  target="*after_shop" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]

*c_f3
[cm  ]
[if exp="f.c_f3==0" ]
[eval exp="f.c_f3=1" ]
（黑色護士服已購買）[p]
[free]
[set_stand]
[f_st]
[show_stand]

#希爾薇
這是…和之前顏色不壹樣的護士服呢。[lr]是預備的服裝嗎[p]
[f_t]
純黑…也有這種顏色呢[p]
[f_sst]
謝謝您。[r]
我會更加更加努力的[p]
[jump  storage="after_action.ks"  target="*after_shop" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]


*c_g1
[cm  ]
[if exp="f.c_g1==0" ]
[eval exp="f.c_g1=1" ]
（和服已購買）[p]
[free]
[set_stand]
[f_st]
[show_stand]

#希爾薇
[f_st]
真是漂亮的面料啊[lr]
[f_t]
可它是什麽衣服拉？？[p]
外國人穿的衣服呢嗎？[lr]
要怎麽穿的呢？[[p]
去問店員吧[lr]
[f_s]
是這樣的啊，我會學著怎麽穿的[p]
[jump  storage="after_action.ks"  target="*after_shop" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]

*c_g2
[cm  ]
[if exp="f.c_g2==0" ]
[eval exp="f.c_g2=1" ]
（和服已購買）[p]
[free]
[set_stand]
[f_st]
[show_stand]
[jump  storage=""  target="*wa_color" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]

*c_g3
[cm  ]
[if exp="f.c_g3==0" ]
[eval exp="f.c_g3=1" ]
（和服已購買）[p]
[free]
[set_stand]
[f_st]
[show_stand]
[jump  storage=""  target="*wa_color" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]

*c_g4
[cm  ]
[if exp="f.c_g4==0" ]
[eval exp="f.c_g4=1" ]
（和服已購買）[p]
[free]
[set_stand]
[f_st]
[show_stand]
[jump  storage=""  target="*wa_color" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]


*c_g5
[cm  ]
[if exp="f.c_g5==0" ]
[eval exp="f.c_g5=1" ]
（和服已購買）[p]
[free]
[set_stand]
[f_st]
[show_stand]
[jump  storage=""  target="*wa_color" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]

*c_h1
[cm  ]
[if exp="f.c_h1==0" ]
[eval exp="f.c_h1=1" ]
（水手服已購買）[p]
[free]
[set_stand]
[f_st]
[show_stand]

#希爾薇
[f_t]
這個……是水手服嗎？[lr]
第一次見到呢[p]
但是這個裙子……[lr]
[f_st]
女生的穿的水手服嗎？[p]
[f_st]
看起來是運動服裝、[r]
穿起來果然也很涼爽呢[p]
[f_sst]
不管怎樣，謝謝您[p]
[jump  storage="after_action.ks"  target="*after_shop" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]

*c_h2
[cm  ]
[if exp="f.c_h2==0" ]
[eval exp="f.c_h2=1" ]
（水手服已購買）[p]
[free]
[set_stand]
[f_st]
[show_stand]

#希爾薇
[f_st]
#希爾薇
這是之前買過的水手服嗎？[[p]
感覺黑色的很不一樣啊[r]
黑白相間的感覺完全不同的☻[p]
[f_sst]
謝謝您[p]
[jump  storage="after_action.ks"  target="*after_shop" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]


*c_h3
[cm  ]
[if exp="f.c_h3==0" ]
[eval exp="f.c_h3=1" ]
（水手服已購買）[p]
[free]
[set_stand]
[f_st]
[show_stand]

#希爾薇
[f_st]
#希爾薇
這是……水手服嗎？[p]
[f_t]
但是袖子和裙子都很長耶[p]
[f_st]
平靜的感覺真好呢[lr]
[f_sst]
謝謝您[p]
[jump  storage="after_action.ks"  target="*after_shop" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]

*c_h4
[cm  ]
[if exp="f.c_h4==0" ]
[eval exp="f.c_h4=1" ]
（水手服已購買）[p]
[free]
[set_stand]
[f_st]
[show_stand]

#希爾薇
[f_st]
#希爾薇
這是買給我的新水手服嗎？[p]
[f_t]
但是袖子和裙子都很長耶[p]
[f_st]
平靜的感覺真好呢[lr]
[f_sst]
謝謝您[p]
[jump  storage="after_action.ks"  target="*after_shop" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]


*c_i1
[cm  ]
[if exp="f.c_i1==0" ]
[eval exp="f.c_i1=1" ]
（女僕裝已購買）[p]
[free]
[set_stand]
[f_st]
[show_stand]

#希爾薇
[f_st]
這個是女仆的衣服嗎？[p]
是想讓我做您的成女仆嗎？[p]
在做家務的時候我就穿成這個樣子吧[lr]
[f_sst]
謝謝您[p]
[jump  storage="after_action.ks"  target="*after_shop" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]

*c_i2
[cm  ]
[if exp="f.c_i2==0" ]
[eval exp="f.c_i2=1" ]
（女僕裝已購買）[p]
[free]
[set_stand]
[f_st]
[show_stand]

[jump  storage=""  target="*maid_color" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]


*c_i3
[cm  ]
[if exp="f.c_i3==0" ]
[eval exp="f.c_i3=1" ]
（女僕裝已購買）[p]
[free]
[set_stand]
[f_st]
[show_stand]

[jump  storage=""  target="*maid_color" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]


*c_i4
[cm  ]
[if exp="f.c_i4==0" ]
[eval exp="f.c_i4=1" ]
（女僕裝已購買）[p]
[free]
[set_stand]
[f_st]
[show_stand]

[jump  storage=""  target="*maid_color" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]

*c_i4
[cm  ]
[if exp="f.c_i4==0" ]
[eval exp="f.c_i4=1" ]
（女僕裝已購買）[p]
[free]
[set_stand]
[f_st]
[show_stand]

[jump  storage=""  target="*maid_color" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]


*c_i5
[cm  ]
[if exp="f.c_i5==0" ]
[eval exp="f.c_i5=1" ]
（女僕裝已購買）[p]
[free]
[set_stand]
[f_st]
[show_stand]

[jump  storage=""  target="*maid_color" ]
[else]
[jump  storage=""  target="*bought_dress" ]
[endif]


*maid_color
[cm  ]
#希爾薇
[f_st]
和最近買的女仆裝相比顏色不太壹樣呢[p]
感覺非常明亮可愛☻[lr]
做家務時穿的話會很漂亮呢☻[p]
[f_sst]
謝謝您。[name][p]
[jump  storage="after_action.ks"  target="*after_shop" ]


*shop_hair
[cm  ]
[eval exp="f.ch_win=2" ]
[chara_mod  name="window"  time="100"  storage="chara/12/shop-win.png" ]
[button  storage=""  target="*return_menu"  graphic="m/back.png"  width="104"  height="33"  x="1188"  y="563"  _clickable_img="" ]

[button  storage=""  target="*r_a1"  graphic="c/ribbon-t.png"  x="695"  y="180"  ]

[if exp="f.r_a1==1" ]
[button  storage=""  target="*r_a2"  graphic="c/black.png"  x="881"  y="180"  ]
[button  storage=""  target="*r_a3"  graphic="c/red.png"  x="940"  y="180"  ]
[endif]

[if exp="f.step>3" ]
[button  storage=""  target="*r_a4"  graphic="c/yellow.png"  x="997"  y="180"  ]
[button  storage=""  target="*r_a5"  graphic="c/white.png"  x="1075"  y="180"  ]
[endif]

[if exp="f.step>4" ]
[button  storage=""  target="*r_b1"  graphic="c/ribbon.png"  x="695"  y="230"  ]
[endif]

[if exp="f.r_b1==1" ]
[button  storage=""  target="*r_b2"  graphic="c/black.png"  x="881"  y="230"  ]
[button  storage=""  target="*r_b3"  graphic="c/red.png"  x="939"  y="230"  ]
[button  storage=""  target="*r_b4"  graphic="c/white.png"  x="997"  y="230"  ]
[endif]

[if exp="f.c_g1==1" ]
[button  storage=""  target="*r_c1"  graphic="c/kanzashi-g.png"  x="695"  y="280"  ]
[button  storage=""  target="*r_c2"  graphic="c/kanzashi-s.png"  x="800"  y="280"  ]

[endif]



[if exp="f.ch_win==1" ]
[button  storage=""  target="*shop_dress"  graphic="c/clothes.png"  width="58"  height="42"  x="1003"  y="68"  _clickable_img="" ]
[else]
[button  storage=""  target="*shop_dress"  graphic="c/clothes-.png"  width="58"  height="42"  x="1003"  y="68"  _clickable_img="" ]
[endif]

[if exp="f.ch_win==2" ]
[button  storage=""  target="*shop_hair"  graphic="c/hair.png"  width="86"  height="43"  x="1053"  y="68"  _clickable_img="" ]
[else]
[button  storage=""  target="*shop_hair"  graphic="c/hair-.png"  width="86"  height="43"  x="1053"  y="68"  _clickable_img="" ]
[endif]

[if exp="f.ch_win==3" ]
[button  storage=""  target="*shop_pin"  graphic="c/acce.png"  width="114"  height="42"  x="1131"  y="68"  _clickable_img="" ]
[else]
[button  storage=""  target="*shop_pin"  graphic="c/acce-.png"  width="114"  height="42"  x="1131"  y="68"  _clickable_img="" ]
[endif]

[if exp="f.ch_win==4" ]
[button  storage=""  target="*shop_leg"  graphic="c/leg.png"  width="48"  height="42"  x="1238"  y="68"  _clickable_img="" ]
[else]
[button  storage=""  target="*shop_leg"  graphic="c/leg-.png"  width="48"  height="42"  x="1238"  y="68"  _clickable_img="" ]
[endif]

[if exp="f.step>=6 && f.shop_t==1" ]
[button  storage=""  target="*talk"  graphic="c/shop-talk.png"  x="820"  y="20"  _clickable_img="" ]
[endif]
[s  ]

*r_a1
[cm  ]
[jump  storage=""  target="*bought_hair" ]

*r_a2
[cm  ]
[if exp="f.r_a2==0" ]
[eval exp="f.r_a2=1" ]
（細繩繫帶「黒」）
[jump  storage=""  target="*color_r" ]
[else]
[jump  storage=""  target="*bought_hair" ]
[endif]

*r_a3
[cm  ]
[if exp="f.r_a3==0" ]
[eval exp="f.r_a3=1" ]
（細繩繫帶「紅」）
[jump  storage=""  target="*color_r" ]
[else]
[jump  storage=""  target="*bought_hair" ]
[endif]

*r_a4
[cm  ]
[if exp="f.r_a4==0" ]
[eval exp="f.r_a4=1" ]
（細繩繫帶「黄」）
[jump  storage=""  target="*color_r" ]
[else]
[jump  storage=""  target="*bought_hair" ]
[endif]

*r_a5
[cm  ]
[if exp="f.r_a5==0" ]
[eval exp="f.r_a5=1" ]
（細繩繫帶「白」）
[jump  storage=""  target="*color_r" ]
[else]
[jump  storage=""  target="*bought_hair" ]
[endif]

*r_b1
[cm  ]
[if exp="f.r_b1==0" ]
[eval exp="f.r_b1=1" ]
（大型緞帶已購買）[p]
#希爾薇
[free]
[set_stand]
[f_t]
[show_stand]

和之前買的系帶相比這個大很多呢[lr]
[f_s]
謝謝您[p]
[f_st]
帶上這個我是不是也變得可愛了呢？[p]
[jump  storage="after_action.ks"  target="*after_shop" ]
[else]
[jump  storage=""  target="*bought_hair" ]
[endif]

*r_b2
[cm  ]
[if exp="f.r_b2==0" ]
[eval exp="f.r_b2=1" ]
（大型緞帶「黒」）
[jump  storage=""  target="*color_r" ]
[else]
[jump  storage=""  target="*bought_hair" ]
[endif]

*r_b3
[cm  ]
[if exp="f.r_b3==0" ]
[eval exp="f.r_b3=1" ]
（大型緞帶「紅」）
[jump  storage=""  target="*color_r" ]
[elsif]
[jump  storage=""  target="*bought_hair" ]
[endif]

*r_b4
[cm  ]
[if exp="f.r_b4==0" ]
[eval exp="f.r_b4=1" ]
（大型緞帶「白」）
[jump  storage=""  target="*color_r" ]
[else]
[jump  storage=""  target="*bought_hair" ]
[endif]



*r_c1
[cm  ]
[if exp="f.r_c1==0" ]
[eval exp="f.r_c1=1" ]
（發簪已購買）[p]
#希爾薇
[free]
[set_stand]
[f_st]
[show_stand]
好漂亮的髮簪啊[lr]
是戴在頭髮上的嗎？[p]
和上次的和服是同壹個國家的東西呢[p]
[f_sst]
謝謝您[p]
[jump  storage="after_action.ks"  target="*after_shop" ]
[else]
[jump  storage=""  target="*bought_hair" ]
[endif]

*r_c2
[cm  ]
[if exp="f.r_c2==0" ]
[eval exp="f.r_c2=1" ]
（髮簪已購買）[p]
#希爾薇
[free]
[set_stand]
[f_st]
[show_stand]
好漂亮的髮簪啊[lr]
是戴在頭髮上的嗎？[p]
和上次的和服是同壹個國家的東西呢[p]
[f_sst]
謝謝您[p]
[jump  storage="after_action.ks"  target="*after_shop" ]
[else]
[jump  storage=""  target="*bought_hair" ]
[endif]


*shop_pin
[cm  ]
[eval exp="f.ch_win=3" ]
[chara_mod  name="window"  time="0"  storage="chara/12/shop-win.png" ]
[button  storage=""  target="*return_menu"  graphic="m/back.png"  width="104"  height="33"  x="1188"  y="563"  _clickable_img="" ]
[button  storage=""  target="*p_a1"  graphic="c/pin.png"  x="700"  y="165"  ]

[if exp="f.p_a1==1" ]
[button  storage=""  target="*p_a2"  graphic="c/black.png"  x="881"  y="165"  ]
[button  storage=""  target="*p_a3"  graphic="c/green.png"  x="938"  y="165"  ]
[endif]

[if exp="f.step>4" ]
[button  storage=""  target="*p_a4"  graphic="c/red.png"  x="993"  y="165"  ]
[button  storage=""  target="*p_a5"  graphic="c/yellow.png"  x="1049"  y="165"  ]
[button  storage=""  target="*p_a6"  graphic="c/white.png"    x="1128"  y="165"  ]
[endif]

[if exp="f.step>=6 && f.love>=900" ]
[button  storage=""  target="*h_a1"  graphic="c/ear.png"  x="700"  y="260"  ]
[endif]
[if exp="f.step>=6 && f.love>=900" ]
[button  storage=""  target="*h_a2"  graphic="c/horn.png"  x="850"  y="260"  ]
[endif]
[if exp="f.step>=6 && f.love>=600" ]
[button  storage=""  target="*h_b1"  graphic="c/mugi.png"  x="1000"  y="260"  ]
[endif]
[if exp="f.c_i1==1" ]
[button  storage=""  target="*h_b2"  graphic="c/head-d.png"  x="1120"  y="260"  ]
[endif]


[if exp="f.step>5" ]
[button  storage=""  target="*g_a1"  graphic="c/gl-c.png"   x="700"  y="395"  ]
[endif]

[if exp="f.g_a1==1" ]
[button  storage=""  target="*g_a2"  graphic="c/blue.png"   x="830"  y="395"  ]
[button  storage=""  target="*g_a3"  graphic="c/gray.png"   x="883"  y="395"  ]
[button  storage=""  target="*g_a4"  graphic="c/red.png"  x="953"  y="395"  ]
[button  storage=""  target="*g_a5"  graphic="c/pink.png"   x="1010"  y="395"  ]
[endif]


[if exp="f.g_a1==1" ]
[button  storage=""  target="*g_b1"  graphic="c/gl-s.png"   x="700"  y="435"  ]
[endif]

[if exp="f.g_b1==1" ]
[button  storage=""  target="*g_b2"  graphic="c/blue.png"   x="840"  y="435"  ]
[button  storage=""  target="*g_b3"  graphic="c/gray.png"   x="893"  y="435"  ]
[button  storage=""  target="*g_b4"  graphic="c/red.png"  x="963"  y="435"  ]
[button  storage=""  target="*g_b5"  graphic="c/pink.png"   x="1020"  y="435"  ]
[endif]

[if exp="f.g_a1==1" ]
[button  storage=""  target="*g_c1"  graphic="c/gl-h.png"   x="700"  y="475"  ]
[endif]

[if exp="f.g_c1==1" ]
[button  storage=""  target="*g_c2"  graphic="c/blue.png"   x="830"  y="475"  ]
[button  storage=""  target="*g_c3"  graphic="c/gray.png"   x="883"  y="475"  ]
[button  storage=""  target="*g_c4"  graphic="c/red.png"  x="953"  y="475"  ]
[button  storage=""  target="*g_c5"  graphic="c/pink.png"   x="1010"  y="475"  ]
[endif]

[if exp="f.ch_win==1" ]
[button  storage=""  target="*shop_dress"  graphic="c/clothes.png"  width="58"  height="42"  x="1003"  y="68"  _clickable_img="" ]
[else]
[button  storage=""  target="*shop_dress"  graphic="c/clothes-.png"  width="58"  height="42"  x="1003"  y="68"  _clickable_img="" ]
[endif]
[if exp="f.ch_win==2" ]
[button  storage=""  target="*shop_hair"  graphic="c/hair.png"  width="86"  height="43"  x="1053"  y="68"  _clickable_img="" ]
[else]
[button  storage=""  target="*shop_hair"  graphic="c/hair-.png"  width="86"  height="43"  x="1053"  y="68"  _clickable_img="" ]
[endif]
[if exp="f.ch_win==3" ]
[button  storage=""  target="*shop_pin"  graphic="c/acce.png"  width="114"  height="42"  x="1131"  y="68"  _clickable_img="" ]
[else]
[button  storage=""  target="*shop_pin"  graphic="c/acce-.png"  width="114"  height="42"  x="1131"  y="68"  _clickable_img="" ]
[endif]
[if exp="f.ch_win==4" ]
[button  storage=""  target="*shop_leg"  graphic="c/leg.png"  width="48"  height="42"  x="1238"  y="68"  _clickable_img="" ]
[else]
[button  storage=""  target="*shop_leg"  graphic="c/leg-.png"  width="48"  height="42"  x="1238"  y="68"  _clickable_img="" ]
[endif]

[if exp="f.step>=6 && f.shop_t==1" ]
[button  storage=""  target="*talk"  graphic="c/shop-talk.png"  x="820"  y="20"  _clickable_img="" ]
[endif]
[s  ]

*p_a1
[cm  ]
[jump  storage=""  target="*bought_pin" ]

*p_a2
[cm  ]
[if exp="f.p_a2==0" ]
[eval exp="f.p_a2=1" ]
（黒色髮夾）
[jump  storage=""  target="*color_p" ]
[else]
[jump  storage=""  target="*bought_pin" ]
[endif]

*p_a3
[cm  ]
[if exp="f.p_a3==0" ]
[eval exp="f.p_a3=1" ]
（緑色髮夾）
[jump  storage=""  target="*color_p" ]
[else]
[jump  storage=""  target="*bought_pin" ]
[endif]

*p_a4
[cm  ]
[if exp="f.p_a4==0" ]
[eval exp="f.p_a4=1" ]
（紅色髮夾）
[jump  storage=""  target="*color_p" ]
[else]
[jump  storage=""  target="*bought_pin" ]
[endif]

*p_a5
[cm  ]
[if exp="f.p_a5==0" ]
[eval exp="f.p_a5=1" ]
（黄色髮夾）
[jump  storage=""  target="*color_p" ]
[else]
[jump  storage=""  target="*bought_pin" ]
[endif]

*p_a6
[cm  ]
[if exp="f.p_a6==0" ]
[eval exp="f.p_a6=1" ]
（白色髮夾）
[jump  storage=""  target="*color_p" ]
[else]
[jump  storage=""  target="*bought_pin" ]
[endif]



*g_a1
[cm  ]
[if exp="f.g_a1==0" ]
[eval exp="f.g_a1=1" ]
[free]
[set_stand]
[f_ct]
[show_stand]

#希爾薇
眼鏡嗎？[lr]
可是我沒有近視啊[p]
[f_t]
是沒有度數的嗎[lr]
就是單純的裝飾品啊？[p]
[f_s]
雖然不太明白，但是[name]喜歡的話我一定會戴上的[p]
[jump  storage="after_action.ks"  target="*after_shop" ]
[else]
[jump  storage=""  target="*bought_pin" ]
[endif]

*g_a2
[cm  ]
[if exp="f.g_a2==0" ]
[eval exp="f.g_a2=1" ]
（藍色眼鏡）
[jump  storage=""  target="*color_g" ]
[else]
[jump  storage=""  target="*bought_pin" ]
[endif]

*g_a3
[cm  ]
[if exp="f.g_a3==0" ]
[eval exp="f.g_a3=1" ]
（灰色眼鏡）
[jump  storage=""  target="*color_g" ]
[else]
[jump  storage=""  target="*bought_pin" ]
[endif]

*g_a4
[cm  ]
[if exp="f.g_a4==0" ]
[eval exp="f.g_a4=1" ]
（紅色眼鏡）
[jump  storage=""  target="*color_g" ]
[else]
[jump  storage=""  target="*bought_pin" ]
[endif]

*g_a5
[cm  ]
[if exp="f.g_a5==0" ]
[eval exp="f.g_a5=1" ]
（粉色眼鏡）
[jump  storage=""  target="*color_g" ]
[else]
[jump  storage=""  target="*bought_pin" ]
[endif]

*g_b1
[cm  ]
[if exp="f.g_b1==0" ]
[eval exp="f.g_b1=1" ]
[free]
[set_stand]
[f_t]
[show_stand]
#希爾薇
和之前買的眼鏡顏色不壹樣呢[p]
[f_st]
戴上它我感覺更聰明了☻[lr]
[jump  storage="after_action.ks"  target="*after_shop" ]
[else]
[jump  storage=""  target="*bought_pin" ]
[endif]


*g_b2
[cm  ]
[if exp="f.g_b2==0" ]
[eval exp="f.g_b2=1" ]
（藍色眼鏡）
[jump  storage=""  target="*color_g" ]
[else]
[jump  storage=""  target="*bought_pin" ]
[endif]

*g_b3
[cm  ]
[if exp="f.g_b3==0" ]
[eval exp="f.g_b3=1" ]
（灰色眼鏡）
[jump  storage=""  target="*color_g" ]
[else]
[jump  storage=""  target="*bought_pin" ]
[endif]

*g_b4
[cm  ]
[if exp="f.g_b4==0" ]
[eval exp="f.g_b4=1" ]
（紅色眼鏡）
[jump  storage=""  target="*color_g" ]
[else]
[jump  storage=""  target="*bought_pin" ]
[endif]

*g_b5
[cm  ]
[if exp="f.g_b5==0" ]
[eval exp="f.g_b5=1" ]
（粉色眼鏡）
[jump  storage=""  target="*color_g" ]
[else]
[jump  storage=""  target="*bought_pin" ]
[endif]

*g_c1
[cm  ]
[if exp="f.g_c1==0" ]
[free]
[set_stand]
[f_t]
[show_stand]
#希爾薇
這是···和以前買的眼鏡形狀不一樣呢[p]
[f_st]
戴上它我感覺更聰明了☻[lr]
謝謝您[p]
[eval exp="f.g_c1=1" ]
[jump  storage="after_action.ks"  target="*after_shop" ]
[else]
[jump  storage=""  target="*bought_pin" ]
[endif]



*g_c2
[cm  ]
[if exp="f.g_c2==0" ]
[eval exp="f.g_c2=1" ]
（藍色眼鏡）
[jump  storage=""  target="*color_g" ]
[else]
[jump  storage=""  target="*bought_pin" ]
[endif]

*g_c3
[cm  ]
[if exp="f.g_c3==0" ]
[eval exp="f.g_c3=1" ]
（灰色眼鏡）
[jump  storage=""  target="*color_g" ]
[else]
[jump  storage=""  target="*bought_pin" ]
[endif]

*g_c4
[cm  ]
[if exp="f.g_c4==0" ]
[eval exp="f.g_c4=1" ]
（紅色眼鏡）
[jump  storage=""  target="*color_g" ]
[else]
[jump  storage=""  target="*bought_pin" ]
[endif]

*g_c5
[cm  ]
[if exp="f.g_c5==0" ]
[eval exp="f.g_c5=1" ]
（粉色眼鏡）
[jump  storage=""  target="*color_g" ]
[else]
[jump  storage=""  target="*bought_pin" ]
[endif]


*h_a1
[cm  ]
[if exp="f.h_a1==0" ]
[eval exp="f.h_a1=1" ]
[free]
[set_stand]
[f_t]
[show_stand]
#
獣耳裝飾品已购买[p]
#希爾薇
這是……和動物一樣的頭飾嗎？[p]
我不知道好不好，但是[name]喜歡的話我會帶上它的[p]
[f_st]
……嗯、輕飄飄的，摸起來很舒服[p]
[jump  storage="after_action.ks"  target="*after_shop" ]
[else]
[jump  storage=""  target="*bought_pin" ]
[endif]

*h_a2
[cm  ]
[if exp="f.h_a2==0" ]
[eval exp="f.h_a2=1" ]
[free]
[set_stand]
[f_t]
[show_stand]
#
獣角裝飾品已购买[p]
#希爾薇
這個是動物角形的裝飾品嗎？[p]
有點不好意思，但是[name]喜歡的話我會帶上它的[p]
覺得有些硬……[r]
應該不會是真的吧……[p]

[jump  storage="after_action.ks"  target="*after_shop" ]
[else]
[jump  storage=""  target="*bought_pin" ]
[endif]

*h_b1
[cm  ]
[if exp="f.h_b1==0" ]
[eval exp="f.h_b1=1" ]
[free]
[set_stand]
[f_st]
[show_stand]
#
稻草帽已购买[p]
#希爾薇
這個帽子好大啊[p]
夏天的時候戴著出來遮陽剛剛好[lr]
[f_sst]
謝謝您[name][p]

[jump  storage="after_action.ks"  target="*after_shop" ]
[else]
[jump  storage=""  target="*bought_pin" ]
[endif]

*h_b2
[cm  ]
[if exp="f.h_b2==0" ]
[eval exp="f.h_b2=1" ]
[free]
[set_stand]
[f_t]
[show_stand]
#
女仆髮帶已购买[p]
#希爾薇
女仆的頭飾嗎？[p]
要給之前買給我的女仆裝搭配著穿嗎？[p]
[f_st]
非常感謝[p]
[jump  storage="after_action.ks"  target="*after_shop" ]
[else]
[jump  storage=""  target="*bought_pin" ]
[endif]


*shop_leg
[cm  ]
[eval exp="f.ch_win=4" ]
[chara_mod  name="window"  time="0"  storage="chara/12/shop-win.png" ]
[button  storage=""  target="*return_menu"  graphic="m/back.png"  width="104"  height="33"  x="1188"  y="563"  _clickable_img="" ]

[if exp="f.s_a1==1" ]
[button  storage=""  target="*s_a1"  graphic="c/socks.png"   height="36"   x="700"  y="174"  _clickable_img="" ]
[button  storage=""  target="*s_a2"  graphic="c/black.png"  height="36"   x="783"  y="174"  _clickable_img="" ]
[endif]

[if exp="f.step>3" ]
[button  storage=""  target="*s_a3"  graphic="c/gray.png"   height="36"   x="840"  y="174"  _clickable_img="" ]
[button  storage=""  target="*s_a4"  graphic="c/stripe.png"   height="36"   x="910"  y="174"  _clickable_img="" ]
[endif]

[if exp="f.step>3" ]
[button  storage=""  target="*s_b1"  graphic="c/socks-long.png"   height="36"   x="700"  y="232"  _clickable_img="" ]
[endif]

[if exp="f.s_b1==1" ]
[button  storage=""  target="*s_b2"  graphic="c/black.png"   height="36"  x="814"  y="232"  _clickable_img="" ]
[button  storage=""  target="*s_b3"  graphic="c/black-h.png"   height="36"   x="867"  y="232"  _clickable_img="" ]

[endif]
[if exp="f.step>=6" ]
[button  storage=""  target="*s_b5"  graphic="c/gray.png"   height="36"   x="1043"  y="232"  _clickable_img="" ]
[button  storage=""  target="*s_b4"  graphic="c/white-h.png"   height="36"   x="955"  y="232"  _clickable_img="" ]
[button  storage=""  target="*s_b6"  graphic="c/stripe.png"   height="36"   x="1113"  y="232"  _clickable_img="" ]
[endif]

[if exp="f.lust>=50" ]
[button  storage=""  target="*ri_a1"  graphic="c/gold-a.png"   height="36"   x="700"  y="310"  ]
[button  storage=""  target="*ri_a2"  graphic="c/gold-b.png"  height="36"   x="817"  y="310"  ]
[button  storage=""  target="*ri_a3"  graphic="c/gold-c.png"   height="36"   x="924"  y="310"  ]
[button  storage=""  target="*ri_b1"  graphic="c/sil-a.png"   height="36"   x="700"  y="350"  ]
[button  storage=""  target="*ri_b2"  graphic="c/sil-b.png"   height="36"   x="817"  y="350"  ]
[button  storage=""  target="*ri_b3"  graphic="c/sil-c.png"   height="36"   x="924"  y="350"  ]
[endif]

[if exp="f.love>=500" ]
[button  storage=""  target="*ne_a1"  graphic="c/maf.png"   height="36"   x="700"  y="445"  ]
[endif]

[if exp="f.ne_a1==1" ]
[button  storage=""  target="*ne_a2"  graphic="c/blue-.png"   height="36"   x="820"  y="445"  ]
[button  storage=""  target="*ne_a3"  graphic="c/brown.png"   height="36"   x="870"  y="445"  ]
[button  storage=""  target="*ne_a4"  graphic="c/maf-.png"   height="36"   x="920"  y="445"  ]
[button  storage=""  target="*ne_a5"  graphic="c/blue.png"   height="36"   x="1038"  y="445"  ]
[button  storage=""  target="*ne_a6"  graphic="c/brown.png"   height="36"   x="1088"  y="445"  ]
[button  storage=""  target="*ne_a7"  graphic="c/green.png"   height="36"   x="1138"  y="445"  ]
[endif]

[if exp="f.love>=600" ]
[button  storage=""  target="*ne_b1"  graphic="c/ep.png"   height="36"   x="700"  y="485"  ]
[endif]
[if exp="f.ne_b1==1" ]
[button  storage=""  target="*ne_b2"  graphic="c/blue.png"   height="36"   x="830"  y="485"  ]
[button  storage=""  target="*ne_b3"  graphic="c/pink.png"   height="36"   x="879"  y="485"  ]
[button  storage=""  target="*ne_b4"  graphic="c/black.png"   height="36"   x="950"  y="485"  ]
[endif]

[if exp="f.ch_win==1" ]
[button  storage=""  target="*shop_dress"  graphic="c/clothes.png"  width="58"  height="42"  x="1003"  y="68"  _clickable_img="" ]
[else]
[button  storage=""  target="*shop_dress"  graphic="c/clothes-.png"  width="58"  height="42"  x="1003"  y="68"  _clickable_img="" ]
[endif]
[if exp="f.ch_win==2" ]
[button  storage=""  target="*shop_hair"  graphic="c/hair.png"  width="86"  height="43"  x="1053"  y="68"  _clickable_img="" ]
[else]
[button  storage=""  target="*shop_hair"  graphic="c/hair-.png"  width="86"  height="43"  x="1053"  y="68"  _clickable_img="" ]
[endif]
[if exp="f.ch_win==3" ]
[button  storage=""  target="*shop_pin"  graphic="c/acce.png"  width="114"  height="42"  x="1131"  y="68"  _clickable_img="" ]
[else]
[button  storage=""  target="*shop_pin"  graphic="c/acce-.png"  width="114"  height="42"  x="1131"  y="68"  _clickable_img="" ]
[endif]
[if exp="f.ch_win==4" ]
[button  storage=""  target="*shop_leg"  graphic="c/leg.png"  width="48"  height="42"  x="1238"  y="68"  _clickable_img="" ]
[else]
[button  storage=""  target="*shop_leg"  graphic="c/leg-.png"  width="48"  height="42"  x="1238"  y="68"  _clickable_img="" ]
[endif]

[if exp="f.step>=6 && f.shop_t==1" ]
[button  storage=""  target="*talk"  graphic="c/shop-talk.png"  x="820"  y="20"  _clickable_img="" ]
[endif]
[s  ]


*color_ri

已購買[p]
[free]
[set_stand]
[f_t]
[show_stand]

[if exp="f.ring_f==0" ]
[eval exp="f.ring_f=1" ]
#希爾薇
[f_t]
乳環……[p]
[f_tp]
這個是……身體上用……的嗎？[lr]
[f_stp]
[name]喜歡的話我就帶上它吧……[p]
[jump  storage="after_action.ks"  target="*after_shop" ]
[else]
[f_sp]
新的乳環……[p]
[f_stp]
[name]喜歡的話我會樂意戴的……[p]
[jump  storage="after_action.ks"  target="*after_shop" ]
[endif]

*s_a1
[cm  ]
[jump  storage=""  target="*bought_leg" ]

*s_a2
[cm  ]
[if exp="f.s_a2==0" ]
[eval exp="f.s_a2=1" ]
（黑色襪子）
[jump  storage=""  target="*color_s" ]
[else]
[jump  storage=""  target="*bought_leg" ]
[endif]

*s_a3
[cm  ]
[if exp="f.s_a3==0" ]
[eval exp="f.s_a3=1" ]
（灰色襪子）
[jump  storage=""  target="*color_s" ]
[else]
[jump  storage=""  target="*bought_leg" ]
[endif]

*s_a4
[cm  ]
[if exp="f.s_a4==0" ]
[eval exp="f.s_a4=1" ]
（條紋襪子）
[jump  storage=""  target="*color_s" ]
[else]
[jump  storage=""  target="*bought_leg" ]
[endif]

*s_b1
[cm  ]
[if exp="f.s_b1==0" ]
[eval exp="f.s_b1=1" ]
（長襪子）
[jump  storage=""  target="*color_s" ]
[else]
[jump  storage=""  target="*bought_leg" ]
[endif]

*s_b2
[cm  ]
[if exp="f.s_b2==0" ]
[eval exp="f.s_b2=1" ]
（長襪子）
[jump  storage=""  target="*color_s" ]
[else]
[jump  storage=""  target="*bought_leg" ]
[endif]

*s_b3
[cm  ]
[if exp="f.s_b3==0" ]
[eval exp="f.s_b3=1" ]
（長襪子）
[jump  storage=""  target="*color_s" ]
[else]
[jump  storage=""  target="*bought_leg" ]
[endif]

*s_b4
[cm  ]
[if exp="f.s_b4==0" ]
[eval exp="f.s_b4=1" ]
（長襪子）
[jump  storage=""  target="*color_s" ]
[else]
[jump  storage=""  target="*bought_leg" ]
[endif]

*s_b5
[cm  ]
[if exp="f.s_b5==0" ]
[eval exp="f.s_b5=1" ]
（長襪子）
[jump  storage=""  target="*color_s" ]
[else]
[jump  storage=""  target="*bought_leg" ]
[endif]

*s_b6
[cm  ]
[if exp="f.s_b6==0" ]
[eval exp="f.s_b6=1" ]
（長襪子）
[jump  storage=""  target="*color_s" ]
[else]
[jump  storage=""  target="*bought_leg" ]
[endif]



*ri_a1
[cm  ]
[if exp="f.ri_a1==0" ]
[eval exp="f.ri_a1=1" ]
（金色乳環）
[jump  storage=""  target="*color_ri" ]
[else]
[jump  storage=""  target="*bought_leg" ]
[endif]

*ri_a2
[cm  ]
[if exp="f.ri_a2==0" ]
[eval exp="f.ri_a2=1" ]
（帶有十字架掛飾的金色環飾）
[jump  storage=""  target="*color_ri" ]
[else]
[jump  storage=""  target="*bought_leg" ]
[endif]

*ri_a3
[cm  ]
[if exp="f.ri_a3==0" ]
[eval exp="f.ri_a3=1" ]
（系有掛鏈的金色環飾）
[jump  storage=""  target="*color_ri" ]
[else]
[jump  storage=""  target="*bought_leg" ]
[endif]



*ri_b1
[cm  ]
[if exp="f.ri_b1==0" ]
[eval exp="f.ri_b1=1" ]
（銀色乳環）
[jump  storage=""  target="*color_ri" ]
[else]
[jump  storage=""  target="*bought_leg" ]
[endif]

*ri_b2
[cm  ]
[if exp="f.ri_b2==0" ]
[eval exp="f.ri_b2=1" ]
（帶有十字架掛飾的銀色環飾）
[jump  storage=""  target="*color_ri" ]
[else]
[jump  storage=""  target="*bought_leg" ]
[endif]

*ri_b3
[cm  ]
[if exp="f.ri_b3==0" ]
[eval exp="f.ri_b3=1" ]
（系有掛鏈的銀色環飾）
[jump  storage=""  target="*color_ri" ]
[else]
[jump  storage=""  target="*bought_leg" ]
[endif]


*ne_a1
[cm  ]
[if exp="f.ne_a1==0" ]
[eval exp="f.ne_a1=1" ]
#
紅圍巾已購買[p]
[free]
[set_stand]
[f_t]
[show_stand]

#希爾薇
[f_st]
圍巾嗎[lr]
可以買給我嗎？[p]
[f_sst]
買完了呀[p]
[f_stp]
我會很小心的使用的，謝謝您[name][p]
[jump  storage="after_action.ks"  target="*after_shop" ]
[else]
[jump  storage=""  target="*bought_leg" ]
[endif]

*ne_a2
[cm  ]
[if exp="f.ne_a2==0" ]
[eval exp="f.ne_a2=1" ]
#
紫藍圍巾已購買[p]
[jump  storage=""  target="*maf_color" ]
[else]
[jump  storage=""  target="*bought_leg" ]
[endif]

*ne_a3
[cm  ]
[if exp="f.ne_a3==0" ]
[eval exp="f.ne_a3=1" ]
#
茶色圍巾已購買[p]
[jump  storage=""  target="*maf_color" ]
[else]
[jump  storage=""  target="*bought_leg" ]
[endif]

*ne_a4
[cm  ]
[if exp="f.ne_a4==0" ]
[eval exp="f.ne_a4=1" ]
#
紅格子款圍巾已購買[p]
[jump  storage=""  target="*maf_color" ]
[else]
[jump  storage=""  target="*bought_leg" ]
[endif]

*ne_a5
[cm  ]
[if exp="f.ne_a5==0" ]
[eval exp="f.ne_a5=1" ]
#
藍格子款圍巾已購買[p]
[jump  storage=""  target="*maf_color" ]
[else]
[jump  storage=""  target="*bought_leg" ]
[endif]

*ne_a6
[cm  ]
[if exp="f.ne_a6==0" ]
[eval exp="f.ne_a6=1" ]
#
茶色格子款圍巾已購買[p]
[jump  storage=""  target="*maf_color" ]
[else]
[jump  storage=""  target="*bought_leg" ]
[endif]

*ne_a7
[cm  ]
[if exp="f.ne_a7==0" ]
[eval exp="f.ne_a7=1" ]
#
緑色格子款圍巾已購買[p]
[jump  storage=""  target="*maf_color" ]
[else]
[jump  storage=""  target="*bought_leg" ]
[endif]


*maf_color
[cm  ]
[free]
[set_stand]
[f_t]
[show_stand]

#希爾薇
[f_st]
和之前顏色不同的圍巾嗎？[lr]
要買嗎？[p]
[f_sst]
謝謝，我會很珍惜它的[p]
[jump  storage="after_action.ks"  target="*after_shop" ]


*ne_b1
[cm  ]
[if exp="f.ne_b1==0" ]
[eval exp="f.ne_b1=1" ]
[free]
#
エプロンを買った[p]
[set_stand]
[f_t]
[show_stand]
#希爾薇
[f_st]
圍裙嗎？[p]
要給我做飯的時候用的嗎？[p]
謝謝☻[r]我會記得使用它的[p]
[f_sst]
[jump  storage="after_action.ks"  target="*after_shop" ]
[else]
[jump  storage=""  target="*bought_leg" ]
[endif]

*ne_b2
[cm  ]
[if exp="f.ne_b2==0" ]
[eval exp="f.ne_b2=1" ]
#
藍色圍裙已購買[p]
[jump  storage=""  target="*ep_color" ]
[else]
[jump  storage=""  target="*bought_leg" ]
[endif]

*ne_b3
[cm  ]
[if exp="f.ne_b3==0" ]
[eval exp="f.ne_b3=1" ]
#
粉色圍裙已購買[p]
[jump  storage=""  target="*ep_color" ]
[else]
[jump  storage=""  target="*bought_leg" ]
[endif]

*ne_b4
[cm  ]
[if exp="f.ne_b4==0" ]
[eval exp="f.ne_b4=1" ]
#
黑色圍裙已購買[p]
[jump  storage=""  target="*ep_color" ]
[else]
[jump  storage=""  target="*bought_leg" ]
[endif]

*ep_color
[cm  ]
[free]
[set_stand]
[f_t]
[show_stand]

#希爾薇
[f_st]
和之前顏色不同的圍裙[lr]
要買這個嗎？[p]
[f_sst]
謝謝您、[name][p]
[jump  storage="after_action.ks"  target="*after_shop" ]


*return_menu
[cm]
#
還是算了吧[p]
[eval exp="f.shop_c=3" ]
[jump  storage="after_action.ks"  target="*after_shop" ]









*talk
[cm ]
[cancelskip]
[if exp="f.shop_talk==0" ]
#
（這家店好像就她一個人？）[p]
[aurel]
其它的店員嗎？[lr]
這個店沒有其它的店員的[p]
對不起，還沒和你自我介紹過。我是這家店的店長奧蕾莉亞[lr]
今後也請多多關照[p]
[eval exp="f.shop_talk=1" ]
[eval exp="f.shop_t=0" ]
[aurel]


[elsif exp="f.shop_talk==1" ]
[aurel]
有什麽喜歡的東西嗎？[p]
#
（說話的感覺和方式有點做作[r]
讓我們感到有些不太舒服）[p]
[eval exp="f.shop_talk=2" ]

[elsif exp="f.shop_talk==2" ]
#
（在店裡還戴著一頂帽子）[p]
[aurel]
這頂帽子嗎？[p]
因為它等於我來說非常特別[lr]
不要在意它[p]
[eval exp="f.shop_talk=3" ]

[elsif exp="f.shop_talk==3" ]
#
（店裏賣的東西種類也非常多）[p]
[aurel]
有各種各樣的衣服[p]
還有一些奇怪的東西？[lr]
看來是從其它國家進購的[p]
但是…爲什麽沒有賣男人用的東西[p]
[eval exp="f.shop_talk=4" ]

[elsif exp="f.shop_talk==4" ]
#
（希爾薇在我們談話的時候表情產生了微妙的變化）[p]
（視線充滿妒忌的看著我）[p]
[aurel]
妳怎麽了？[p]
#
（希爾薇連忙移開了視線）[p]
[eval exp="f.shop_talk=5" ]

[elsif exp="f.shop_talk==5" ]
#
（沒見過其它客人來這裡，不知道這店的生意怎麼樣）[p]
[aurel]
這個你不需要擔心[lr]
至少還是有一個人會來的[p]
#
（她朝這邊看著笑了一下）[p]
[eval exp="f.shop_talk=6" ]

[elsif exp="f.shop_talk==6" ]
#
（相比於其它女性她非常的高）[p]
（不過也可能是穿了高跟鞋[r]
因為看不清楚她移動的步伐所以不得而知）[p]
（帽子下隱藏的年齡也看不出來[r]
沒什麽根據但是從她的身形判斷她應該也有二十好幾了）[p]
（正在思考的時候突然覺得襯衫被從下面拉沒幾下[lr]
在沒察覺的時候希爾薇把臉扭了過來）[p]
[eval exp="f.shop_talk=7" ]

[elsif exp="f.shop_talk==7" ]
[aurel]
其實…我還是比較喜歡…[p]
嗯嗯…沒什麽…[p]
#
（希爾薇偷瞟著我的臉，發現了我的笑容）[p]
[eval exp="f.shop_talk=8" ]

[elsif exp="f.shop_talk==8" ]
[aurel]
這個…你們關係看起來似乎非常好嘛[p]
不，沒什麽的…[p]
嗯…[p]
#
（她應該是吃醋了，在胡思亂想我和奧蕾莉亞嗎）[p]
[eval exp="f.shop_talk=9" ]

[elsif exp="f.shop_talk==9" ]
#
（就是這樣在這家店外的地方看見這個女人也會覺得不可思議吧）[p]
（就這條街的人數和大小來講[r]
穿著這樣華麗會被所有人當做是從遠方來的呢）[p]
[aurel]
我的臉上有東西嗎？[p]
[eval exp="f.shop_talk=10" ]
[endif]

[eval exp="f.shop_t=0" ]
[jump  storage=""  target="*shop_dress" ]




[_tb_end_tyrano_code]