[_tb_system_call storage=system/_out-alone.ks]

*alone
[cm ]
[free]
[set_stand]
[bg  time="1"  method="crossfade"  storage="bg-door.jpg"  ]
#
（家務交給希爾薇自己出去買東西）[p]
[f_]
[show_stand]


[cm ]
[set_stand]

[if exp="f.love<=500" ]
[jump  storage=""  target="*a" ]
[elsif exp="f.love<=1000" ]
[jump  storage=""  target="*b" ]
[elsif exp="f.love<=1500" ]
[jump  storage=""  target="*b_c" ]
[elsif exp="f.love<=2000" ]
[jump  storage=""  target="*c_d" ]
[else]
[jump  storage=""  target="*d_e" ]
[endif]

*b_c
[if exp="f.lust<=500" ]
[jump  storage=""  target="*b" ]
[else]
[jump  storage=""  target="*c" ]
[endif]

*c_d
[if exp="f.lust<=1000" ]
[jump  storage=""  target="*b_c" ]
[else]
[jump  storage=""  target="*d" ]
[endif]

*d_e
[if exp="f.lust<=1500" ]
[jump  storage=""  target="*c_d" ]
[else]
[jump  storage=""  target="*e" ]
[endif]




*a
[f_t]
#希爾薇
您一個人買東西嗎？[p]
[f_st]
好的，您走吧。請小心點[p]
[jump  storage=""  target="*outside" ]
*b
[f_t]
#希爾薇
您一個人買東西嗎？[p]
[f_st]
好的，您走吧[lr]
[f_sst]
家里就交給我吧[p]
[jump  storage=""  target="*outside" ]
*c
[f_t]
#希爾薇
您一個人買東西嗎？[p]
[f_st]
好的，您走吧[lr]
[f_scl]
…等著您回來[p]
[jump  storage=""  target="*outside" ]
*d
[f_t]
#希爾薇
您一個人買東西嗎？[p]
[f_st]
…好的，你出去吧[lr]
[f_clt]
要馬上就回來[p]
[jump  storage=""  target="*outside" ]
*e
[f_ct]
#希爾薇
您一個人買東西嗎？[lr]
…好的，你出去吧[p]
[f_cclt]
沒關係，沒問題的[p]


*outside

[fadeoutbgm time=500]
[black]

#
…。[p]


[playbgm  loop="true"  storage="Ochre_Breeze.ogg"  ]
[bg  time="100"  method="crossfade"  storage="bg-town.jpg"  ]

（買完必要的東西就結束了[lr]
順便去哪裡轉轉好呢？）[p]

[menu_count]

[if exp="f.menu_comp==1" ]
[button  storage=""  target="*cafe"  graphic="ch/lunch.png"   x="0"  y="260"  ]
[endif]
[button  storage=""  target="*back_home"  graphic="ch/back.png"   x="0"  y="410"  ]
[s ]




*cafe
[cm ]
[fadeoutbgm time=500]
[black]
…。[p]
[cafe_talk_check]
[eval exp="f.cafe_c=f.cafe_c+1" ]
;[playbgm  loop="true"  storage="Jelly_Honey.ogg"  ]
[playbgm  loop="true"  storage="Lime_Swing.ogg"  ]
[bg  time="100"  method="crossfade"  storage="bg-cafe.jpg"  ]
（平時和希爾薇去的咖啡店[lr]
買個什麽禮物吧）[p]

[chara_mod  name="man"  time="1"  storage="chara/1/nephy.png" ]
[chara_show  name="man"  time="100"  wait="true" ]

[if exp="f.takeout==0" ]
[eval exp="f.takeout=1" ]
[eval exp="f.cafe_c=0" ]
[neph]
歡迎光臨！[p]
哦哦哦？今天是你一個人嗎？[lr]
您打包帶走嗎？[p]
還有各種商品外賣的[p]
[else]
[neph]
歡迎光臨！[p]
今天是你一個人嗎？[lr]
所以是要帶走嗎？[p]
[endif]

#
（買什麼？）[p]

[anim name="man" time="300" left="20" ]
[chara_mod  name="window"  time="1"  storage="chara/12/food-win.png" ]
[chara_show  name="window"  time="1"  wait="true" left="770"  top="22" ]

