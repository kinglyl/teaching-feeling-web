[_tb_system_call storage=system/_market.ks]

[tb_start_tyrano_code]

*market
[cm]
[fadeoutbgm  time=500]
[eval exp="f.out=1"]
[black]
…[p]
[cancelskip]
[playbgm  loop="true"  storage="Apricot_Smile.ogg"  ]
[set_stand]
[f_s]
[bg  time="1"  method="crossfade"  storage="bg-market.jpg" ]
[show_stand]

[if exp="f.market==0" ]
[eval exp="f.market=1" ]
#
（我們來到了從食品到加工品各種各樣的東西都能買到的集市）[p]
（雖然普通的生活用品在附近就能直接買到[r]
但是和希爾薇看壹下附近有什麽珍惜的東西也很不錯呢）[p]
#希爾薇
[f_t]
這裏居然有壹個市場啊。[lr]
人好多…[p]
[f_st]
而且有好多東西啊[p]
[else]
（帶著希爾薇來到了市場）[p]
[endif]

*more
[cm]
[black]
[set_stand]
[f_s]
[bg  time="1"  method="crossfade"  storage="bg-market.jpg" ]
[show_stand]

*re
[if exp="f.book=='non'" ]
[iscript]
f.market=Math.floor(Math.random() * 33 + 1);
[endscript]
[jump  storage="action_lead.ks"  target="*market" ]
[else]
[iscript]
f.market=Math.floor(Math.random() * 30 + 1);
[endscript]
[jump  storage="action_lead.ks"  target="*market" ]
[endif]

*choice
[eval exp="f.act=f.act+1" ]
[eval exp="f.love=f.love+1" ]
[if exp="f.act==6" ]
#
（星星點點的攤位進入我們的眼簾）[p]
[jump  storage=""  target="*go_home" ]
[else]
[button  storage=""  target="*re"  graphic="ch/look-again.png"    x="0"  y="200" ]
[button  storage=""  target="*go_home"  graphic="ch/end-walk.png"   x="0" y="350" ]
[s ]
[endif]


*go_home
[cm]
[fadeoutbgm  time=500]
#
（今天就這樣結束吧）[p]
[black]
…[p]
[playbgm  loop="true"  storage="Silver_Glass.ogg" ]
[jump  storage="after_action.ks"  target="*return_bace" ]

*market1
#希爾薇
[f_t]
這裏居然還賣酒呢[p]
我也想嘗壹嘗酒的味道不過那個好喝嗎？[p]
[f_st]
等以後長大了真想嘗壹嘗呢[p]
[jump  storage=""  target="*choice" ]

*market2
#希爾薇
[f_ct]
這是紅薯嗎？又長又紅呢[p]
還是甜薯？[lr]
紅薯也是甜的吧？[p]
要用它怎麽做菜呢…[p]
[jump  storage=""  target="*choice" ]

*market3
#希爾薇
[f_t]
這裏在賣西紅柿呢[p]
[f_ct]
生的西紅柿…我不太喜歡呢[p]
如果是西紅柿醬的話倒可以[p]
[jump  storage=""  target="*choice" ]

*market4
#希爾薇
[f_st]
咖啡的味道好香…[lr]
這裏在賣咖啡豆呢[p]
[f_ct]
明明聞起來很香，為什麽咖啡卻那麽苦呢…[p]
好羨慕能品出它的美味的人[p]
[jump  storage=""  target="*choice" ]

*market5
#希爾薇
[f_t]
這裏有紅蘿蔔呢…[p]
紅蘿蔔是十字花科植物吧？[lr]
[f_s]
橘黃色的根莖真是不可思議呢[p]
[jump  storage=""  target="*choice" ]


*market6
#希爾薇
[f_t]
好多種顏色的辣椒呢…[p]
[f_s]
明明都是辣椒顏色卻這麽豐富，好有趣呢[p]
而且這顏色看上去像是用油畫顏料塗上去呢[lr]
[f_clt]
用名叫肥料的顏料…開玩笑的[p]
[jump  storage=""  target="*choice" ]

*market7
#希爾薇
[f_c]
人真的好多啊[lr]
[f_sp]
可以和我牽壹下手嗎？[p]
[jump  storage=""  target="*choice" ]

*market8
#希爾薇
[f_st]
在賣各種各樣的東西呢[lr]
蔬菜 水果 零食還有其它小玩意[p]
貨架上的東西豐富多彩而且味道好香…[p]
[jump  storage=""  target="*choice" ]

