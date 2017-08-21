[_tb_system_call storage=system/_setting.ks]

[tb_start_tyrano_code]

*setting
[cm  ]
;[show_skip]
[chara_mod  name="window"  time="0"  storage="chara/12/set-win.png" ]

[button  storage=""  target="*return_menu"  graphic="m/back.png"  width="104"  height="33"  x="1188"  y="563"  ]

[if exp="f.fin_choice==1" ]
[button  storage=""  target="*fin_yes"  graphic="m/yes.png"  width="73"  height="32"  x="1098"  y="145"  ]
[button  storage=""  target="*fin_no"  graphic="m/no-.png"  width="97"  height="32"  x="1179"  y="145"  ]
[elsif exp="f.fin_choice==0" ]
[button  storage=""  target="*fin_yes"  graphic="m/yes-.png"  width="73"  height="32"  x="1098"  y="145"  ]
[button  storage=""  target="*fin_no"  graphic="m/no.png"  width="97"  height="32"  x="1179"  y="145"  ]
[endif]

[if exp="f.fin_in_out==1" ]
[button  storage=""  target="*choice_in"  graphic="m/in.png"  width="90"  height="32"  x="915"  y="199"  ]
[button  storage=""  target="*choice_out"  graphic="m/out-.png"  width="117"  height="32"  x="1016"  y="199"  ]
[elsif exp="f.fin_in_out==0" ]
[button  storage=""  target="*choice_in"  graphic="m/in-.png"  width="90"  height="32"  x="915"  y="199"  ]
[button  storage=""  target="*choice_out"  graphic="m/out.png"  width="117"  height="32"  x="1016"  y="199"  ]
[endif]

[if exp="f.xr==1" ]
[button  storage=""  target="*xr_check"  graphic="m/xray.png"  width="107"  height="33"  x="778"  y="269"  ]
[elsif exp="f.xr==0" ]
[button  storage=""  target="*xr_check"  graphic="m/xray-.png"  width="107"  height="33"  x="778"  y="269"  ]
[endif]

[if exp="f.tx==1" ]
[button  storage=""  target="*tx_check"  graphic="m/word.png"  width="79"  height="33"  x="895"  y="269"  ]
[elsif exp="f.tx==0" ]
[button  storage=""  target="*tx_check"  graphic="m/word-.png"  width="79"  height="33"  x="895"  y="269"  ]
[endif]

[if exp="f.se==1" ]
[button  storage=""  target="*se_check"  graphic="m/sound.png"  width="79"  height="33"  x="984"  y="269"  ]
[elsif exp="f.se==0" ]
[button  storage=""  target="*se_check"  graphic="m/sound-.png"  width="79"  height="33"  x="984"  y="269"  ]
[endif]

[if exp="f.ef==1" ]
[button  storage=""  target="*ef_check"  graphic="m/af.png"  width="130"  height="33"  x="1070"  y="269"  ]
[elsif exp="f.ef==0" ]
[button  storage=""  target="*ef_check"  graphic="m/af-.png"  width="130"  height="33"  x="1070"  y="269"  ]
[endif]

[if exp="f.full==1" ]
[button  storage=""  target="*full_screen"  graphic="m/win.png"  width="135"  height="35"  x="779"  y="520"  ]
[elsif exp="f.full==0" ]
[button  storage=""  target="*full_screen"  graphic="m/full.png"  width="186"  height="35"  x="924"  y="520"  ]
[endif]

[button  storage=""  target="*tx_speed0"  graphic="0.png"  width="38"  height="34"  x="817"  y="372"  ]
[button  storage=""  target="*tx_speed1"  graphic="1.png"  width="41"  height="34"  x="853"  y="372"  ]
[button  storage=""  target="*tx_speed2"  graphic="2.png"  width="43"  height="34"  x="893"  y="372"  ]
[button  storage=""  target="*tx_speed3"  graphic="3.png"  width="40"  height="34"  x="933"  y="372"  ]
[button  storage=""  target="*tx_speed4"  graphic="4.png"  width="41"  height="34"  x="971"  y="372"  ]
[button  storage=""  target="*tx_speed5"  graphic="5.png"  width="42"  height="34"  x="1011"  y="372"  ]
[button  storage=""  target="*tx_speed6"  graphic="6.png"  width="38"  height="34"  x="1051"  y="372"  ]
[button  storage=""  target="*tx_speed7"  graphic="7.png"  width="40"  height="34"  x="1088"  y="372"  ]
[button  storage=""  target="*tx_speed8"  graphic="8.png"  width="40"  height="34"  x="1127"  y="372"  ]
[button  storage=""  target="*tx_speed9"  graphic="9.png"  width="38"  height="34"  x="1166"  y="372"  ]
[button  storage=""  target="*tx_speed10"  graphic="10.png"  width="39"  height="34"  x="1204"  y="372"  ]

[s  ]

*tx_speed0
[cm]
[delay speed=32]
[jump  storage=""  target="*tx_speed_after" ]
*tx_speed1
[cm]
[delay speed=29]
[jump  storage=""  target="*tx_speed_after" ]
*tx_speed2
[cm]
[delay speed=26]
[jump  storage=""  target="*tx_speed_after" ]
*tx_speed3
[cm]
[delay speed=23]
[jump  storage=""  target="*tx_speed_after" ]
*tx_speed4
[cm]
[delay speed=20]
[jump  storage=""  target="*tx_speed_after" ]
*tx_speed5
[cm]
[delay speed=17]
[jump  storage=""  target="*tx_speed_after" ]
*tx_speed6
[cm]
[delay speed=14]
[jump  storage=""  target="*tx_speed_after" ]
*tx_speed7
[cm]
[delay speed=11]
[jump  storage=""  target="*tx_speed_after" ]
*tx_speed8
[cm]
[delay speed=8]
[jump  storage=""  target="*tx_speed_after" ]
*tx_speed9
[cm]
[delay speed=5]
[jump  storage=""  target="*tx_speed_after" ]
*tx_speed10
[cm]
[delay speed=1]
[jump  storage=""  target="*tx_speed_after" ]

*tx_speed_after
#
正文显示速度试验[p]
[jump  storage=""  target="*setting" ]

*full_screen
[cm  ]
[screen_full]
[jump  storage=""  target="*setting" ]

*return_menu
[cm  ]
[hide_skip]
[cancelskip]
[chara_mod  name="window"  time="0"  storage="chara/12/act-win.png" ]
[jump  storage="after_action.ks"  target="*return_menu" ]

*fin_yes
[cm  ]
[eval exp="f.fin_choice=1" ]

[jump  storage=""  target="*setting" ]
*fin_no
[cm  ]
[eval exp="f.fin_choice=0" ]

[jump  storage=""  target="*setting" ]

*choice_in
[cm  ]
[eval exp="f.fin_in_out=1" ]
[jump  storage=""  target="*setting" ]

*choice_out
[cm  ]
[eval exp="f.fin_in_out=0" ]
[jump  storage=""  target="*setting" ]

*xr_check
[cm  ]
[if exp="f.xr==1" ]
[eval exp="f.xr=0" ]
[elsif exp="f.xr==0" ]
[eval exp="f.xr=1" ]
[endif]
[jump  storage=""  target="*setting" ]

*tx_check
[cm  ]
[if exp="f.tx==1" ]
[eval exp="f.tx=0" ]

[elsif exp="f.tx==0" ]
[eval exp="f.tx=1" ]
[endif]
[jump  storage=""  target="*setting" ]

*se_check
[cm  ]
[if exp="f.se==1" ]
[eval exp="f.se=0" ]

[elsif exp="f.se==0" ]
[eval exp="f.se=1" ]
[endif]
[jump  storage=""  target="*setting" ]

*ef_check
[cm  ]
[if exp="f.ef==1" ]
[eval exp="f.ef=0" ]

[elsif exp="f.ef==0" ]
[eval exp="f.ef=1" ]
[endif]
[jump  storage=""  target="*setting" ]

*record
[cm  ]
;[show_skip]
#
和希爾薇的生活已經過了[emb exp="f.day" ]天[r]

[if exp="f.sex==0 || f.sex=='yet'" ]
[else]
性交[emb exp="f.sex" ]回、
[endif]

[if exp="f.heavn==0" ]
[else]
絶頂[emb exp="f.heavn" ]回、
[endif]

[if exp="f.cum==0" ]
[else]
中出[emb exp="f.cum" ]回、
[endif]
[r]

[if exp="f.kake==0" ]
[else]
射出[emb exp="f.kake" ]回、
[endif]

[if exp="f.blow==0" ]
[else]
口交[emb exp="f.blow" ]回、
[endif]

[if exp="f.drink==0" ]
[else]
飲精[emb exp="f.drink" ]回、
[endif]

[if exp="f.self==0" ]
[else]
自慰[emb exp="f.self" ]回
[endif]

[r]

[if exp="f.book=='non'" ]
[else]
所持品-粉色的花 [emb exp="f.flower" ] 個、
[endif]

[if exp="f.flower_b==0" ]
[elsif exp="f.flower_b>=1" ]
所持品-藍色的花 [emb exp="f.flower_b" ] 個、
[endif]

[if exp="f.book=='non'" ]
[else]
媚薬[emb exp="f.drugx" ]個、
[endif]

[if exp="f.book=='non'" ]
[else]
春藥[emb exp="f.drugz" ]個
[endif]
[p]

[jump  storage=""  target="*return_menu" ]

*sil_state
[cm  ]
;[show_skip]
[if exp="f.lust<=0" ]
[eval exp="f.lust=0" ]
[endif]

[if exp="f.love>=9999" ]
[eval exp="f.love=9999" ]
[endif]

[if exp="f.lust>=9999" ]
[eval exp="f.lust=9999" ]
[endif]

#
[if exp="f.step==1" ]
希爾薇還認為您是陌生人[r]
親愛度「[emb exp="f.love" ]」[p]
[jump  storage="step1.ks"  target="*before_menu" ]

[elsif exp="f.step==2" ]
希爾薇已經認識您了[r]
親愛度「[emb exp="f.love" ]」[p]
[jump  storage="step2.ks"  target="*before_menu" ]

[elsif exp="f.step==3" ]
希爾薇把您作為同居的人信賴著[r]
親愛度「[emb exp="f.love" ]」[p]
[jump  storage="step3.ks"  target="*before_menu" ]

