[_tb_system_call storage=system/_event.ks]

[tb_start_tyrano_code]
[tb_show_message_window  ]

*feed
[black]
[set_dinner]
[cancelskip]
[show_skip]
#
…[p]
（天黑了，來吃飯吧）[p]
（我把希爾薇帶到了桌飯前）[p]
[playbgm  loop="true"  storage="Ivory_Fiber.ogg"  ]
[bg  time="1"  method="crossfade"  storage="db-a.jpg"  ]
[d_f]
[show_dinner]

…[l]
[d_tf]

#希爾薇
吃飯？我還沒有哭就能給我吃的東西了嗎？[p]
[d_clt]
沒想到主人您這麼仁慈[lr]非常感謝您[p]

#
（那我要給希爾薇準備什麽食物好呢？）[p]

[button  storage=""  target="*human"  graphic="ch/food2.png"    x="0"  y="200" ]
[button  storage=""  target="*pet"  graphic="ch/food1.png"   x="0"  y="350"  ]
[s  ]

*pet
[cm]
[cancelskip]
#
（玩具而已，隨便喂一下就好了，把發黴的麵包配水給她吃就即可）[p]
[chara_mod  name="e-h2"  time="100"  storage="chara/14/food-a.png"  ]
#希爾薇
非常感謝您[p]
希爾薇靜靜的吃完了這些[p]
[eval exp="f.feed='pet'" ]
[jump  storage=""  target="*her_room" ]


*human
[cm]
[set_dinner]
[cancelskip]
[black]
#
（讓她和我一起吃飯吧[lr]反正做兩個人的飯和做一個人的飯是一樣的而已）[p]
[bg  time="1"  method="crossfade"  storage="db-a.jpg"  ]
[d_af]
[chara_mod  name="e-h2"  time="100"  storage="chara/14/food-b.png"  ]
[show_dinner]


…[l]
[d_tf]
[eval exp="f.love=f.love+3" ]
#希爾薇
今晚有客人要來嗎？[lr]那我要不要躲起來…[p]
#
（希爾薇認為這些食物不是給她準備的）[p]
[d_catf]
#希爾薇
…這是給我準備的嗎？[p]
以前的主人一直是給我發霉的麥包和水的…[p]
[d_catf]
我真的可以吃這些嗎？？[p]
[d_caf]

#希爾薇
…[lr]
[d_catf]
…那我開動了[p]
[black]
[set_dinner]
#
（希爾薇用懷疑的目光看著我，拿起了叉子開始用餐[lr]
她應該是在擔心我騙她）[p]
…[p]
[bg  time="1"  method="crossfade"  storage="db-a.jpg"  ]

[d_clt]
[show_dinner]


#希爾薇
…我吃飽了[p]

[d_caf]
#
（希爾薇吃飽後困惑的看著我）[p]

[d_ctf]

#希爾薇
那個…主人…[lr]
這麼好吃的飯菜我還是第一次吃到[p]
而且我也是第一次吃飽了…[lr]
[d_cclt]
非常的…感謝您…[p]
#
（她看起來不像是在說謊，但我看出來她是在擔心有什麼事情會發生[lr]
她應該是為從未體驗過的事情在困擾）[p]

[eval exp="f.feed='human'" ]

*her_room
[black]
[set_stand]
到晚上了，準備睡覺吧[p]
[bg  time="1"  method="crossfade"  storage="bg-room.jpg"  ]
[show_stand]


[f_tf]

#希爾薇
主人…
我睡哪裡好呢？[p]
#
（你的床[lr]家裡剛好有一間空房間）[p]

[black]
[bg  time="1"  method="crossfade"  storage="bg-bed.jpg"  ]
[f_f]
[show_stand]


[f_tf]
#希爾薇
你要給我用這個房間嗎？[lr]

[f_ctf]

这個，睡床上？讓我睡床真的沒問題嗎？…[p]

#
我家雖然有診療室，不過這個房間和床是給急診患者準備的。平時用不到[p]
#希爾薇

[f_cl]
…[p]
[f_tf]
那謝謝了[p]