*menu
[cm ]
[button  storage=""  target="*cookie"  graphic="sw/cookie.png"   x="850"  y="130"  _clickable_img="" ]
[button  storage=""  target="*rusk"  graphic="sw/rusk.png"  x="1056"  y="130"  _clickable_img="" ]
[button  storage=""  target="*cake"  graphic="sw/cake.png"   x="850"  y="200"  _clickable_img="" ]
[button  storage=""  target="*blow"  graphic="sw/blow.png"  x="1056"  y="200"  _clickable_img="" ]
[button  storage=""  target="*pding"  graphic="sw/pding.png"   x="850"  y="270"  _clickable_img="" ]
[button  storage=""  target="*tarte"  graphic="sw/taruto.png"    x="1056"  y="270"  _clickable_img="" ]
;[button  storage=""  target="*french"  graphic="sw/french.png"    x="700"  y="270"  _clickable_img="" ]
;[button  storage=""  target="*pding"  graphic="sw/pding.png"   x="886"  y="270"  _clickable_img="" ]

[if exp="f.cafe_t==1" ]
[button  storage=""  target="*talk"  graphic="c/shop-talk.png"  x="1130"  y="605"  _clickable_img="" ]
[endif]

[endif]
[s]




*talk
[cm ]
[cancelskip]
[if exp="f.cafe_talk==0" ]
#
[neph]
嗯，你又來了？歡迎光臨！[p]
你叫什麽名字呢？以前來過店裏面吧？[lr]
啊？你說的我名字嗎？[p]
我的名字是涅芙依[lr]
以後也要請你常常光顧本店[p]

[eval exp="f.cafe_talk=1" ]


[elsif exp="f.cafe_talk==1" ]
#
（雖然修改了但是看她拿東西的樣子還是覺得非常擔心）[p]
[neph]
你不需要擔心的[p]
不要小看我，我到現在還沒有打破過餐具的[p]
[eval exp="f.cafe_talk=2" ]


[elsif exp="f.cafe_talk==2" ]
[neph]
哦是你和這位小姑娘啊，你的傳聞在當地都形成話題了呢[p]
什麽內容嗎？[lr]
看來你的傳聞不是真的就是了[p]
[eval exp="f.cafe_talk=3" ]

[elsif exp="f.cafe_talk==3" ]
#
（她不費吹灰之力就把餐具收拾了起來）[p]
[neph]
很多人都說我動作很奇怪[lr]
這是治不好的請了不要在意[p]
[eval exp="f.cafe_talk=4" ]

[elsif exp="f.cafe_talk==4" ]
[neph]
店裏的食物合您的口味嗎？[p]
#
（不在意客人的想法的店是沒辦法經營下去的）[p]
[neph]
是這樣啊[r]嗯？這樣嗎？[p]
就算了店裏的食物覺得不太合口味的人也會出於好奇的來壹次想看我一下的[p]

[eval exp="f.cafe_talk=5" ]

[elsif exp="f.cafe_talk==5" ]
#
（的確有時候來這家黑店就是想看看這個奇怪的傢伙[r]
但是希爾薇應該不記得有見過這個服務員吧）[p]

[neph]
這家店不管是誰，每天都替換著不同的心情在工作[p]
最近很流行女服務員了嗎？[p]
[eval exp="f.cafe_talk=6" ]

[elsif exp="f.cafe_talk==6" ]
[neph]
話說客人您旁邊的這位？[lr]
這附近很少有人穿這樣的衣服的[p]
難道你是從那個詭異的女性那裡購買的？[p]
#
（沒見過其它人去那家店，但是至少涅芙依的店裡有人去過）[p]
[neph]
果然是這樣啊[lr]
並沒有什麽其它的意思[p]
[eval exp="f.cafe_talk=7" ]
;[elsif exp="f.cafe_talk==7" ]

;[eval exp="f.cafe_talk=8" ]
;[elsif exp="f.cafe_talk==8" ]

;[eval exp="f.cafe_talk=9" ]

;[elsif exp="f.cafe_talk==9" ]
;[eval exp="f.cafe_talk=10" ]
[endif]

[eval exp="f.cafe_t=0" ]
[jump  storage=""  target="*menu" ]





*cookie
[cm ]
[eval exp="f.miyage='曲奇'" ]
[jump  storage=""  target="*bought" ]
*rusk
[cm ]
[eval exp="f.miyage='甜面包'" ]
[jump  storage=""  target="*bought" ]
*cake
[cm ]
[eval exp="f.miyage='小蛋糕'" ]
[jump  storage=""  target="*bought" ]
*blow
[cm ]
[eval exp="f.miyage='核仁巧克力餅'" ]
[jump  storage=""  target="*bought" ]
*pding
[cm ]
[eval exp="f.miyage='布丁'" ]
[jump  storage=""  target="*bought" ]
*tarte
[cm ]
[eval exp="f.miyage='水果蛋撻'" ]
[jump  storage=""  target="*bought" ]