[elsif exp="f.step==4" ]
希爾薇和您在壹起的時候很開心[r]
親愛度「[emb exp="f.love" ]」[p]
[jump  storage="step4.ks"  target="*before_menu" ]

[elsif exp="f.step>=6 && f.love>1100 && f.lust>600" ]
希爾薇只要有壹刻離開您就會惶恐不安[r]
親愛度「[emb exp="f.love" ]」
淫乱度「[emb exp="f.lust" ]」
[kando][p]
[jump  storage="after_action.ks"  target="*return_menu" ]

[elsif exp="f.step>=6 && f.love>800 && f.lust>400" ]
希爾薇如果沒有您就會無法生存[r]
親愛度「[emb exp="f.love" ]」
淫乱度「[emb exp="f.lust" ]」
[kando][p]
[jump  storage="after_action.ks"  target="*return_menu" ]

[elsif exp="f.step==5" ]
希爾薇對您有明確的好意[lr]
親愛度「[emb exp="f.love" ]」[p]
[jump  storage="step5.ks"  target="*before_menu" ]

[elsif exp="f.step>=6 && f.love>400" ]
希爾薇的腦子裏除了您已經沒有別的東西了[lr]
親愛度「[emb exp="f.love" ]」
淫乱度「[emb exp="f.lust" ]」
[kando][p]
[jump  storage="after_action.ks"  target="*return_menu" ]

[elsif exp="f.step>=6" ]
希爾薇把您放在了心裏最深處[r]
親愛度「[emb exp="f.love" ]」
淫乱度「[emb exp="f.lust" ]」[r]
[kando]
[p]
[jump  storage="after_action.ks"  target="*return_menu" ]
[endif]


*dress_up
[cm  ]
;[show_skip]
[call  storage="new_c.ks"  target="*new_c" ]
[eval exp="f.ch_win=1" ]
[chara_mod  name="window"  time="0"  storage="chara/12/dress-win.png" ]
[button  storage=""  target="*return_menu"  graphic="m/back.png"  width="104"  height="33"  x="1188"  y="563"  ]
[button  storage=""  target="*c_a"  graphic="c/boro.png"  width="83"  height="34"  x="730"  y="123"  ]
[if exp="f.lust>20" ]
[button  storage=""  target="*c_non"  graphic="c/undress.png"  x="820"  y="122"  ]
[endif]

[if exp="f.self>=1" ]
[button  storage=""  target="*c_man"  graphic="c/mans.png" x="960"  y="122"  ]
[endif]
[if exp="f.self>=1" ]
[button  storage=""  target="*c_man_"  graphic="c/mans-.png" x="1075"  y="122"  ]
[endif]

[if exp="f.c_b1==1" ]
[button  storage=""  target="*c_b1"  graphic="c/tite.png"  x="698"  y="180"  ]
[endif]
[if exp="f.c_b2==1" ]
[button  storage=""  target="*c_b2"  graphic="c/black.png"  x="912"  y="180"  ]
[endif]
[if exp="f.c_b3==1" ]
[button  storage=""  target="*c_b3"  graphic="c/magend.png"   x="968"  y="180"  ]
[endif]
[if exp="f.c_b4==1" ]
[button  storage=""  target="*c_b4"  graphic="c/red.png"   x="1024"  y="180"  ]
[endif]
[if exp="f.c_b5==1" ]
[button  storage=""  target="*c_b5"  graphic="c/green.png"   x="1082"  y="180"  ]
[endif]
[if exp="f.c_c1==1" ]
[button  storage=""  target="*c_c1"  graphic="c/hira.png"  x="698"  y="230"  ]
[endif]
[if exp="f.c_c2==1" ]
[button  storage=""  target="*c_c2"  graphic="c/black.png"  x="890"  y="230"  ]
[endif]
[if exp="f.c_c3==1" ]
[button  storage=""  target="*c_c3"  graphic="c/green.png"    x="945"  y="230"  ]
[endif]
[if exp="f.c_c4==1" ]
[button  storage=""  target="*c_c4"  graphic="c/red.png"  x="999"  y="230"  ]
[endif]
[if exp="f.c_c5==1" ]
[button  storage=""  target="*c_c5"  graphic="c/magend.png"  x="1057"  y="230"  ]

[endif]
[if exp="f.c_d1==1" ]
[button  storage=""  target="*c_d1"  graphic="c/under.png"  x="698"  y="380"  ]
[endif]
[if exp="f.c_d2==1" ]
[button  storage=""  target="*c_d2"  graphic="c/black.png"  x="921"  y="380"  ]
[endif]
[if exp="f.c_d3==1" ]
[button  storage=""  target="*c_d3"  graphic="c/pink.png"   x="975"  y="380"  ]
[endif]

[if exp="f.c_e1==1" ]
[button  storage=""  target="*c_e1"  graphic="c/onep.png"  x="698"  y="280"  ]
[endif]
[if exp="f.c_e2==1" ]
[button  storage=""  target="*c_e2"  graphic="c/yellow.png"  x="840"  y="280"  ]
[endif]
[if exp="f.c_e3==1" ]
[button  storage=""  target="*c_e3"  graphic="c/red.png"  x="915"  y="280"  ]
[endif]
[if exp="f.c_e4==1" ]
[button  storage=""  target="*c_e4"  graphic="c/magend.png"  x="970"  y="280"  ]
[endif]
[if exp="f.c_e5==1" ]
[button  storage=""  target="*c_e5"  graphic="c/white.png"  x="1025"  y="280"  ]
[endif]

[if exp="f.c_f1==1" ]
[button  storage=""  target="*c_f1"  graphic="c/nurse.png"  x="698"  y="330"  ]
[endif]
[if exp="f.c_f2==1" ]
[button  storage=""  target="*c_f2"  graphic="c/pink.png"  x="860"  y="330"  ]
[endif]
[if exp="f.c_f3==1" ]
[button  storage=""  target="*c_f3"  graphic="c/black.png"  x="935"  y="330"  ]
[endif]

[if exp="f.c_g1==1" ]
[button  storage=""  target="*c_g1"  graphic="c/wahuku.png"  x="698"  y="430"  ]
[endif]
[if exp="f.c_g2==1" ]
[button  storage=""  target="*c_g2"  graphic="c/blue.png"  x="815"  y="430"  ]
[endif]
[if exp="f.c_g3==1" ]
[button  storage=""  target="*c_g3"  graphic="c/magend.png"  x="868"  y="430"  ]
[endif]
[if exp="f.c_g4==1" ]
[button  storage=""  target="*c_g4"  graphic="c/pink.png"  x="925"  y="430"  ]
[endif]
[if exp="f.c_g5==1" ]
[button  storage=""  target="*c_g5"  graphic="c/black.png"  x="1000"  y="430"  ]
[endif]

[if exp="f.c_h1==1" ]
[button  storage=""  target="*c_h1"  graphic="c/sera.png"  x="698"  y="480"  ]
[endif]
[if exp="f.c_h2==1" ]
[button  storage=""  target="*c_h2"  graphic="c/black.png"  x="835"  y="480"  ]
[endif]
[if exp="f.c_h3==1" ]
[button  storage=""  target="*c_h3"  graphic="c/long-w.png"  x="888"  y="480"  ]
[endif]
[if exp="f.c_h4==1" ]
[button  storage=""  target="*c_h4"  graphic="c/long-b.png"  x="1008"  y="480"  ]
[endif]

[if exp="f.c_i1==1" ]
[button  storage=""  target="*c_i1"  graphic="c/epdress.png"  x="698"  y="530"  ]
[endif]
[if exp="f.c_i2==1" ]
[button  storage=""  target="*c_i2"  graphic="c/blue.png"  x="865"  y="530"  ]
[endif]
[if exp="f.c_i3==1" ]
[button  storage=""  target="*c_i3"  graphic="c/magend.png"  x="918"  y="530"  ]
[endif]
[if exp="f.c_i4==1" ]
[button  storage=""  target="*c_i4"  graphic="c/green.png"  x="975"  y="530"  ]
[endif]
[if exp="f.c_i5==1" ]
[button  storage=""  target="*c_i5"  graphic="c/pink.png"  x="1030"  y="530"  ]
[endif]

[if exp="f.ch_win==1" ]
[button  storage=""  target="*dress_up"  graphic="c/clothes.png"  width="58"  height="42"  x="1003"  y="68"  ]
[else]
[button  storage=""  target="*dress_up"  graphic="c/clothes-.png"  width="58"  height="42"  x="1003"  y="68"  ]
[endif]

[if exp="f.ch_win==2" ]
[button  storage=""  target="*dress_hair"  graphic="c/hair.png"  width="86"  height="43"  x="1053"  y="68"  ]
[else]
[button  storage=""  target="*dress_hair"  graphic="c/hair-.png"  width="86"  height="43"  x="1053"  y="68"  ]
[endif]

[if exp="f.ch_win==3" ]
[button  storage=""  target="*dress_pin"  graphic="c/acce.png"  width="114"  height="42"  x="1131"  y="68"  ]
[else]
[button  storage=""  target="*dress_pin"  graphic="c/acce-.png"  width="114"  height="42"  x="1131"  y="68"  ]
[endif]

[if exp="f.ch_win==4" ]
[button  storage=""  target="*dress_leg"  graphic="c/leg.png"  width="48"  height="42"  x="1238"  y="68"  ]
[else]
[button  storage=""  target="*dress_leg"  graphic="c/leg-.png"  width="48"  height="42"  x="1238"  y="68"  ]
[endif]

[s  ]

*c_non
[cm  ]
[chara_mod  name="clothes"  time="0"  storage="chara/clothes-s/c-00.png" ]
[eval exp="f.dress=0" ]
[ep_a]
[jump  storage=""  target="*dress_up" ]

*c_a
[cm  ]
[chara_mod  name="clothes"  time="0"  storage="chara/clothes-s/c-a.png" ]
[eval exp="f.dress=1" ]
[ep_a]
[jump  storage=""  target="*dress_up" ]

*c_b1
[cm  ]
[chara_mod  name="clothes"  time="0"  storage="chara/clothes-s/c-b1.png" ]
[eval exp="f.dress=11" ]
[ep_b]
[jump  storage=""  target="*dress_up" ]

*c_b2
[cm  ]
[chara_mod  name="clothes"  time="0"  storage="chara/clothes-s/c-b2.png" ]
[eval exp="f.dress=12" ]
[ep_b]
[jump  storage=""  target="*dress_up" ]

