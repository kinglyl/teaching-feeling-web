[_tb_system_call storage=system/_event3.ks]

[tb_start_tyrano_code]

*shop_first
[cancelskip]

[eval exp="f.c_b1=0" ]
[eval exp="f.c_b2=0" ]
[eval exp="f.c_b3=0" ]
[eval exp="f.c_b4=0" ]
[eval exp="f.c_b5=0" ]
[eval exp="f.c_c1=0" ]
[eval exp="f.c_c2=0" ]
[eval exp="f.c_c3=0" ]
[eval exp="f.c_c4=0" ]
[eval exp="f.c_c5=0" ]
[eval exp="f.c_d1=0" ]
[eval exp="f.c_d2=0" ]
[eval exp="f.c_d3=0" ]

[eval exp="f.r_a1=0" ]
[eval exp="f.r_a2=0" ]
[eval exp="f.r_a3=0" ]
[eval exp="f.r_a4=0" ]
[eval exp="f.r_a5=0" ]
[eval exp="f.r_b1=0" ]
[eval exp="f.r_b2=0" ]
[eval exp="f.r_b3=0" ]
[eval exp="f.r_b4=0" ]
[eval exp="f.r_b5=0" ]

[eval exp="f.p_a1=0" ]
[eval exp="f.p_a2=0" ]
[eval exp="f.p_a3=0" ]
[eval exp="f.p_a4=0" ]
[eval exp="f.p_a5=0" ]
[eval exp="f.p_a6=0" ]

[eval exp="f.g_a1=0" ]
[eval exp="f.g_a2=0" ]
[eval exp="f.g_a3=0" ]
[eval exp="f.g_a4=0" ]
[eval exp="f.g_a5=0" ]
[eval exp="f.g_b1=0" ]
[eval exp="f.g_b2=0" ]
[eval exp="f.g_b3=0" ]
[eval exp="f.g_b4=0" ]
[eval exp="f.g_b5=0" ]
[eval exp="f.g_c1=0" ]
[eval exp="f.g_c2=0" ]
[eval exp="f.g_c3=0" ]
[eval exp="f.g_c4=0" ]
[eval exp="f.g_c5=0" ]

[eval exp="f.s_a1=0" ]
[eval exp="f.s_a2=0" ]
[eval exp="f.s_a3=0" ]
[eval exp="f.s_a4=0" ]
[eval exp="f.s_b1=0" ]
[eval exp="f.s_b2=0" ]
[eval exp="f.s_b3=0" ]
[eval exp="f.s_b4=0" ]
[eval exp="f.s_b5=0" ]
[eval exp="f.s_b6=0" ]

[eval exp="f.ri_a1=0" ]
[eval exp="f.ri_a2=0" ]
[eval exp="f.ri_a3=0" ]
[eval exp="f.ri_b1=0" ]
[eval exp="f.ri_b2=0" ]
[eval exp="f.ri_b3=0" ]


[black]


（ふと不思議な雰囲気の店が目に入る。[lr]
外から中は見えず、なんの店なのかいまいち判断できない。[lr]
試しにドアを開けてみる。[p]
[playbgm  loop="true"  storage="Brilliant_Red.ogg"  ]
[chara_mod  name="body"  time="100"  storage="chara/body-s/stand-.png"  ]
[bg  time="1"  method="crossfade"  storage="bg-shop.jpg"  ]
[chara_show  name="body"  time="100"  wait="true" width="304"  height="900" ]


…[p]
（どうやら女物の服を中心に扱っている店内だ。[lr]
風変わりな柄や奇抜なデザインの服もちらほらと見える。[p]

[chara_mod  name="man"  time="100"  storage="chara/1/w-1.png"  ]
[chara_show  name="man"  time="100"  wait="true" ]


#不気味な店員

