[_tb_system_call storage=system/_event2.ks]

[tb_start_tyrano_code]

*to_next
[black]
[set_stand]
[cancelskip]
[show_skip]
[fadeoutbgm time=500]
[bg  time="1"  method="crossfade"  storage="bg-room.jpg"  ]
[f_]
[show_stand]
…[p]
[playbgm  loop="true"  storage="Ivory_Fiber.ogg"  ]

#
（早上她從房間里出來後一直看著窗外）[p]

[f_t]
#希爾薇
早上好[lr]
您今天不用工作嗎？[p]
現在要出去買東西嗎？[lr]
好，您路上小心了[p]

#
（想起來她來家裡還沒帶她出去過呢）[p]

[button  storage=""  target="*together"  graphic="ch/together.png"    x="0"  y="200" ]
[button  storage=""  target="*alone"  graphic="ch/alone.png"   x="0"  y="350" ]
[s]

*alone
[cm]
[cancelskip]
#希爾薇
路上小心[lr]
我會負責打掃衛生的[p]
[eval exp="f.flag1='alone'" ]
[eval exp="f.trust=f.trust-3" ]
[eval exp="f.sand=1" ]

[black]
#
一個人去買了一些生活必需品回來
[fadeoutbgm time=500]
[jump  storage=""  target="*next"  ]

*together
[cm]
[cancelskip]
[eval exp="f.trust=f.trust+1" ]
[f_]
#希爾薇
…。[lr]
[f_t]
要帶上我嗎？[p]
[f_cl]
…。[lr]
[f_t]
沒問題。[lr]
我提不起太重的東西但我會儘量幫忙的[p]

[black]
[set_stand]
[fadeoutbgm time=500]
[bg  time="1"  method="crossfade"  storage="bg-town.jpg"  ]
…[p]
[f_]
[show_stand]

[playbgm  loop="true"  storage="Ochre_Breeze.ogg"  ]

#
…。[lr]

（希爾薇靜靜的跟著我過來）[p]
（看起來無神的眼睛卻在左右移動，似乎在思考什麽）[lr]
（看來她沒來過街區）[p]

#希爾薇
…。[p]

#
（半路上希爾薇突然停頓了一下）[p]

[f_clt]
#希爾薇
啊？對不起，什麽事都沒有…[p]

#
我聞到一股香味[lr]
她應該是被咖啡店的味道吸引了[p]
[fadeoutbgm time=500]
帶她進去吃東西吧[p]
#希爾薇
…是在這裡嗎？？[p]

[black]
[set_stand]
[f_t]
[bg  time="1"  method="crossfade"  storage="bg-cafe.jpg"  ]
[playbgm  loop="true"  storage="Jelly_Honey.ogg"  ]
…[p]
[show_stand]

[free]

[chara_mod  name="man"  time="1"  storage="chara/1/nephy.png" ]
[chara_show  name="man"  time="100"  wait="true" ]

#奇妙的女店員
歡迎光臨！[p]

#
（進入店內一個奇妙的女店員員以滑稽的動作走了過來）[p]

#奇妙的女店員
兩個人嗎？[p]
請向這邊來[p]
#
（我們在靠窗戶的座位坐了下來）[p]


[black]
[set_dinner]
[d_]
[bg  time="1"  method="crossfade"  storage="db-b.jpg"  ]
…[p]
[show_dinner]

…。[p]
（我給自己點了一份三明治）[p]

（而希爾薇看着周圍，最後眼睛停止在了旁邊一客人的千層餅上）[p]
（我給希爾薇點的餐是…）[p]

[button  storage=""  target="*pancake"  graphic="ch/pancake.png"    x="0"  y="200" ]
[button  storage=""  target="*sand"  graphic="ch/sand.png"   x="0"  y="350" ]
[s]

*sand
[cm]
[cancelskip]
#
（希爾薇就和我吃一樣的東西吧[lr]我点了两份三明治）[p]
[chara_mod  name="e-h2"  time="100"  storage="chara/14/f-sand.png"  ]

（點的菜已經來到了桌子上）[p]
[d_at]
#希爾薇
這是給我的嗎？[lr]
[d_clt]
謝謝主人了[p]
#
（我們把三明治吃完就從店裡出來了[lr]再買一些東西就回去吧）[p]
[black]
[fadeoutbgm time=500]
…[p]
[eval exp="f.sand=1" ]
#
…[p]
[cancelskip]
[jump  storage="step3.ks"  target="*step3"  ]


*pancake
[cm]
[cancelskip]
[eval exp="f.sand=0" ]
[eval exp="f.trust=f.trust+1" ]
[eval exp="f.love=f.love+5" ]
[black]
[set_dinner]
[d_a]
[chara_mod  name="e-h2"  time="100"  storage="chara/14/f-pancake.png"  ]
[bg  time="1"  method="crossfade"  storage="db-b.jpg"  ]
…[p]
[show_dinner]


過一會我們點的東西送上餐桌了[p]
[d_at]
#希爾薇
啊這是要給我吃的嗎？[lr] 給我的嗎？[p]
[d_ct]
恩我沒吃過這種東西[p]
[d_t]
我真的可以吃嗎？[p]

[free]
[set_stand]
[bg  time="1"  method="crossfade"  storage="bg-cafe.jpg"  ]
[f_clt]
…[p]
[show_stand]


#希爾薇
那我開動了！[p]
…。[p]
[f_t]
嗯？好柔軟的感覺！[lr]
[f_s]
很甜~~[p]
#
（平時非常小心翼翼躡手躡腳的希爾薇現在開始大口的吃千層餅）[p]
（看樣子她非常喜歡甜食）[p]
[black]
[set_stand]
#
…。[p]
[bg  time="1"  method="crossfade"  storage="bg-cafe.jpg"  ]
[f_clt]
…[p]
[show_stand]


#希爾薇
嗯，我飽了[p]
[f_s]
真是非常可口。非常甜[lr]
…非常感謝您[p]

#
（第一次從希爾薇看到微笑）[p]
[f_cl]
（也許是她本人注意到了這一點，她開始強自鎮定）[p]
（我把自己的三明治也吃完了[lr]
再買一些東西就回家吧）[p]
[fadeoutbgm time=500]
[black]
#
…[p]

*next
[cancelskip]
[jump  storage="step3.ks"  target="*step3"  ]


[_tb_end_tyrano_code]