*c_b3
[cm  ]
[chara_mod  name="clothes"  time="0"  storage="chara/clothes-s/c-b3.png" ]
[eval exp="f.dress=13" ]
[ep_b]
[jump  storage=""  target="*dress_up" ]

*c_b4
[cm  ]
[chara_mod  name="clothes"  time="0"  storage="chara/clothes-s/c-b4.png" ]
[eval exp="f.dress=14" ]
[ep_b]
[jump  storage=""  target="*dress_up" ]

*c_b5
[cm  ]
[chara_mod  name="clothes"  time="0"  storage="chara/clothes-s/c-b5.png" ]
[eval exp="f.dress=15" ]
[ep_b]
[jump  storage=""  target="*dress_up" ]

*c_c1
[cm  ]
[chara_mod  name="clothes"  time="0"  storage="chara/clothes-s/c-c1.png" ]
[eval exp="f.dress=21" ]
[ep_a]
[jump  storage=""  target="*dress_up" ]

*c_c2
[cm  ]
[chara_mod  name="clothes"  time="0"  storage="chara/clothes-s/c-c2.png" ]
[eval exp="f.dress=22" ]
[ep_a]
[jump  storage=""  target="*dress_up" ]

*c_c3
[cm  ]
[chara_mod  name="clothes"  time="0"  storage="chara/clothes-s/c-c3.png" ]
[eval exp="f.dress=23" ]
[ep_a]
[jump  storage=""  target="*dress_up" ]

*c_c4
[cm  ]
[chara_mod  name="clothes"  time="0"  storage="chara/clothes-s/c-c4.png" ]
[eval exp="f.dress=24" ]
[ep_a]
[jump  storage=""  target="*dress_up" ]

*c_c5
[cm  ]
[chara_mod  name="clothes"  time="0"  storage="chara/clothes-s/c-c5.png" ]
[eval exp="f.dress=25" ]
[ep_a]
[jump  storage=""  target="*dress_up" ]

*c_d1
[cm  ]
[chara_mod  name="clothes"  time="0"  storage="chara/clothes-s/c-d1.png" ]
[eval exp="f.dress=31" ]
[ep_a]
[jump  storage=""  target="*dress_up" ]

*c_d2
[cm  ]
[chara_mod  name="clothes"  time="0"  storage="chara/clothes-s/c-d2.png" ]
[eval exp="f.dress=32" ]
[ep_a]
[jump  storage=""  target="*dress_up" ]

*c_d3
[cm  ]
[chara_mod  name="clothes"  time="0"  storage="chara/clothes-s/c-d3.png" ]
[eval exp="f.dress=33" ]
[ep_a]
[jump  storage=""  target="*dress_up" ]

*c_e1
[cm  ]
[chara_mod  name="clothes"  time="0"  storage="chara/clothes-s/c-e1.png" ]
[eval exp="f.dress=41" ]
[ep_a]
[jump  storage=""  target="*dress_up" ]

*c_e2
[cm  ]
[chara_mod  name="clothes"  time="0"  storage="chara/clothes-s/c-e2.png" ]
[eval exp="f.dress=42" ]
[ep_a]
[jump  storage=""  target="*dress_up" ]

*c_e3
[cm  ]
[chara_mod  name="clothes"  time="0"  storage="chara/clothes-s/c-e3.png" ]
[eval exp="f.dress=43" ]
[ep_a]
[jump  storage=""  target="*dress_up" ]

*c_e4
[cm  ]
[chara_mod  name="clothes"  time="0"  storage="chara/clothes-s/c-e4.png" ]
[eval exp="f.dress=44" ]
[ep_a]
[jump  storage=""  target="*dress_up" ]

*c_e5
[cm  ]
[chara_mod  name="clothes"  time="0"  storage="chara/clothes-s/c-e5.png" ]
[eval exp="f.dress=45" ]
[ep_a]
[jump  storage=""  target="*dress_up" ]

*c_f1
[cm  ]
[chara_mod  name="clothes"  time="0"  storage="chara/clothes-s/c-f1.png" ]
[eval exp="f.dress=51" ]
[ep_a]
[jump  storage=""  target="*dress_up" ]


*c_f2
[cm  ]
[chara_mod  name="clothes"  time="0"  storage="chara/clothes-s/c-f2.png" ]
[eval exp="f.dress=52" ]
[ep_a]
[jump  storage=""  target="*dress_up" ]


*c_f3
[cm  ]
[chara_mod  name="clothes"  time="0"  storage="chara/clothes-s/c-f3.png" ]
[eval exp="f.dress=53" ]
[ep_a]
[jump  storage=""  target="*dress_up" ]


*c_g1
[cm  ]
[chara_mod  name="clothes"  time="0"  storage="chara/clothes-s/c-g1.png" ]
[eval exp="f.dress=61" ]
[ep_c]
[jump  storage=""  target="*dress_up" ]

*c_g2
[cm  ]
[chara_mod  name="clothes"  time="0"  storage="chara/clothes-s/c-g2.png" ]
[eval exp="f.dress=62" ]
[ep_c]
[jump  storage=""  target="*dress_up" ]

*c_g3
[cm  ]
[chara_mod  name="clothes"  time="0"  storage="chara/clothes-s/c-g3.png" ]
[eval exp="f.dress=63" ]
[ep_c]
[jump  storage=""  target="*dress_up" ]

*c_g4
[cm  ]
[chara_mod  name="clothes"  time="0"  storage="chara/clothes-s/c-g4.png" ]
[eval exp="f.dress=64" ]
[ep_c]
[jump  storage=""  target="*dress_up" ]

*c_g5
[cm  ]
[chara_mod  name="clothes"  time="0"  storage="chara/clothes-s/c-g5.png" ]
[eval exp="f.dress=65" ]
[ep_c]
[jump  storage=""  target="*dress_up" ]

*c_h1
[cm  ]
[chara_mod  name="clothes"  time="0"  storage="chara/clothes-s/c-h1.png" ]
[eval exp="f.dress=71" ]
[ep_a]
[jump  storage=""  target="*dress_up" ]

*c_h2
[cm  ]
[chara_mod  name="clothes"  time="0"  storage="chara/clothes-s/c-h2.png" ]
[eval exp="f.dress=72" ]
[ep_a]
[jump  storage=""  target="*dress_up" ]

*c_h3
[cm  ]
[chara_mod  name="clothes"  time="0"  storage="chara/clothes-s/c-h3.png" ]
[eval exp="f.dress=73" ]
[ep_d]
[jump  storage=""  target="*dress_up" ]

*c_h4
[cm  ]
[chara_mod  name="clothes"  time="0"  storage="chara/clothes-s/c-h4.png" ]
[eval exp="f.dress=74" ]
[ep_d]
[jump  storage=""  target="*dress_up" ]

*c_i1
[cm  ]
[chara_mod  name="clothes"  time="0"  storage="chara/clothes-s/c-i1.png" ]
[eval exp="f.dress=81" ]
[ep_non]
[jump  storage=""  target="*dress_up" ]

*c_i2
[cm  ]
[chara_mod  name="clothes"  time="0"  storage="chara/clothes-s/c-i2.png" ]
[eval exp="f.dress=82" ]
[ep_non]
[jump  storage=""  target="*dress_up" ]

*c_i3
[cm  ]
[chara_mod  name="clothes"  time="0"  storage="chara/clothes-s/c-i3.png" ]
[eval exp="f.dress=83" ]
[ep_non]
[jump  storage=""  target="*dress_up" ]

*c_i4
[cm  ]
[chara_mod  name="clothes"  time="0"  storage="chara/clothes-s/c-i4.png" ]
[eval exp="f.dress=84" ]
[ep_non]
[jump  storage=""  target="*dress_up" ]

*c_i5
[cm  ]
[chara_mod  name="clothes"  time="0"  storage="chara/clothes-s/c-i5.png" ]
[eval exp="f.dress=85" ]
[ep_non]
[jump  storage=""  target="*dress_up" ]


*c_man
[cm  ]
[chara_mod  name="clothes"  time="0"  storage="chara/clothes-s/c-man.png" ]
[eval exp="f.dress=5" ]
[ep_non]
[jump  storage=""  target="*dress_up" ]

*c_man_
[cm  ]
[chara_mod  name="clothes"  time="0"  storage="chara/clothes-s/c-man-.png" ]
[eval exp="f.dress=6" ]
[ep_non]
[jump  storage=""  target="*dress_up" ]




*dress_hair
[cm  ]
[eval exp="f.ch_win=2" ]
[chara_mod  name="window"  time="0"  storage="chara/12/dress-win.png" ]
[button  storage=""  target="*return_menu"  graphic="m/back.png"  width="104"  height="33"  x="1188"  y="563"  ]
[button  storage=""  target="*r_non"  graphic="c/non.png"  width="68"  height="33"  x="731"  y="123"  ]
[if exp="f.r_a1==1" ]
[button  storage=""  target="*r_a1"  graphic="c/ribbon-t.png"  x="695"  y="180"  ]
[endif]
[if exp="f.r_a2==1" ]
[button  storage=""  target="*r_a2"  graphic="c/black.png"  x="881"  y="180"  ]
[endif]
[if exp="f.r_a3==1" ]
[button  storage=""  target="*r_a3"  graphic="c/red.png"  x="940"  y="180"  ]
[endif]
[if exp="f.r_a4==1" ]
[button  storage=""  target="*r_a4"  graphic="c/yellow.png"  x="997"  y="180"  ]
[endif]
[if exp="f.r_a5==1" ]
[button  storage=""  target="*r_a5"  graphic="c/white.png"  x="1075"  y="180"  ]
[endif]


;[if exp="f.r_a1==1" ]
;[button  storage=""  target="*r_a1_1"  graphic="c/hair1.png"  x="695"  y="230"  ]
;[endif]
;[if exp="f.r_a2==1" ]
;[button  storage=""  target="*r_a2_1"  graphic="c/black.png"  x="881"  y="230"  ]
;[endif]
;[if exp="f.r_a3==1" ]
;[button  storage=""  target="*r_a3_1"  graphic="c/red.png"  x="940"  y="230"  ]
;[endif]
;[if exp="f.r_a4==1" ]
;[button  storage=""  target="*r_a4_1"  graphic="c/yellow.png"  x="997"  y="230"  ]
;[endif]
;[if exp="f.r_a5==1" ]
;[button  storage=""  target="*r_a5_1"  graphic="c/white.png"  x="1075"  y="230"  ]
;[endif]