あら、いらっしゃいませ。[p]
#
（店内を見回していると不思議な雰囲気の女性が近寄ってきた。[p]
#不気味な店員
あらあら、今日はこちらのお嬢さんのお洋服をお探しにきたんですか？[lr]
そうでしょう？そうであってくださいな。[r]いえ、そうに違いありませんわ。[p]
だって、とても失礼なことを言うようですけど、[r]そのお嬢さんの格好は服を売ってる身としては悪い意味で見逃せませんもの。[p]
ほんのちょっと待っていただけますこと？[r]この子にぴったりなお洋服を見繕ってさしあげますわ。[p]
ほらほら、こっちへいらっしゃい。[p]
[chara_mod  name="body"  time="100"  storage="chara/body-s/stand-t-.png"  ]

#シルヴィ
え…。あっ。[p]
#
（止める間もなく怪しげな女性はシルヴィを店の奥へと連れて行ってしまった。[p]

[black]
[cancelskip]
…[p]
[bg  time="1"  method="crossfade"  storage="bg-shop.jpg"  ]
[chara_mod  name="man"  time="100"  storage="chara/1/w-1.png"  ]
[chara_mod  name="body"  time="100"  storage="chara/body-s/stand-cl.png"  ]
[chara_show  name="body"  time="200"  wait="true" left="770" ]
[chara_show  name="man"  time="100"  wait="true" left="80" ]

#不気味な店員
お待たせいたしました。[p]
どうですかお客様？[lr]見違えるようじゃございません？[p]
#
（シルヴィは少し品の良い服に身を包んでいる。[lr]
着なれないのか少し落ち着かない様子だ。[p]
#不気味な店員
年頃の娘にあんなほつれた布切れ１枚なんてあんまりですわ。[lr]
こっちの方がとても素敵だと思いません？[p]
私こちらのお洋服お買い上げすることを強くお勧めいたします。[p]

（どうしようか[p]

[button  storage=""  target="*buy"  graphic="ch/buy.png"    x="0"  y="200" ]
[button  storage=""  target="*not_buy"  graphic="ch/not-buy.png"   x="0"  y="350" ]
[s]

*buy
[cm]
[eval exp="f.c_b1=1" ]
[eval exp="f.r_a1=1" ]
[eval exp="f.p_a1=1" ]
[eval exp="f.s_a1=1" ]

[eval exp="f.dress=11" ]
[eval exp="f.pin=1" ]
[eval exp="f.hair=1" ]
[eval exp="f.socks=1" ]
[eval exp="f.trust=f.trust+3" ]
[eval exp="f.love=f.love+3" ]
#不気味な店員
ああ、お客様。とても賢明な判断だと思いますわ。[lr]身だしなみは人の品格を左右しますもの。[p]
これでこのお嬢さんもお客様にふさわしい素敵なレディーです。[p]
#
半ば強引にシルヴィの新しい服を一式購入してしまった。[p]
[fadeoutbgm time=500]
[black]
[set_stand]
[f_]
[playbgm  loop="true"  storage="Ochre_Breeze.ogg"  ]
[bg  time="1"  method="crossfade"  storage="bg-town.jpg"  ]
…[p]
[show_stand]

[f_ct]
#シルヴィ
…あの、ご主人様[p]
#シルヴィ
私にこんなお洋服、もったいないです…。[lr]
今からでも返品しに行った方が…。[p]

[button  storage=""  target="*cute"  graphic="ch/cute.png"    x="0"  y="200" ]
[button  storage=""  target="*bought"  graphic="ch/bought.png"   x="0"  y="350" ]
[s]

*bought
[cm]
[cancelskip]
ご主人様は、それでいいんですか…？[p]
[f_cclt]
…じゃあ、ありがたく、着させていただきます。[p]
[jump  storage="after_action.ks"  target="*after_town" ]

*cute
[cm]
[cancelskip]
[eval exp="f.trust=f.trust+1" ]
[eval exp="f.love=f.love+5" ]
[f_tp]
え、その…。[lr]…ありがとう、ございます。[p]
[f_ct]
でも、私…奴隷なのに…。こんな…。[p]
[f_cclt]
…いえ、なんでもないです。[p]
[black]
[jump  storage="after_action.ks"  target="*after_town" ]