*market9
#希爾薇
[f_st]
好多洋蔥啊[lr]
很多種的菜都會用到它吧？[p]
我也好想能做很多種菜[p]
[jump  storage=""  target="*choice" ]

*market10
#希爾薇
[f_st]
好大的南瓜[p]
[f_t]
不過想來想去它只能做餡餅這壹種東西呢[r]
還有什麽其它做法嗎？[p]
[f_s]
如果把壹個南瓜都做成餡餅的話，我和[name]是絕對吃不完的呢[p]
[jump  storage=""  target="*choice" ]

*market11
#希爾薇
[f_t]
這裏有好多的香料呢[p]
只有壹點的話味道很棒[r]
但是這裏的味道好濃呢[p]
[f_ct]
各種意義上我都要被熏暈了[p]
[jump  storage=""  target="*choice" ]

*market12
#希爾薇
[f_ct]
芹菜…說實話不喜歡它的味道呢[p]
[f_clt]
竹筍什麽的，也有像這樣的青草味道吧？[lr]
不太喜歡草壹樣的味道…[p]
[jump  storage=""  target="*choice" ]

*market13
#希爾薇
[f_st]
啊，好多的果醬呢…[p]
瓶子裏的果醬有各種各樣的顏色真漂亮啊[lr]
[f_sst]
只是想想它的味道就讓人忍不住了呢[p]
[jump  storage=""  target="*choice" ]

*market14
#希爾薇
[f_t]
啊，有個橙子落在了這裏…[lr]
嘿休[p]
[f_s]
把它放回原來的地方吧[p]
[jump  storage=""  target="*choice" ]


*market15
#希爾薇
[f_t]
這是橙子啊[lr]
…不是呢[p]
[f_ct]
橘子？[lr]
看起來比橙子小，好吃嗎這個？[p]
[jump  storage=""  target="*choice" ]

*market16
#希爾薇
[f_s]
紅彤彤的蘋果，看起來真美味呢[p]
[f_st]
想買蘋果的人都排起長隊了[r]
看來是都像做蘋果派呢[p]
[jump  storage=""  target="*choice" ]

*market17
#希爾薇
[f_s]
啊哈密瓜好便宜啊[p]
[f_clt]
但是已經拿不完了哦[r]
我們壹邊散步壹邊買了很多東西呢[p]
[jump  storage=""  target="*choice" ]


*market18
#希爾薇
[f_t]
完整的鳳梨？看起來真大呢[p]
[f_ct]
這個，如果就這樣買回家的話似乎很難削皮[lr]
是用什麽特殊的工具削皮的嗎？[p]
[jump  storage=""  target="*choice" ]

*market19
#希爾薇
[f_s]
這裏有好多葡萄呢…[p]
[f_st]
唉，可以嘗壹一口嗎？？[p]
[f_ssp]
嗯♡好甜啊♡♡[p]
[jump  storage=""  target="*choice" ]

*market20
#希爾薇
[f_st]
好多草莓啊[p]
雖然直接吃也很美味…[lr]
[f_ss]
但是我想起草莓蛋糕了哦[p]
[jump  storage=""  target="*choice" ]

*market21
#希爾薇
[f_t]
這個水果的形狀好有趣的是吧？[lr]
楊桃？[p]
[f_st]
啊，可以切成星星的形狀。真的好有意思…[p]
[jump  storage=""  target="*choice" ]

*market22
#希爾薇
[f_t]
這裏擺著很多香蕉呢[p]
[f_st]
就算不用刀叉也可以直接吃呢[p]
用來做松餅或者蛋糕也很棒[lr]
[f_ss]
以後我壹定會試著給[name]做的[p]
[jump  storage=""  target="*choice" ]

*market23
#希爾薇
[f_t]
啊，是櫻桃[lr]
不是啊？[p]
[f_ct]
這是什麽呢？[lr]
西印度櫻桃？[p]
[f_t]
味道和櫻桃也差好多呢[lr]
不知道好不好吃[p]
[jump  storage=""  target="*choice" ]

*market24
#希爾薇
[f_t]
這個有好多刺而且看起來好堅硬呢…[lr]
叫什麽來著？[p]
榴蓮？[lr]
[f_ct]
明明這麽臭的吃起來卻能很甜嗎？[p]
無法想象是什麽味道呢[lr]
[f_clt]
雖然想嘗壹嘗味道，但是這個東西的樣子真的好噁心…[p]
[jump  storage=""  target="*choice" ]