;[if exp="f.r_a1==1" ]
;[button  storage=""  target="*r_a1_2"  graphic="c/hair2.png"  x="695"  y="280"  ]
;[endif]
;[if exp="f.r_a2==1" ]
;[button  storage=""  target="*r_a2_2"  graphic="c/black.png"  x="881"  y="280"  ]
;[endif]
;[if exp="f.r_a3==1" ]
;[button  storage=""  target="*r_a3_2"  graphic="c/red.png"  x="940"  y="280"  ]
;[endif]
;[if exp="f.r_a4==1" ]
;[button  storage=""  target="*r_a4_2"  graphic="c/yellow.png"  x="997"  y="280"  ]
;[endif]
;[if exp="f.r_a5==1" ]
;[button  storage=""  target="*r_a5_2"  graphic="c/white.png"  x="1075"  y="280"  ]
;[endif]



[if exp="f.r_b1==1" ]
[button  storage=""  target="*r_b1"  graphic="c/ribbon.png"  x="695"  y="230"  ]
[endif]
[if exp="f.r_b2==1" ]
[button  storage=""  target="*r_b2"  graphic="c/black.png"  x="881"  y="230"  ]
[endif]
[if exp="f.r_b3==1" ]
[button  storage=""  target="*r_b3"  graphic="c/red.png"  x="939"  y="230"  ]
[endif]
[if exp="f.r_b4==1" ]
[button  storage=""  target="*r_b4"  graphic="c/white.png"  x="997"  y="230"  ]
[endif]

[if exp="f.r_c1==1" ]
[button  storage=""  target="*r_c1"  graphic="c/kanzashi-g.png"  x="695"  y="280"  ]
[endif]
[if exp="f.r_c2==1" ]
[button  storage=""  target="*r_c2"  graphic="c/kanzashi-s.png"  x="800"  y="280"  ]
[endif]


[if exp="f.ch_win==1" ]
[button  storage=""  target="*dress_up"  graphic="c/clothes.png"  width="58"  height="42"  x="1003"  y="68"  ]
[else]
[button  storage=""  target="*dress_up"  graphic="c/clothes-.png"  width="58"  height="42"  x="1003"  y="68"  ]
[endif]

[if exp="f.ch_win==2" ]
[button  storage=""  target="*dress_hair"  graphic="c/hair.png"  width="86"  height="43"  x="1053"  y="68"  ]
[else]
[button  storage=""  target="*dress_hair"  graphic="c/hair-.png"  width="86"  height="43"  x="1053"  y="68"  ]
[endif]

[if exp="f.ch_win==3" ]
[button  storage=""  target="*dress_pin"  graphic="c/acce.png"  width="114"  height="42"  x="1131"  y="68"  ]
[else]
[button  storage=""  target="*dress_pin"  graphic="c/acce-.png"  width="114"  height="42"  x="1131"  y="68"  ]
[endif]

[if exp="f.ch_win==4" ]
[button  storage=""  target="*dress_leg"  graphic="c/leg.png"  width="48"  height="42"  x="1238"  y="68"  ]
[else]
[button  storage=""  target="*dress_leg"  graphic="c/leg-.png"  width="48"  height="42"  x="1238"  y="68"  ]
[endif]
[s  ]

*r_non
[cm  ]
[chara_mod  name="ribbon"  time="0"  storage="chara/ribbon-s/r-00.png" ]
[chara_mod  name="body"  time="0"  storage="chara/body-s/body-a.png" ]
[eval exp="f.hair=0" ]
[jump  storage=""  target="*dress_hair" ]

*r_a1
[cm  ]
[chara_mod  name="body"  time="0"  storage="chara/body-s/body-b.png" ]
[chara_mod  name="ribbon"  time="0"  storage="chara/ribbon-s/r-a1.png" ]
[eval exp="f.hair=1" ]
[jump  storage=""  target="*dress_hair" ]

*r_a2
[cm  ]
[chara_mod  name="body"  time="0"  storage="chara/body-s/body-b.png" ]
[chara_mod  name="ribbon"  time="0"  storage="chara/ribbon-s/r-a2.png" ]
[eval exp="f.hair=2" ]
[jump  storage=""  target="*dress_hair" ]

*r_a3
[cm  ]
[chara_mod  name="body"  time="0"  storage="chara/body-s/body-b.png" ]
[chara_mod  name="ribbon"  time="0"  storage="chara/ribbon-s/r-a3.png" ]
[eval exp="f.hair=3" ]
[jump  storage=""  target="*dress_hair" ]

*r_a4
[cm  ]
[chara_mod  name="body"  time="0"  storage="chara/body-s/body-b.png" ]
[chara_mod  name="ribbon"  time="0"  storage="chara/ribbon-s/r-a4.png" ]
[eval exp="f.hair=4" ]
[jump  storage=""  target="*dress_hair" ]

*r_a5
[cm  ]
[chara_mod  name="body"  time="0"  storage="chara/body-s/body-b.png" ]
[chara_mod  name="ribbon"  time="0"  storage="chara/ribbon-s/r-a5.png" ]
[eval exp="f.hair=5" ]
[jump  storage=""  target="*dress_hair" ]


*r_a1_2
[cm  ]
[chara_mod  name="body"  time="0"  storage="chara/body-s/body-b.png" ]
[chara_mod  name="ribbon"  time="0"  storage="chara/ribbon-s/r-a1_2.png" ]
[eval exp="f.hair=41" ]
[jump  storage=""  target="*dress_hair" ]


*r_a1_1
[cm  ]
[chara_mod  name="body"  time="0"  storage="chara/body-s/body-b.png" ]
[chara_mod  name="ribbon"  time="0"  storage="chara/ribbon-s/r-a1_1.png" ]
[eval exp="f.hair=21" ]
[jump  storage=""  target="*dress_hair" ]


*r_a2_1
[cm  ]
[chara_mod  name="body"  time="0"  storage="chara/body-s/body-b.png" ]
[chara_mod  name="ribbon"  time="0"  storage="chara/ribbon-s/r-a2_1.png" ]
[eval exp="f.hair=22" ]

[jump  storage=""  target="*dress_hair" ]

*r_a3_1
[cm  ]
[chara_mod  name="body"  time="0"  storage="chara/body-s/body-b.png" ]
[chara_mod  name="ribbon"  time="0"  storage="chara/ribbon-s/r-a3_1.png" ]
[eval exp="f.hair=23" ]
[jump  storage=""  target="*dress_hair" ]

*r_a4_1
[cm  ]
[chara_mod  name="body"  time="0"  storage="chara/body-s/body-b.png" ]
[chara_mod  name="ribbon"  time="0"  storage="chara/ribbon-s/r-a4_1.png" ]
[eval exp="f.hair=24" ]
[jump  storage=""  target="*dress_hair" ]

*r_a5_1
[cm  ]
[chara_mod  name="body"  time="0"  storage="chara/body-s/body-b.png" ]
[chara_mod  name="ribbon"  time="0"  storage="chara/ribbon-s/r-a5_1.png" ]
[eval exp="f.hair=25" ]
[jump  storage=""  target="*dress_hair" ]


*r_a1_2
[cm  ]
[chara_mod  name="body"  time="0"  storage="chara/body-s/body-b.png" ]
[chara_mod  name="ribbon"  time="0"  storage="chara/ribbon-s/r-a1_2.png" ]
[eval exp="f.hair=31" ]
[jump  storage=""  target="*dress_hair" ]


*r_a2_2
[cm  ]
[chara_mod  name="body"  time="0"  storage="chara/body-s/body-b.png" ]
[chara_mod  name="ribbon"  time="0"  storage="chara/ribbon-s/r-a2_2.png" ]
[eval exp="f.hair=32" ]
[jump  storage=""  target="*dress_hair" ]

*r_a3_2
[cm  ]
[chara_mod  name="body"  time="0"  storage="chara/body-s/body-b.png" ]
[chara_mod  name="ribbon"  time="0"  storage="chara/ribbon-s/r-a3_2.png" ]
[eval exp="f.hair=33" ]
[jump  storage=""  target="*dress_hair" ]

*r_a4_2
[cm  ]
[chara_mod  name="body"  time="0"  storage="chara/body-s/body-b.png" ]
[chara_mod  name="ribbon"  time="0"  storage="chara/ribbon-s/r-a4_2.png" ]
[eval exp="f.hair=34" ]
[jump  storage=""  target="*dress_hair" ]

*r_a5_2
[cm  ]
[chara_mod  name="body"  time="0"  storage="chara/body-s/body-b.png" ]
[chara_mod  name="ribbon"  time="0"  storage="chara/ribbon-s/r-a5_2.png" ]
[eval exp="f.hair=35" ]
[jump  storage=""  target="*dress_hair" ]


*r_b1
[cm  ]
[chara_mod  name="body"  time="0"  storage="chara/body-s/body-b.png" ]
[chara_mod  name="ribbon"  time="0"  storage="chara/ribbon-s/r-b1.png" ]
[eval exp="f.hair=11" ]
[jump  storage=""  target="*dress_hair" ]

*r_b2
[cm  ]
[chara_mod  name="body"  time="0"  storage="chara/body-s/body-b.png" ]
[chara_mod  name="ribbon"  time="0"  storage="chara/ribbon-s/r-b2.png" ]
[eval exp="f.hair=12" ]
[jump  storage=""  target="*dress_hair" ]

*r_b3
[cm  ]
[chara_mod  name="body"  time="0"  storage="chara/body-s/body-b.png" ]
[chara_mod  name="ribbon"  time="0"  storage="chara/ribbon-s/r-b3.png" ]
[eval exp="f.hair=13" ]
[jump  storage=""  target="*dress_hair" ]

*r_b4
[cm  ]
[chara_mod  name="body"  time="0"  storage="chara/body-s/body-b.png" ]
[chara_mod  name="ribbon"  time="0"  storage="chara/ribbon-s/r-b4.png" ]
[eval exp="f.hair=14" ]
[jump  storage=""  target="*dress_hair" ]

*r_c1
[cm  ]
[chara_mod  name="body"  time="0"  storage="chara/body-s/body-b.png" ]
[chara_mod  name="ribbon"  time="0"  storage="chara/ribbon-s/r-c1.png" ]
[eval exp="f.hair=21" ]
[jump  storage=""  target="*dress_hair" ]