*not_buy
[cm]
[cancelskip]
[eval exp="f.flag1='poor'" ]
#不気味な店員
あら、それはそれは残念ですわ…。[lr]
でも、気が変わったらまたお越しくださいな。[p]
いつでもお待ちしておりますわ。[p]
[jump  storage="after_action.ks"  target="*after_town" ]

*to_next
[cancelskip]
[show_skip]
[black]
[bg  time="1"  method="crossfade"  storage="bg-room.jpg"  ]
[playbgm  loop="true"  storage="Ivory_Fiber.ogg"  ]
[set_stand]
[f_cclt]
…[p]
[show_stand]


#シルヴィ
おはようございます…けほっ[p]
#
（朝、部屋から出てきたシルヴィはひどく顔色が悪く見える。[lr]体調が悪いようだ。[p]
[f_ct]
#シルヴィ
すいません…[lr]もしかしたら、風邪をひいてしまったかもしれません[p]
#
（額に手を置いてみる…。[lr]触れただけで熱の高さがはっきりと伝わる。[p]

[if exp="f.trust<=6" ]
[jump  storage=""  target="*leave" ]
[elsif exp="f.love<45" ]
[jump  storage=""  target="*leave" ]
[elsif exp="f.feed=='pet'" ]
[jump  storage=""  target="*leave" ]
[elsif exp="f.rape>=1" ]
[jump  storage=""  target="*leave" ]
[else]
[button  storage=""  target="*care"  graphic="ch/care.png"    x="0"  y="200" ]
[button  storage=""  target="*leave"  graphic="ch/leave.png"   x="0"  y="350" ]
[s]
[endif]

*leave
[cm]
[cancelskip]
#
（一応休んでいるように言っておく。[p]
[f_cclt]
#シルヴィ
はい、すいません。今日は、寝かせていただきます…。[p]
[black]
#
（シルヴィの体調は数日経っても良くならなかった。[p]
おそらく、ここに来る前から体にかかっていた負担が限界になったのだろう。[p]
ろくに食事や薬も飲み込めなくなり、[lr]
免疫の落ちた体は些細な体調不良をきっかけにみるみる衰弱していった。[p]
しばらくして、シルヴィは静かに息を引き取った…。[p]
[jump  storage="action_lead.ks"  target="*game_over" ]

*care
[cm]
[cancelskip]
[black]
[set_stand]
[bg  time="1"  method="crossfade"  storage="bg-bed.jpg"  ]
[f_cclt]
…[p]
[show_stand]


#
ベッドに寝かせ、消化に良い食事と薬を用意する。[p]
[f_ct]
#シルヴィ
…ご主人様？そこまでしてくれなくても。[p]
#
（ただの風邪だろうが少し熱が高い、用心に越したことはないだろう[p]

[black]
[set_stand]
…[p]
#
（案の定シルヴィの体調はしばらく良くならなかった[p]
[bg  time="1"  method="crossfade"  storage="bg-bed.jpg"  ]
[f_cclt]
…[p]
[show_stand]

[f_cclt]
#シルヴィ
ケホッ…コホッ…。[p]昔に風邪をひいたときは、こんなに長引かなかったんですけど…。[p]
#
（ここに来る前の生活で体が弱っていたのだろう。[p]

[fadeoutbgm time=500]
[black]
[set_stand]
…[p]
[bg  time="1"  method="crossfade"  storage="bg-bed.jpg"  ]
[playbgm  loop="true"  storage="Ivory_Fiber.ogg"  ]
[f_t]
[show_stand]


#シルヴィ
[f_cclt]
…おはようございます。[lr]
[f_t]
もう、だいぶ楽になりました。[p]

#
（シルヴィの額に手を当てる。[p]
（…[p]
（どうやら熱は下がったようだ[p]
[f_cclt]
#シルヴィ
ご迷惑をおかけしました。[lr]
[f_t]
家事やお手伝いもまたできそうですし、もう大丈夫です。[p]
[f_s]
…ありがとうございました。[p]
[eval exp="f.day=f.day+3" ]
[fadeoutbgm time=500]
[black]
[cancelskip]
[jump  storage="step4.ks"  target="*step4"  ]

[_tb_end_tyrano_code]