*market25
#希爾薇
[f_s]
這是什麽呀？顏色這麽豐富[p]
啊，原來是蠟燭啊[p]
[f_t]
熏香蠟燭？[lr]
和為了發光做的蠟燭不壹樣呢[p]
[jump  storage=""  target="*choice" ]

*market26
#希爾薇
[f_s]
這裏有玻璃的廚具呢[p]
[f_st]
閃閃發光的好漂亮…[p]
[f_ct]
雖然看起來很精致，[r]
但是如果日常用起來都要很小心未免也太可怕了[p]
[jump  storage=""  target="*choice" ]


*market27
#希爾薇
[f_t]
啊，我們已經到盡頭了[lr]
看來店鋪就到這裏了[p]
[f_s]
我們回去去別的地方吧[p]
[jump  storage=""  target="*choice" ]


*market28
#希爾薇
[f_st]
啊，這裏有各種茶葉在賣呢[p]
雖然不太想喝咖啡[r]
但是喝茶真的是讓人開心的事情呢[p]
[jump  storage=""  target="*choice" ]


*market29
#希爾薇
[f_t]
這個怪怪的是…裝飾品？這種東西也會有人賣呢[p]
雖然看起來很有趣但是…[r]
似乎裝飾在哪裏都不太合適呢[p]
[jump  storage=""  target="*choice" ]


*market30
#希爾薇
[f_t]
這裏有香辛料的香味呢…[p]
啊，這裏在賣肉幹[lr]
[f_ct]
不過相當貴啊[p]
[f_clt]
雖然做起來會很麻煩，但是說不定也會很值呢[p]
[jump  storage=""  target="*choice" ]



*book_event
[black]
[fadeoutbgm  time=500]
…[p]
[playbgm  loop="true"  storage="Ivory_Fiber.ogg" ]
[bg  time="1"  method="crossfade"  storage="bg-market.jpg" ]
[chara_mod  name="man"  time="1"  storage="chara/1/smile.png" ]
[chara_show  name="man"  time="100"  wait="true" ]
#奸商
哦呀漢尼拔醫生妳好啊[p]

#
（我看向聲音傳來的地方，曾經的那個古怪男人就出現在那裏）[p]
#奸商
看起來這個家夥成長的很順利呢[p]

#
（從他偷偷盯著希爾薇看這壹點「那個家夥」指的是她吧）[p]
#奸商
最近在這裏的生意相當順利[lr]
我會偶爾在這裏出入[p]
可能以後還會在這裏見面呢[p]
[chara_mod  name="man"  time="1"  storage="chara/1/def.png" ]
不過今日我遇到了壹些小麻煩[r]
我為了把貨物運到這裏來才特地過來…[p]
現在必須要等著對方呢[p]

#
（男人旁邊放著很多大堆的貨物，有些不爽地皺著眉頭）[p]
[chara_mod  name="man"  time="1"  storage="chara/1/smile.png" ]
#奸商
對了，機會難得您也來看看嗎？[p]
我暫時走不開[r]買家也沒決定要買什麽東西[p]
如果您感興趣的話…這個怎麽樣？[p]
#
（男人從行李中拿出了壹本皺巴巴的書）[p]
#奸商
這可是國外的草藥學譯本圖鑒，平常可是很少見的哦[p]
#
（草草的翻開看了下，有幾種草藥映在眼里）[p]
#
（雖然大部份是聽說過的草藥[r]
說不定這些藥用附近森林的材料就能制作）[p]
#奸商
看來您很有興趣呢[p]
這個雖然很有價值…不過我也不會賣很貴的哦[p]
#
（是為了回報我為希爾薇花銷的治療費所以才買來的嗎）[p]
#奸商
哎呀呀。非常感謝您的購買[p]
啊，我的客人來了[p]
如果有機會的話就再見吧[p]
[chara_hide  name="man"  time="100"  wait="true" ]
#
（男人走了）[p]
[eval exp="f.book=1" ]
[black]
[fadeoutbgm  time=500]
…[p]
[playbgm  loop="true"  storage="Apricot_Smile.ogg"  ]
[bg  time="1"  method="crossfade"  storage="bg-market.jpg" ]
[show_stand]
[button  storage=""  target="*re"  graphic="ch/look-again.png"    x="0"  y="200" ]
[button  storage=""  target="*go_home"  graphic="ch/end-walk.png"   x="0" y="350" ]
[s ]
[jump  storage=""  target="*choice" ]

[_tb_end_tyrano_code]