*r_c2
[cm  ]
[chara_mod  name="body"  time="0"  storage="chara/body-s/body-b.png" ]
[chara_mod  name="ribbon"  time="0"  storage="chara/ribbon-s/r-c2.png" ]
[eval exp="f.hair=22" ]
[jump  storage=""  target="*dress_hair" ]




*dress_pin
[cm  ]
[eval exp="f.ch_win=3" ]
[chara_mod  name="window"  time="0"  storage="chara/12/dress-win.png" ]
[button  storage=""  target="*return_menu"  graphic="m/back.png"  x="1188"  y="563"  ]
[button  storage=""  target="*p_non"  graphic="c/non.png"  x="732"  y="120"  ]

[if exp="f.p_a1==1" ]
[button  storage=""  target="*p_a1"  graphic="c/pin.png"  x="700"  y="165"  ]
[endif]
[if exp="f.p_a2==1" ]
[button  storage=""  target="*p_a2"  graphic="c/black.png"  x="881"  y="165"  ]
[endif]
[if exp="f.p_a3==1" ]
[button  storage=""  target="*p_a3"  graphic="c/green.png"  x="938"  y="165"  ]
[endif]
[if exp="f.p_a4==1" ]
[button  storage=""  target="*p_a4"  graphic="c/red.png"  x="993"  y="165"  ]
[endif]
[if exp="f.p_a5==1" ]
[button  storage=""  target="*p_a5"  graphic="c/yellow.png"  x="1049"  y="165"  ]
[endif]
[if exp="f.p_a6==1" ]
[button  storage=""  target="*p_a6"  graphic="c/white.png"    x="1128"  y="165"  ]
[endif]


[button  storage=""  target="*h_non"  graphic="c/non.png" x="700"  y="220"  ]

[if exp="f.h_a1==1" ]
[button  storage=""  target="*h_a1"  graphic="c/ear.png"  x="700"  y="260"  ]
[endif]
[if exp="f.h_a2==1" ]
[button  storage=""  target="*h_a2"  graphic="c/horn.png"  x="850"  y="260"  ]
[endif]
[if exp="f.h_b1==1" ]
[button  storage=""  target="*h_b1"  graphic="c/mugi.png"  x="1000"  y="260"  ]
[endif]
[if exp="f.h_b2==1" ]
[button  storage=""  target="*h_b2"  graphic="c/head-d.png"  x="1120"  y="260"  ]
[endif]

[if exp="f.c_f1==1" ]
[button  storage=""  target="*h_c1"  graphic="c/nurse-h.png"  x="698"  y="300"  ]
[endif]
[if exp="f.c_f2==1" ]
[button  storage=""  target="*h_c2"  graphic="c/pink.png"  x="860"  y="300"  ]
[endif]
[if exp="f.c_f3==1" ]
[button  storage=""  target="*h_c3"  graphic="c/black.png"  x="935"  y="300"  ]
[endif]


[if exp="f.g_a1==1" ]
[button  storage=""  target="*g_non"  graphic="c/non.png"   x="700"  y="355"  ]
[button  storage=""  target="*g_a1"  graphic="c/gl-c.png"   x="700"  y="395"  ]
[endif]
[if exp="f.g_a2==1" ]
[button  storage=""  target="*g_a2"  graphic="c/blue.png"   x="830"  y="395"  ]
[endif]
[if exp="f.g_a3==1" ]
[button  storage=""  target="*g_a3"  graphic="c/gray.png"   x="883"  y="395"  ]
[endif]
[if exp="f.g_a4==1" ]
[button  storage=""  target="*g_a4"  graphic="c/red.png"  x="953"  y="395"  ]
[endif]
[if exp="f.g_a5==1" ]
[button  storage=""  target="*g_a5"  graphic="c/pink.png"   x="1010"  y="395"  ]
[endif]

[if exp="f.g_b1==1" ]
[button  storage=""  target="*g_b1"  graphic="c/gl-s.png"   x="700"  y="435"  ]
[endif]
[if exp="f.g_b2==1" ]
[button  storage=""  target="*g_b2"  graphic="c/blue.png"   x="840"  y="435"  ]
[endif]
[if exp="f.g_b3==1" ]
[button  storage=""  target="*g_b3"  graphic="c/gray.png"   x="893"  y="435"  ]
[endif]
[if exp="f.g_b4==1" ]
[button  storage=""  target="*g_b4"  graphic="c/red.png"  x="963"  y="435"  ]
[endif]
[if exp="f.g_b5==1" ]
[button  storage=""  target="*g_b5"  graphic="c/pink.png"   x="1020"  y="435"  ]
[endif]

[if exp="f.g_c1==1" ]
[button  storage=""  target="*g_c1"  graphic="c/gl-h.png"   x="700"  y="475"  ]
[endif]
[if exp="f.g_c2==1" ]
[button  storage=""  target="*g_c2"  graphic="c/blue.png"   x="830"  y="475"  ]
[endif]
[if exp="f.g_c3==1" ]
[button  storage=""  target="*g_c3"  graphic="c/gray.png"   x="883"  y="475"  ]
[endif]
[if exp="f.g_c4==1" ]
[button  storage=""  target="*g_c4"  graphic="c/red.png"  x="953"  y="475"  ]
[endif]
[if exp="f.g_c5==1" ]
[button  storage=""  target="*g_c5"  graphic="c/pink.png"   x="1010"  y="475"  ]
[endif]

[if exp="f.ch_win==1" ]
[button  storage=""  target="*dress_up"  graphic="c/clothes.png"   x="1003"  y="68"  ]
[else]
[button  storage=""  target="*dress_up"  graphic="c/clothes-.png"  x="1003"  y="68"  ]
[endif]

[if exp="f.ch_win==2" ]
[button  storage=""  target="*dress_hair"  graphic="c/hair.png"  x="1053"  y="68"  ]
[else]
[button  storage=""  target="*dress_hair"  graphic="c/hair-.png"  x="1053"  y="68"  ]
[endif]

[if exp="f.ch_win==3" ]
[button  storage=""  target="*dress_pin"  graphic="c/acce.png"  x="1131"  y="68"  ]
[else]
[button  storage=""  target="*dress_pin"  graphic="c/acce-.png"  x="1131"  y="68"  ]
[endif]

[if exp="f.ch_win==4" ]
[button  storage=""  target="*dress_leg"  graphic="c/leg.png"  x="1238"  y="68"  ]
[else]
[button  storage=""  target="*dress_leg"  graphic="c/leg-.png"  x="1238"  y="68"  ]
[endif]
[s  ]

*p_non
[cm  ]
[chara_mod  name="pin"  time="0"  storage="chara/pin-s/p-00.png" ]
[chara_mod  name="face"  time="0"  storage="chara/face-s/s-s.png" ]
[eval exp="f.pin=0" ]
[jump  storage=""  target="*dress_pin" ]

*p_a1
[cm  ]
[chara_mod  name="face"  time="0"  storage="chara/face-s/s-s-.png" ]
[chara_mod  name="pin"  time="0"  storage="chara/pin-s/p-a1.png" ]
[eval exp="f.pin=1" ]
[jump  storage=""  target="*dress_pin" ]

*p_a2
[cm  ]
[chara_mod  name="face"  time="0"  storage="chara/face-s/s-s-.png" ]
[chara_mod  name="pin"  time="0"  storage="chara/pin-s/p-a2.png" ]
[eval exp="f.pin=2" ]
[jump  storage=""  target="*dress_pin" ]

*p_a3
[cm  ]
[chara_mod  name="face"  time="0"  storage="chara/face-s/s-s-.png" ]
[chara_mod  name="pin"  time="0"  storage="chara/pin-s/p-a3.png" ]
[eval exp="f.pin=3" ]
[jump  storage=""  target="*dress_pin" ]

*p_a4
[cm  ]
[chara_mod  name="face"  time="0"  storage="chara/face-s/s-s-.png" ]
[chara_mod  name="pin"  time="0"  storage="chara/pin-s/p-a4.png" ]
[eval exp="f.pin=4" ]
[jump  storage=""  target="*dress_pin" ]

*p_a5
[cm  ]
[chara_mod  name="face"  time="0"  storage="chara/face-s/s-s-.png" ]
[chara_mod  name="pin"  time="0"  storage="chara/pin-s/p-a5.png" ]
[eval exp="f.pin=5" ]
[jump  storage=""  target="*dress_pin" ]

*p_a6
[cm  ]
[chara_mod  name="face"  time="0"  storage="chara/face-s/s-s-.png" ]
[chara_mod  name="pin"  time="0"  storage="chara/pin-s/p-a6.png" ]
[eval exp="f.pin=6" ]
[jump  storage=""  target="*dress_pin" ]

*h_non
[cm  ]
[chara_mod  name="head"  time="0"  storage="chara/head-s/00.png" ]
[eval exp="f.head=0" ]
[jump  storage=""  target="*dress_pin" ]

*h_a1
[cm  ]
[chara_mod  name="head"  time="0"  storage="chara/head-s/h-a1.png" ]
[eval exp="f.head=1" ]
[jump  storage=""  target="*dress_pin" ]
*h_a2
[cm  ]
[chara_mod  name="head"  time="0"  storage="chara/head-s/h-a2.png" ]
[eval exp="f.head=2" ]
[jump  storage=""  target="*dress_pin" ]
*h_b1
[cm  ]
[chara_mod  name="head"  time="0"  storage="chara/head-s/h-b1.png" ]
[eval exp="f.head=11" ]
[jump  storage=""  target="*dress_pin" ]
*h_b2
[cm  ]
[chara_mod  name="head"  time="0"  storage="chara/head-s/h-b2.png" ]
[eval exp="f.head=12" ]
[jump  storage=""  target="*dress_pin" ]


*h_c1
[cm  ]
[chara_mod  name="head"  time="0"  storage="chara/head-s/h-c1.png" ]
[eval exp="f.head=21" ]
[jump  storage=""  target="*dress_pin" ]
*h_c2
[cm  ]
[chara_mod  name="head"  time="0"  storage="chara/head-s/h-c2.png" ]
[eval exp="f.head=22" ]
[jump  storage=""  target="*dress_pin" ]
*h_c3
[cm  ]
[chara_mod  name="head"  time="0"  storage="chara/head-s/h-c3.png" ]
[eval exp="f.head=23" ]
[jump  storage=""  target="*dress_pin" ]



