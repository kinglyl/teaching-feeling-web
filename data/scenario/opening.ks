[_tb_system_call storage=system/_opening.ks]

[tb_start_tyrano_code]
*opening
[cm  ]
[show_skip]
[bg  time="100"  method="crossfade"  storage="bg-door.jpg" ]
[tb_show_message_window  ]

[playbgm  loop="true"  storage="Ivory_Fiber.ogg" ]

#
（今天太陽剛剛升起來的時候[lr]
我聽到了沉重的敲門聲）[p]
（今天並沒有誰的預定[lr]
似乎也不是來預約的熟人[lr]
究竟是誰呢？）[p]

[chara_mod  name="man"  time="1"  storage="chara/1/def.png" ]
[chara_show  name="man"  time="100"  wait="true" ]

#奸商
[chara_mod  name="man"  time="100"  storage="chara/1/smile.png" ]

先生你好[p]

#
（打開門見到的是壹個古怪的男人[p]
您還記得我嗎？[lr]
我曾經被您救過壹次）[p]
#
（我把男人的臉和記憶進行對照[lr]聽他這麽壹說還真覺得有點眼熟）[p]

#奸商
上次我倒在郊外的時候就是漢尼拔醫生您曾經幫助過我呢[lr]
雖然您知道把我送到醫院來治療會很麻煩[lr]
但是您還是貫徹了您醫生的責任呢）[p]

我對那時的不辭而別感到非常的抱歉。[lr]
今天我偶然路過這裡就特地來向您道謝[p]
#
（這個古怪的男人似乎是來道謝的？先為給他泡茶吧）[p]
#奸商
不用，我沒打算長時間呆在這裏。不必那麼客氣[lr]
说起来…[lr]
那時候我沒能付起治療費[p]
#
（男人從懷裏拿出了壹個信封[lr]
裏面是被稱作治療費的相當數量的金錢）[p]
#奸商
很抱歉拖欠了你這麽久[lr]
請收下它[p]
我還帶來了壹個好東西[r]之後的事情希望您能保密[p]
…真不愧是您就是好說話[lr]
…餵.到這裏來[p]

[chara_mod  name="body"  time="1"  storage="chara/body-s/stand.png" ]
[chara_show  name="body"  time="100"  wait="true" ]

#
（向著男人盯著的方向看去壹名少女站在門旁的角落裏）[p]

#奸商
最近有壹個地主因為事故去世了[lr]
因為他沒有近親。所以他的親戚朋友就把他的遺產瓜分了[p]
我因為有些關系於是也得到了壹些挑剩下的東西[lr]
不过是其中有些东西有点麻烦呢[p]
她就是其中之一[p]
因為我是壹個窮商人[lr]
雖然說是“什麽都賣”。但是總有些“東西”賣不出去[p]
奴隸什麽的如果是健壯勞動力還是很好賣的。但是這個小鬼的話完全買不到買家。[lr]
讓她長時間跟著我也實在是很麻煩[p]
現在我手上也沒錢了[r]
最差的情況是她可能會在使用後被丟棄掉[p]
就算是我也是有良心和憐憫的[lr]
雖然很抱歉，但是今天我在這附近進行商談的時候[lr]
正好想起了以前醫生對我的救助）[p]
看起來您和以前壹樣還是在壹個人生活[lr]
不知道應該不應該說，我覺得您壹個人生活壹定很寂寞吧？[lr]
雖然突然這麽說很抱歉，但是您能收養這個孩子嗎？[p]

#
（怎么办呢）[p]

[button  storage=""  target="*no"  graphic="ch/first1.png"    x="0" y="350" ]
[button  storage=""  target="*ok"  graphic="ch/first2.png"    x="0" y="200" ]
[s  ]

*no
[cm]
[cancelskip]
#奸商
[chara_mod  name="man"  time="1"  storage="chara/1/def.png" ]
這樣啊[lr]
這麽突然的事情這也是沒辦法的[p]
對不起浪費了您的時間[lr]我走了[p]

[free]
#
（奸商帶著少女離開了）[p]
[cancelskip]
[jump  storage="action_lead.ks"  target="*game_over" ]

*ok
[cm]
[cancelskip]
#奸商
這樣就好您真是幫了我和她的大忙了[p]
這家夥是沒有親人的奴隸[lr]
让她做家務什麽的都可以，如果你有興趣的也可以“隨便”用她的[lr]
具體的事情你可以直接問她[p]
那么我告辞了。[lr]
再次感謝您那壹天的幫助，真是太感謝了[p]

[chara_hide  name="man"  time="100"  wait="true" ]

#
（奸商離開了）[p]


[chara_mod  name="body"  time="100"  storage="chara/body-s/stand-t.png" ]

#少女
初次見面我叫希爾薇[lr]
非常感謝您收留我[p]
雖然無法做體力勞動，但是簡單的家務還是可以做的[p]
[chara_mod  name="body"  time="100"  storage="chara/body-s/stand-c.png" ]
不過以前的主人說過“讓我發出慘叫才是最有價值使用方法”[p]
[chara_mod  name="body"  time="100"  storage="chara/body-s/stand-t.png" ]
…但還望您能手下留情，先謝謝了[p]

[fadeoutbgm time=500]
[cancelskip]
[black]

*skip
[jump  storage="step1.ks"  target="*step1" ]


[_tb_end_tyrano_code]