[if exp="f.feed=='human'" ]
#希爾薇
[f_ctf]
…[p]
…那主人…[lr]您接下來是打算對我做什麽？[lr]
難道說您要對我做非常可怕的事情嗎？[p]
[elsif exp="f.feed=='pet'" ]
[f_tf]
晚安主人[p]
[black]
…[p]
[fadeoutbgm time=500]
[cancelskip]
[jump  storage="step1.ks"  target="*show_bace"  ]
[else]
[endif]

#
（她覺得我在隱瞞她什麽事情，對這個家也感到恐懼）[p]

[button  storage=""  target="*no"  graphic="ch/noidont.png"    x="0"  y="200" ]
[button  storage=""  target="*silent"  graphic="ch/silent-r.png"   x="0" y="350" ]
[s]

*no
[cm]
[cancelskip]
[eval exp="f.trust=f.trust+1" ]
#希爾薇
真的嗎？[p]
只要能讓主人您高興的話我就算是痛苦也沒關係的[lr]
以前的主人非常喜歡聽到我哭叫的聲音，每次聽到都非常興奮[p]
如果您也喜歡的話也可以這樣對待我[lr]
[f_cclt]
食物什麽的隨便喂我一些不要的東西就好了[lr]
所以請您不必要那麼客氣[lr]因為我就是個奴隸[p]
#
（她看起來完全不信任我）[p]
[f_ctf]
#希爾薇
啊…[lr]非常…非常對不起…[lr]
[f_cclt]
那个…晚安主人…[p]
[black]
…[p]
[fadeoutbgm time=500]
[cancelskip]
[jump  storage="step1.ks"  target="*show_bace"  ]

*silent
[cm]
[cancelskip]
#
（無視她離開房間）[p]
#希爾薇
啊…[p]
[black]
…[p]
[fadeoutbgm time=500]
[cancelskip]
[jump  storage="step1.ks"  target="*show_bace"  ]





*to_next
[fadeoutbgm time=500]
[set_stand]
[show_skip]
[cancelskip]
[black]
…[p]
[endif]

[f_tf]
[bg  time="1"  method="crossfade"  storage="bg-room.jpg"  ]
[playbgm  loop="true"  storage="Ivory_Fiber.ogg"  ]
[show_stand]

#希爾薇
那個主人[lr]有什麽家務需要我做嗎？[p]
#
（今晚準備睡覺前希爾薇戰戰兢兢地問我）[p]
[f_ctf]
#希爾薇
既然來到主人家裡就希望主人能隨意使用我這個奴隸[p]
#
（她似乎是害怕我改變主意丟棄她而在感到不安）[p]

[button  storage=""  target="*job"  graphic="ch/job.png"    x="0"  y="200" ]
[button  storage=""  target="*ignore"  graphic="ch/ignore.png"   x="0"  y="350" ]
[s]

*job
[cm]
[cancelskip]
[eval exp="f.trust=f.trust+1" ]
[f_clt]
#希爾薇
我明白了[lr]掃除和洗碗是嗎[p]
[f_tf]
我會努力的[p]
[fadeoutbgm time=500]
[cancelskip]
[jump  storage="step2.ks"  target="*step2"  ]

*ignore
[cm]
[cancelskip]
[f_catf]
#希爾薇
啊…對不起[p]
[fadeoutbgm time=500]
[cancelskip]
[jump  storage="step2.ks"  target="*step2"  ]

*dead_end

[cancelskip]
#
（到了早上，希爾薇還沒從她的房間出來[lr]我去房間里看，她的樣子似乎非常痛苦）[p]
（我手放在額頭上感到了非常高的溫度[lr]雖然她本人沒有表露出來。但回想起來昨晚她的表情就很憔悴了）[p]
（食物無法下吞咽[lr]喂她吃藥又給吐了出來）[p]
（數天后她靜靜的離開了我，就好像從來沒來過一樣）[p]
…[p]

[fadeoutbgm time=500]
[jump  storage="action_lead.ks"  target="*game_over"  ]


[_tb_end_tyrano_code]