*g_non
[cm  ]
[chara_mod  name="glasses"  time="0"  storage="chara/glasses-s/00.png" ]
[eval exp="f.glasses=0" ]
[jump  storage=""  target="*dress_pin" ]

*g_a1
[cm  ]
[chara_mod  name="glasses"  time="0"  storage="chara/glasses-s/g-a1.png" ]
[eval exp="f.glasses=1" ]
[jump  storage=""  target="*dress_pin" ]

*g_a2
[cm  ]
[chara_mod  name="glasses"  time="0"  storage="chara/glasses-s/g-a2.png" ]
[eval exp="f.glasses=2" ]
[jump  storage=""  target="*dress_pin" ]

*g_a3
[cm  ]
[chara_mod  name="glasses"  time="0"  storage="chara/glasses-s/g-a3.png" ]
[eval exp="f.glasses=3" ]
[jump  storage=""  target="*dress_pin" ]

*g_a4
[cm  ]
[chara_mod  name="glasses"  time="0"  storage="chara/glasses-s/g-a4.png" ]
[eval exp="f.glasses=4" ]
[jump  storage=""  target="*dress_pin" ]

*g_a5
[cm  ]
[chara_mod  name="glasses"  time="0"  storage="chara/glasses-s/g-a5.png" ]
[eval exp="f.glasses=5" ]
[jump  storage=""  target="*dress_pin" ]

*g_b1
[cm  ]
[chara_mod  name="glasses"  time="0"  storage="chara/glasses-s/g-b1.png" ]
[eval exp="f.glasses=11" ]
[jump  storage=""  target="*dress_pin" ]

*g_b2
[cm  ]
[chara_mod  name="glasses"  time="0"  storage="chara/glasses-s/g-b2.png" ]
[eval exp="f.glasses=12" ]
[jump  storage=""  target="*dress_pin" ]

*g_b3
[cm  ]
[chara_mod  name="glasses"  time="0"  storage="chara/glasses-s/g-b3.png" ]
[eval exp="f.glasses=13" ]
[jump  storage=""  target="*dress_pin" ]

*g_b4
[cm  ]
[chara_mod  name="glasses"  time="0"  storage="chara/glasses-s/g-b4.png" ]
[eval exp="f.glasses=14" ]
[jump  storage=""  target="*dress_pin" ]

*g_b5
[cm  ]
[chara_mod  name="glasses"  time="0"  storage="chara/glasses-s/g-b5.png" ]
[eval exp="f.glasses=15" ]
[jump  storage=""  target="*dress_pin" ]

*g_c1
[cm  ]
[chara_mod  name="glasses"  time="0"  storage="chara/glasses-s/g-c1.png" ]
[eval exp="f.glasses=21" ]
[jump  storage=""  target="*dress_pin" ]

*g_c2
[cm  ]
[chara_mod  name="glasses"  time="0"  storage="chara/glasses-s/g-c2.png" ]
[eval exp="f.glasses=22" ]
[jump  storage=""  target="*dress_pin" ]

*g_c3
[cm  ]
[chara_mod  name="glasses"  time="0"  storage="chara/glasses-s/g-c3.png" ]
[eval exp="f.glasses=23" ]
[jump  storage=""  target="*dress_pin" ]

*g_c4
[cm  ]
[chara_mod  name="glasses"  time="0"  storage="chara/glasses-s/g-c4.png" ]
[eval exp="f.glasses=24" ]
[jump  storage=""  target="*dress_pin" ]

*g_c5
[cm  ]
[chara_mod  name="glasses"  time="0"  storage="chara/glasses-s/g-c5.png" ]
[eval exp="f.glasses=25" ]
[jump  storage=""  target="*dress_pin" ]


*dress_leg
[cm  ]
[eval exp="f.ch_win=4" ]
[chara_mod  name="window"  time="0"  storage="chara/12/dress-win.png" ]
[button  storage=""  target="*return_menu"  graphic="m/back.png"  x="1188"  y="563"  ]

[button  storage=""  target="*s_non"  graphic="c/non.png"    x="731"  y="123"  ]
[if exp="f.s_a1==1" ]
[button  storage=""  target="*s_a1"  graphic="c/socks.png"   height="36"   x="700"  y="170"  ]
[endif]
[if exp="f.s_a2==1" ]
[button  storage=""  target="*s_a2"  graphic="c/black.png"  height="36"   x="783"  y="170"  ]
[endif]
[if exp="f.s_a3==1" ]
[button  storage=""  target="*s_a3"  graphic="c/gray.png"   height="36"   x="840"  y="170"  ]
[endif]
[if exp="f.s_a4==1" ]
[button  storage=""  target="*s_a4"  graphic="c/stripe.png"   height="36"   x="910"  y="170"  ]
[endif]

[if exp="f.s_b1==1" ]
[button  storage=""  target="*s_b1"  graphic="c/socks-long.png"   height="36"   x="700"  y="215"  ]
[endif]
[if exp="f.s_b2==1" ]
[button  storage=""  target="*s_b2"  graphic="c/black.png"   height="36"  x="814"  y="215"  ]
[endif]
[if exp="f.s_b3==1" ]
[button  storage=""  target="*s_b3"  graphic="c/black-h.png"   height="36"   x="867"  y="215"  ]
[endif]
[if exp="f.s_b4==1" ]
[button  storage=""  target="*s_b4"  graphic="c/white-h.png"   height="36"   x="955"  y="215"  ]
[endif]
[if exp="f.s_b5==1" ]
[button  storage=""  target="*s_b5"  graphic="c/gray.png"   height="36"   x="1043"  y="215"  ]
[endif]
[if exp="f.s_b6==1" ]
[button  storage=""  target="*s_b6"  graphic="c/stripe.png"   height="36"   x="1113"  y="215"  ]
[endif]


;[button  storage=""  target="*a_non"  graphic="c/non.png" x="700"  y="270"  ]

;[if exp="f.a_a1==1" ]
;[button  storage=""  target="*a_a1"  graphic="c/hand.png"  x="700"  y="310"  ]
;[endif]
;[if exp="f.a_a2==1" ]
;[button  storage=""  target="*a_a2"  graphic="c/white.png"  x="840"  y="310"  ]
;[endif]
;[if exp="f.a_a3==1" ]
;[button  storage=""  target="*a_a3"  graphic="c/race-b.png"  x="890"  y="310"  ]
;[endif]
;[if exp="f.a_a4==1" ]
;[button  storage=""  target="*a_a4"  graphic="c/race-w.png"  x="975"  y="310"  ]
;[endif]



[if exp="f.ring_f==1 || f.lust>100" ]
[button  storage=""  target="*ri_non"  graphic="c/non.png"    x="700"  y="270"  ]
[endif]
[if exp="f.lust>100" ]
[button  storage=""  target="*ri_aid"  graphic="c/bandaid.png"   height="34"   x="780"  y="270"  ]
[endif]
[if exp="f.ri_a1==1" ]
[button  storage=""  target="*ri_a1"  graphic="c/gold-a.png"   height="36"   x="700"  y="310"  ]
[endif]
[if exp="f.ri_a2==1" ]
[button  storage=""  target="*ri_a2"  graphic="c/gold-b.png"  height="36"   x="817"  y="310"  ]
[endif]
[if exp="f.ri_a3==1" ]
[button  storage=""  target="*ri_a3"  graphic="c/gold-c.png"   height="36"   x="924"  y="310"  ]
[endif]
[if exp="f.ri_b1==1" ]
[button  storage=""  target="*ri_b1"  graphic="c/sil-a.png"   height="36"   x="700"  y="350"  ]
[endif]
[if exp="f.ri_b2==1" ]
[button  storage=""  target="*ri_b2"  graphic="c/sil-b.png"   height="36"   x="817"  y="350"  ]
[endif]
[if exp="f.ri_b3==1" ]
[button  storage=""  target="*ri_b3"  graphic="c/sil-c.png"   height="36"   x="924"  y="350"  ]
[endif]