*bought
[cm ]
#
（[miyage]買了一個）[p]

[neph]
[miyage]謝謝您的購買[lr]
謝謝您的購買[p]
[black]
#
[jump  storage=""  target="*home" ]

*back_home
[cm ]
[eval exp="f.miyage='non'" ]
#
（不繞道直接回家吧）[p]


*home
[cm ]
[set_stand]

[if exp="f.lust>=200 && f.self==0 && f.miyage=='non'" ]
[jump  storage="H_self-first.ks"  target="*H_self_first" ]
[endif]

[if exp="f.lust>=5000 && f.self>=50" ]
[iscript]
f.self_c=Math.floor(Math.random() * 3 + 1);
[endscript]
[elsif exp="f.lust>=3000 && f.self>=30" ]
[iscript]
f.self_c=Math.floor(Math.random() * 5 + 1);
[endscript]
[elsif exp="f.lust>=1000 && f.self>=10" ]
[iscript]
f.self_c=Math.floor(Math.random() * 10 + 1);
[endscript]
[elsif exp="f.lust>=200 && f.self>=1" ]
[iscript]
f.self_c=Math.floor(Math.random() * 20 + 1);
[endscript]
[else]
[eval exp="f.self_c=0" ]
[endif]


[if exp="f.self_c==1" ]
[eval exp="f.self=f.self+1" ]
[endif]


[if exp="f.love<=500" ]
[jump  storage=""  target="*a_" ]
[elsif exp="f.love<=1000" ]
[jump  storage=""  target="*b_" ]
[elsif exp="f.love<=1500" ]
[jump  storage=""  target="*b_c_" ]
[elsif exp="f.love<=2000" ]
[jump  storage=""  target="*c_d_" ]
[else]
[jump  storage=""  target="*d_e_" ]
[endif]

*b_c_
[if exp="f.lust<=500" ]
[jump  storage=""  target="*b_" ]
[else]
[jump  storage=""  target="*c_" ]
[endif]

*c_d_
[if exp="f.lust<=1000" ]
[jump  storage=""  target="*b_c_" ]
[else]
[jump  storage=""  target="*d_" ]
[endif]

*d_e_
[if exp="f.lust<=1500" ]
[jump  storage=""  target="*c_d_" ]
[else]
[jump  storage=""  target="*e_" ]
[endif]

*a_
[bg  time="1"  method="crossfade"  storage="bg-door.jpg"  ]
[f_st]
[show_stand]
#希爾薇

啊？您回來了[name][p]
您買到需要的東西了嗎？[p]
[jump  storage=""  target="*end" ]

*b_
[bg  time="1"  method="crossfade"  storage="bg-door.jpg"  ]
[f_sst]
[show_stand]
#希爾薇
啊？您回來了[name][p]
[f_st]
您買到需要的東西了嗎？[p]
#
（打開門就看見希爾薇壹路小跑的來到門口來迎接我）[p]
[jump  storage=""  target="*end" ]

*c_
[bg  time="1"  method="crossfade"  storage="bg-door.jpg"  ]
[f_stp]
[show_stand]
#希爾薇
拿回來了[name][p]
您買到需要的東西了嗎？[p]
#
（門在我自己打開前就給打開了[lr]
看起來希爾薇一直在窗臺上看著等我回來）[p]
[jump  storage=""  target="*end" ]

*d_
[bg  time="1"  method="crossfade"  storage="bg-doorout.jpg"  ]
#
（打開門後希爾薇就出現了門前）[p]
[f_sstp]
[show_stand]
#希爾薇
您回來了[name][p]
[f_stp]
啊，那個…我等您很好久了…[p]
#
（在窗臺上看著等我回來）[p]
[jump  storage=""  target="*end" ]

*e_
[bg  time="1"  method="crossfade"  storage="bg-doorout.jpg"  ]
#
…[p]
[f_tp]
[show_stand]
（一到家門口希爾薇就打開了門跑了過來）[p]
[f_stp]
#希爾薇
…[name][p]
#
（希爾薇飛奔了過來直接撲在了我懷裏）[p]
#希爾薇
[f_tp]
…啊，對不起[lr]
[f_sstp]
您終於回來了♡[p]


[jump  storage=""  target="*end" ]


*end
[if exp="f.miyage=='non'" ]
[jump  storage="after_action.ks"  target="*after_town" ]
[else]
#希爾薇
[miyage]嗯？也買了東西給我嗎？[p]
那我們一起吃吧[p]
謝謝[name][p]
[endif]
[jump  storage="after_action.ks"  target="*after_town" ]


[_tb_end_tyrano_code]