[if exp="f.ne_a1==1 || "f.ne_b1==1" ]
[button  storage=""  target="*ne_non"  graphic="c/non.png"    x="700"  y="405"  ]
[endif]
[if exp="f.ne_a1==1" ]
[button  storage=""  target="*ne_a1"  graphic="c/maf.png"   height="36"   x="700"  y="445"  ]
[endif]
[if exp="f.ne_a2==1" ]
[button  storage=""  target="*ne_a2"  graphic="c/blue-.png"   height="36"   x="820"  y="445"  ]
[endif]
[if exp="f.ne_a3==1" ]
[button  storage=""  target="*ne_a3"  graphic="c/brown.png"   height="36"   x="870"  y="445"  ]
[endif]
[if exp="f.ne_a4==1" ]
[button  storage=""  target="*ne_a4"  graphic="c/maf-.png"   height="36"   x="920"  y="445"  ]
[endif]
[if exp="f.ne_a5==1" ]
[button  storage=""  target="*ne_a5"  graphic="c/blue.png"   height="36"   x="1038"  y="445"  ]
[endif]
[if exp="f.ne_a6==1" ]
[button  storage=""  target="*ne_a6"  graphic="c/brown.png"   height="36"   x="1088"  y="445"  ]
[endif]
[if exp="f.ne_a7==1" ]
[button  storage=""  target="*ne_a7"  graphic="c/green.png"   height="36"   x="1138"  y="445"  ]
[endif]

[if exp="f.ne_b1==1" ]
[button  storage=""  target="*ne_b1"  graphic="c/ep.png"   height="36"   x="700"  y="485"  ]
[endif]
[if exp="f.ne_b2==1" ]
[button  storage=""  target="*ne_b2"  graphic="c/blue.png"   height="36"   x="830"  y="485"  ]
[endif]
[if exp="f.ne_b3==1" ]
[button  storage=""  target="*ne_b3"  graphic="c/pink.png"   height="36"   x="879"  y="485"  ]
[endif]
[if exp="f.ne_b4==1" ]
[button  storage=""  target="*ne_b4"  graphic="c/black.png"   height="36"   x="950"  y="485"  ]
[endif]




[if exp="f.ch_win==1" ]
[button  storage=""  target="*dress_up"  graphic="c/clothes.png"  width="58"  height="42"  x="1003"  y="68"  ]
[else]
[button  storage=""  target="*dress_up"  graphic="c/clothes-.png"  width="58"  height="42"  x="1003"  y="68"  ]
[endif]
[if exp="f.ch_win==2" ]
[button  storage=""  target="*dress_hair"  graphic="c/hair.png"  width="86"  height="43"  x="1053"  y="68"  ]
[else]
[button  storage=""  target="*dress_hair"  graphic="c/hair-.png"  width="86"  height="43"  x="1053"  y="68"  ]
[endif]
[if exp="f.ch_win==3" ]
[button  storage=""  target="*dress_pin"  graphic="c/acce.png"  width="114"  height="42"  x="1131"  y="68"  ]
[else]
[button  storage=""  target="*dress_pin"  graphic="c/acce-.png"  width="114"  height="42"  x="1131"  y="68"  ]
[endif]

[if exp="f.ch_win==4" ]
[button  storage=""  target="*dress_leg"  graphic="c/leg.png"  width="48"  height="42"  x="1238"  y="68"  ]
[else]
[button  storage=""  target="*dress_leg"  graphic="c/leg-.png"  width="48"  height="42"  x="1238"  y="68"  ]
[endif]
[s  ]

*s_non
[cm  ]
[chara_mod  name="socks"  time="0"  storage="chara/socks-s/00.png" ]
[eval exp="f.socks=0" ]
[jump  storage=""  target="*dress_leg" ]

*s_a1
[cm  ]
[chara_mod  name="socks"  time="0"  storage="chara/socks-s/s-a1.png" ]
[eval exp="f.socks=1" ]
[jump  storage=""  target="*dress_leg" ]
*s_a2
[cm  ]
[chara_mod  name="socks"  time="0"  storage="chara/socks-s/s-a2.png" ]
[eval exp="f.socks=2" ]
[jump  storage=""  target="*dress_leg" ]
*s_a3
[cm  ]
[chara_mod  name="socks"  time="0"  storage="chara/socks-s/s-a3.png" ]
[eval exp="f.socks=3" ]
[jump  storage=""  target="*dress_leg" ]
*s_a4
[cm  ]
[chara_mod  name="socks"  time="0"  storage="chara/socks-s/s-a4.png" ]
[eval exp="f.socks=4" ]
[jump  storage=""  target="*dress_leg" ]
*s_b1
[cm  ]
[chara_mod  name="socks"  time="0"  storage="chara/socks-s/s-b1.png" ]
[eval exp="f.socks=11" ]
[jump  storage=""  target="*dress_leg" ]
*s_b2
[cm  ]
[chara_mod  name="socks"  time="0"  storage="chara/socks-s/s-b2.png" ]
[eval exp="f.socks=12" ]
[jump  storage=""  target="*dress_leg" ]
*s_b3
[cm  ]
[chara_mod  name="socks"  time="0"  storage="chara/socks-s/s-b3.png" ]
[eval exp="f.socks=13" ]
[jump  storage=""  target="*dress_leg" ]
*s_b4
[cm  ]
[chara_mod  name="socks"  time="0"  storage="chara/socks-s/s-b4.png" ]
[eval exp="f.socks=14" ]
[jump  storage=""  target="*dress_leg" ]
*s_b5
[cm  ]
[chara_mod  name="socks"  time="0"  storage="chara/socks-s/s-b5.png" ]
[eval exp="f.socks=15" ]
[jump  storage=""  target="*dress_leg" ]
*s_b6
[cm  ]
[chara_mod  name="socks"  time="0"  storage="chara/socks-s/s-b6.png" ]
[eval exp="f.socks=16" ]
[jump  storage=""  target="*dress_leg" ]


*a_non
[cm  ]
[chara_mod  name="face"  time="0"  storage="chara/face-s/s-s.png" ]
[eval exp="f.arm=0" ]
[jump  storage=""  target="*dress_leg" ]

*a_a1
[cm  ]
[chara_mod  name="arm"  time="0"  storage="chara/arm/p-a1.png" ]
[eval exp="f.arm=1" ]
[jump  storage=""  target="*dress_leg" ]

*a_a2
[cm  ]
[chara_mod  name="arm"  time="0"  storage="chara/arm/p-a2.png" ]
[eval exp="f.arm=2" ]
[jump  storage=""  target="*dress_leg" ]

*a_a3
[cm  ]
[chara_mod  name="arm"  time="0"  storage="chara/arm/p-a3.png" ]
[eval exp="f.arm=3" ]
[jump  storage=""  target="*dress_leg" ]

*a_a4
[cm  ]
[chara_mod  name="arm"  time="0"  storage="chara/arm/p-a4.png" ]
[eval exp="f.arm=4" ]
[jump  storage=""  target="*dress_leg" ]



*ri_non
[cm  ]
[chara_mod  name="ring"  time="0"  storage="chara/ring-s/00.png" ]
[eval exp="f.ring=0" ]
[jump  storage=""  target="*dress_leg" ]

*ri_aid
[cm  ]
[chara_mod  name="ring"  time="0"  storage="chara/ring-s/s-c1.png" ]
[eval exp="f.ring=21" ]
[jump  storage=""  target="*dress_leg" ]

*ri_a1
[cm  ]
[chara_mod  name="ring"  time="0"  storage="chara/ring-s/s-a1.png" ]
[eval exp="f.ring=1" ]
[jump  storage=""  target="*dress_leg" ]

*ri_a2
[cm  ]
[chara_mod  name="ring"  time="0"  storage="chara/ring-s/s-a2.png" ]
[eval exp="f.ring=2" ]
[jump  storage=""  target="*dress_leg" ]

*ri_a3
[cm  ]
[chara_mod  name="ring"  time="0"  storage="chara/ring-s/s-a3.png" ]
[eval exp="f.ring=3" ]
[jump  storage=""  target="*dress_leg" ]

*ri_b1
[cm  ]
[chara_mod  name="ring"  time="0"  storage="chara/ring-s/s-b1.png" ]
[eval exp="f.ring=11" ]
[jump  storage=""  target="*dress_leg" ]

*ri_b2
[cm  ]
[chara_mod  name="ring"  time="0"  storage="chara/ring-s/s-b2.png" ]
[eval exp="f.ring=12" ]
[jump  storage=""  target="*dress_leg" ]

*ri_b3
[cm  ]
[chara_mod  name="ring"  time="0"  storage="chara/ring-s/s-b3.png" ]
[eval exp="f.ring=13" ]
[jump  storage=""  target="*dress_leg" ]


*ne_non
[cm  ]
[chara_mod  name="neck"  time="0"  storage="chara/neck-s/00.png" ]
[eval exp="f.neck=0" ]
[jump  storage=""  target="*dress_leg" ]

*ne_a1
[cm  ]
[chara_mod  name="neck"  time="0"  storage="chara/neck-s/s-a1.png" ]
[eval exp="f.neck=1" ]
[jump  storage=""  target="*dress_leg" ]

*ne_a2
[cm  ]
[chara_mod  name="neck"  time="0"  storage="chara/neck-s/s-a2.png" ]
[eval exp="f.neck=2" ]
[jump  storage=""  target="*dress_leg" ]

*ne_a3
[cm  ]
[chara_mod  name="neck"  time="0"  storage="chara/neck-s/s-a3.png" ]
[eval exp="f.neck=3" ]
[jump  storage=""  target="*dress_leg" ]

*ne_a4
[cm  ]
[chara_mod  name="neck"  time="0"  storage="chara/neck-s/s-a4.png" ]
[eval exp="f.neck=4" ]
[jump  storage=""  target="*dress_leg" ]

*ne_a5
[cm  ]
[chara_mod  name="neck"  time="0"  storage="chara/neck-s/s-a5.png" ]
[eval exp="f.neck=5" ]
[jump  storage=""  target="*dress_leg" ]

*ne_a6
[cm  ]
[chara_mod  name="neck"  time="0"  storage="chara/neck-s/s-a6.png" ]
[eval exp="f.neck=6" ]
[jump  storage=""  target="*dress_leg" ]

*ne_a7
[cm  ]
[chara_mod  name="neck"  time="0"  storage="chara/neck-s/s-a7.png" ]
[eval exp="f.neck=7" ]
[jump  storage=""  target="*dress_leg" ]


*ne_b1
[cm  ]
[if exp="f.dress==81 || f.dress==82 || f.dress==83 || f.dress==84 || f.dress==85 || f.dress==5 || f.dress==6" ]
[jump  storage=""  target="*dress_leg" ]
[endif]
[if exp="f.dress==11 || f.dress==12 || f.dress==13 || f.dress==14 || f.dress==15" ]
[chara_mod  name="neck"  time="0"  storage="chara/neck-s/s-b1b.png" ]
[elsif exp="f.dress==61 || f.dress==62 || f.dress==63 || f.dress==64 || f.dress==65" ]
[chara_mod  name="neck"  time="0"  storage="chara/neck-s/s-b1c.png" ]
[elsif exp="f.dress==73 || f.dress==74" ]
[chara_mod  name="neck"  time="0"  storage="chara/neck-s/s-b1d.png" ]
[else]
[chara_mod  name="neck"  time="0"  storage="chara/neck-s/s-b1a.png" ]
[endif]
[eval exp="f.neck=11" ]
[jump  storage=""  target="*dress_leg" ]

*ne_b2
[cm  ]
[if exp="f.dress==81 || f.dress==82 || f.dress==83 || f.dress==84 || f.dress==85 || f.dress==5 || f.dress==6" ]
[jump  storage=""  target="*dress_leg" ]
[endif]
[if exp="f.dress==11 || f.dress==12 || f.dress==13 || f.dress==14 || f.dress==15" ]
[chara_mod  name="neck"  time="0"  storage="chara/neck-s/s-b2b.png" ]
[elsif exp="f.dress==61 || f.dress==62 || f.dress==63 || f.dress==64 || f.dress==65" ]
[chara_mod  name="neck"  time="0"  storage="chara/neck-s/s-b2c.png" ]
[elsif exp="f.dress==73 || f.dress==74" ]
[chara_mod  name="neck"  time="0"  storage="chara/neck-s/s-b2d.png" ]
[else]
[chara_mod  name="neck"  time="0"  storage="chara/neck-s/s-b2a.png" ]
[endif]
[eval exp="f.neck=12" ]
[jump  storage=""  target="*dress_leg" ]

*ne_b3
[cm  ]
[if exp="f.dress==81 || f.dress==82 || f.dress==83 || f.dress==84 || f.dress==85 || f.dress==5 || f.dress==6" ]
[jump  storage=""  target="*dress_leg" ]
[endif]
[if exp="f.dress==11 || f.dress==12 || f.dress==13 || f.dress==14 || f.dress==15" ]
[chara_mod  name="neck"  time="0"  storage="chara/neck-s/s-b3b.png" ]
[elsif exp="f.dress==61 || f.dress==62 || f.dress==63 || f.dress==64 || f.dress==65" ]
[chara_mod  name="neck"  time="0"  storage="chara/neck-s/s-b3c.png" ]
[elsif exp="f.dress==73 || f.dress==74" ]
[chara_mod  name="neck"  time="0"  storage="chara/neck-s/s-b3d.png" ]
[else]
[chara_mod  name="neck"  time="0"  storage="chara/neck-s/s-b3a.png" ]
[endif]
[eval exp="f.neck=13" ]
[jump  storage=""  target="*dress_leg" ]

*ne_b4
[cm  ]
[if exp="f.dress==81 || f.dress==82 || f.dress==83 || f.dress==84 || f.dress==85 || f.dress==5 || f.dress==6" ]
[jump  storage=""  target="*dress_leg" ]
[endif]
[if exp="f.dress==11 || f.dress==12 || f.dress==13 || f.dress==14 || f.dress==15" ]
[chara_mod  name="neck"  time="0"  storage="chara/neck-s/s-b4b.png" ]
[elsif exp="f.dress==61 || f.dress==62 || f.dress==63 || f.dress==64 || f.dress==65" ]
[chara_mod  name="neck"  time="0"  storage="chara/neck-s/s-b4c.png" ]
[elsif exp="f.dress==73 || f.dress==74" ]
[chara_mod  name="neck"  time="0"  storage="chara/neck-s/s-b4d.png" ]
[else]
[chara_mod  name="neck"  time="0"  storage="chara/neck-s/s-b4a.png" ]
[endif]
[eval exp="f.neck=14" ]
[jump  storage=""  target="*dress_leg" ]



*medi
[cm]
[show_skip]
[if exp="f.flower>=1" ]
所持數-粉色的花（[emb exp="f.flower"]、媚薬（[emb exp="f.drugx"]、春藥（[emb exp="f.drugz"]
[button  storage=""  target="*medi_z"  graphic="ch/medi-y.png"    x="0"  y="180" hint="射精的上限無法再增加了" ]
[button  storage=""  target="*medi_x"  graphic="ch/medi-s.png"   x="0"  y="300" hint="希爾薇絕頂上限無法再增加了" ]
[button  storage=""  target="*return_menu"  graphic="ch/remind.png"   x="0"  y="420"  ]
[s]
[else]
#
（材料不足。[p]
[jump  storage=""  target="*return_menu" ]
[endif]

*medi_x
[cm]
所持数-粉色的花（[emb exp="f.flower"]、媚薬（[emb exp="f.drugx"]、春藥（[emb exp="f.drugz"]
[button  storage=""  target="*one_x"  graphic="ch/make-one.png"    x="0"  y="160" ]
[if exp="f.flower>=5" ]
[button  storage=""  target="*five_x"  graphic="ch/make-five.png"   x="0"  y="260" ]
[endif]
[button  storage=""  target="*all_x"  graphic="ch/make-all.png"   x="0"  y="360"  ]
[button  storage=""  target="*return_menu"  graphic="ch/remind.png"   x="0"  y="460"  ]
[s]

*medi_z
[cm]
所持数-粉色的花（[emb exp="f.flower"]、媚薬（[emb exp="f.drugx"]、春藥（[emb exp="f.drugz"]
[button  storage=""  target="*one_z"  graphic="ch/make-one.png"    x="0"  y="160" ]
[if exp="f.flower>=5" ]
[button  storage=""  target="*five_z"  graphic="ch/make-five.png"   x="0"  y="260"  ]
[endif]
[button  storage=""  target="*all_z"  graphic="ch/make-all.png"   x="0"  y="360"  ]
[button  storage=""  target="*return_menu"  graphic="ch/remind.png"   x="0"  y="460"  ]
[s]

*one_z
[cm]
[eval exp="f.flower=f.flower-1" ]
[eval exp="f.drugz=f.drugz+1" ]
制作壹粒春藥[r]
所持数-粉色的花（[emb exp="f.flower"]、媚薬（[emb exp="f.drugx"]、春藥（[emb exp="f.drugz"][p]
[jump  storage=""  target="*return_menu" ]
*five_z
[cm]
[eval exp="f.flower=f.flower-5" ]
[eval exp="f.drugz=f.drugz+5" ]
制作伍粒春藥[r]
所持数-粉色的花（[emb exp="f.flower"]、媚薬（[emb exp="f.drugx"]、春藥（[emb exp="f.drugz"][p]
[jump  storage=""  target="*return_menu" ]
*all_z
[cm]
[eval exp="f.drugz=f.flower+f.drugz" ]
[eval exp="f.flower=0" ]
粉色的花全部制作了春藥[r]
所持数-粉色的花（[emb exp="f.flower"]、媚薬（[emb exp="f.drugx"]、春藥（[emb exp="f.drugz"][p]
[jump  storage=""  target="*return_menu" ]

*one_x
[cm]
[eval exp="f.flower=f.flower-1" ]
[eval exp="f.drugx=f.drugx+1" ]
制作了壹粒媚藥[r]
所持数-粉色的花（[emb exp="f.flower"]、媚薬（[emb exp="f.drugx"]、春藥（[emb exp="f.drugz"][p]
[jump  storage=""  target="*return_menu" ]
*five_x
[cm]
[eval exp="f.flower=f.flower-5" ]
[eval exp="f.drugx=f.drugx+5" ]
制作了伍粒媚藥[r]
所持数-粉色的花（[emb exp="f.flower"]、媚薬（[emb exp="f.drugx"]、春藥（[emb exp="f.drugz"][p]
[jump  storage=""  target="*return_menu" ]
*all_x
[cm]
[eval exp="f.drugx=f.flower+f.drugx" ]
[eval exp="f.flower=0" ]
粉色的花全部制作了媚藥[r]
所持数-粉色的花（[emb exp="f.flower"]、媚薬（[emb exp="f.drugx"]、春藥（[emb exp="f.drugz"][p]
[jump  storage=""  target="*return_menu" ]






*name_change
[cm]
[show_skip]
#希爾薇
[s_t]
想讓我改變對您的稱呼嗎？[lr]
[s_st]
好的，那我應該怎麽稱呼您呢？
*yourname
[edit left=792 top=206 width="386"  height="42" name="f.name" ]
[locate x=847 y=283]
[button target="*sbm_name" graphic="m/decide.png" ]
[button target="*nop" x="974"  y="282" graphic="m/no-name.png" ]
[s]

*sbm_name
[commit]
[cm]

[if exp="f.name==''" ]
#
（請輸入稱呼）[p]
@jump target=*yourname
[endif]



[if exp="f.name=='哥哥' || f.name=='大哥哥' || f.name=='哥' || f.name=='兄長大人' || f.name=='歐尼醬'" ]
[s_st]
#希爾薇
好的。那我就稱呼您為「[name]」了呢[p]
我雖然沒有兄弟姐妹。但是您能像疼愛妹妹壹樣疼愛我真的很開心[lr]
[s_stp][name]。[p]
[jump  storage=""  target="*return_menu" ]




[elsif exp="f.name=='親愛的'|| f.name=='亲爱的'" ]
[s_st]
#希爾薇
好的。那我就稱呼您為「[name]」了呢[lr]
[s_stp]親·愛·的…♡♡[lr]
[jump  storage=""  target="*return_menu" ]



[elsif exp="f.name=='老公' || f.name=='老爺'|| f.name=='老爷'" ]
好的。那我就稱呼您為「[name]」了呢[lr]
[s_stp][name]…♡。[lr]
[jump  storage=""  target="*return_menu" ]



[elsif exp="f.name=='爸爸' || f.name=='父親' || f.name=='父親大人'" ]
好的。那我就稱呼您為「[name]」了呢[p]
您已經把我當成您的女兒了嗎？[p]
[jump  storage=""  target="*return_menu" ]




[elsif exp="f.name=='醫生'" ]
好的。那我就稱呼您為「[name]」了呢[p]
因為您作為醫生，已經習慣了這樣的稱呼了嗎？[p]
[jump  storage=""  target="*return_menu" ]

[elsif exp="f.name=='前輩'" ]
好的。那我就稱呼您為「[name]」了呢[p]
[s_t]
是什麼樣的前輩呢？[p]
[jump  storage=""  target="*return_menu" ]
[elsif exp="f.name=='碩士'" ]
好的。那我就稱呼您為「[name]」了呢[p]
[s_t]
也就是「主人」換壹種說法吧？雖然聽上去的感覺完全不壹樣[p]
[jump  storage=""  target="*return_menu" ]
[elsif exp="f.name=='客人'" ]
好的。那我就稱呼您為「[name]」了呢[p]
[s_t]
嗯唉ー？？[p]
[jump  storage=""  target="*return_menu" ]
[elsif exp="f.name=='客戶'" ]
好的。那我就稱呼您為「[name]」了呢[p]
[s_t]
嗯唉ー？[p]
[jump  storage=""  target="*return_menu" ]


[elsif exp="f.name=='經紀人'" ]
好的。那我就稱呼您為「[name]」了呢[p]
[s_t]
…[name]是什麽啊？[lr]
[s_ct]
偶像？？很抱歉，我不是很清楚呢[p]
[jump  storage=""  target="*return_menu" ]


[elsif exp="f.name=='主人'" ]
[s_st]
#希爾薇
好的。那我就稱呼您為「[name]」了呢[lr]
看來您習慣最初的稱呼了呢[p]
[jump  storage=""  target="*return_menu" ]


[elsif exp="f.name=='爺爺'" ]
[s_st]
#希爾薇
好的。那我就稱呼您為「[name]」了呢[lr]
[s_t]
感覺把您稱呼地這麽老是不是不太好呢[p]
[jump  storage=""  target="*return_menu" ]




[else]
[s_st]
#希爾薇
好的。那麽以後我就稱呼您為「[name]」了呢[p]
[jump  storage=""  target="*return_menu" ]
[endif]


*nop
[cm]
#希爾薇
[s_t]
嗯，可以嗎？[p]
[jump  storage=""  target="*return_menu" ]


[_tb_end_tyrano_code]
