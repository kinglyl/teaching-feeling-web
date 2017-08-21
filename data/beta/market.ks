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
（食品から加工品までいろんなものが売っている市場へ来た[p]
（普段は買い物は近場で済ませているが、[r]
シルヴィと一緒なら珍しいものを眺めるだけでも楽しめるだろう。[p]
#シルヴィ
[f_t]
こんな市場があったんですね。[lr]
人がたくさん…。[p]
[f_st]
いろんなものがありそうですね。[p]
[else]
（シルヴィを連れて市場に来た[p]
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
（ちらほらと店じまいを始めるのが目に入る…。[p]
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
（今日はここらで切り上げよう。[p]
[black]
…[p]
[playbgm  loop="true"  storage="Silver_Glass.ogg" ]
[jump  storage="after_action.ks"  target="*return_bace" ]

*market1
#シルヴィ
[f_t]
お酒を売っているところもあるんですね。[p]
私はお酒飲んだことはないですけど、おいしいんですよね？[p]
[f_st]
いつか大きくなったら飲んでみたいです。[p]
[jump  storage=""  target="*choice" ]

*market2
#シルヴィ
[f_ct]
このお芋？長くて赤いですね。[p]
サツマイモ？[lr]
お芋で、甘いんですか？[p]
どんな風に料理するんでしょう…。[p]
[jump  storage=""  target="*choice" ]

*market3
#シルヴィ
[f_t]
トマトが売ってますね。[p]
[f_ct]
生のトマトは…、そんなに好きじゃないなぁ。[p]
トマトソースとかは大丈夫なんですけど。[p]
[jump  storage=""  target="*choice" ]

*market4
#シルヴィ
[f_st]
コーヒーのいい香り…。[lr]
豆が売ってるんですね。[p]
[f_ct]
匂いはこんなにいい匂いなのに、コーヒーそのものはあんなに苦いなんて…。[p]
美味しそうに飲める人が羨ましいです。[p]
[jump  storage=""  target="*choice" ]

*market5
#シルヴィ
[f_t]
ニンジンが並んでる…。[p]
ニンジンって植物の根っこなんですよね？[lr]
[f_s]
オレンジ色の根っこなんて、不思議ですね。[p]
[jump  storage=""  target="*choice" ]


*market6
#シルヴィ
[f_t]
いろんな色のパプリカが…。[p]
[f_s]
同じパプリカなのにいろんな色があって面白いですね。[p]
しかも絵の具で塗ったみたいな派手な色。[lr]
[f_clt]
絵の具を肥料にしてる…わけないか。[p]
[jump  storage=""  target="*choice" ]

*market7
#シルヴィ
[f_c]
人がたくさんですね。[lr]
[f_sp]
手、少し強く握ってもいいですか？[p]
[jump  storage=""  target="*choice" ]

*market8
#シルヴィ
[f_st]
いろんなものが売ってますね。[lr]
野菜、果物、保存食に小物まで。[p]
棚の上がカラフルで、いろんな匂いもする…。[p]
[jump  storage=""  target="*choice" ]

*market9
#シルヴィ
[f_st]
玉ねぎがたくさん。[lr]
いろんなお料理に使えるんですよね？[p]
いつか私も色々作れるようになりたいです。[p]
[jump  storage=""  target="*choice" ]

*market10
#シルヴィ
[f_st]
おっきなかぼちゃ。[p]
[f_t]
パイにするぐらいしか料理が思いつかないんですけど、[r]
他にも何かあるんでしょうか？[p]
[f_s]
一個全部パイにしたら私と[name]だけじゃ食べ切れませんね。[p]
[jump  storage=""  target="*choice" ]

*market11
#シルヴィ
[f_t]
スパイスがたくさん並んでますね。[p]
ほんのちょっとならいい香りだけど、[r]
こんなにたくさんだと匂いも濃いですね。[p]
[f_ct]
いろんな匂いがして目眩がしそうです。[p]
[jump  storage=""  target="*choice" ]

*market12
#シルヴィ
[f_ct]
セロリだ。…正直あんまり好きじゃないです。[p]
[f_clt]
アスパラとかも、青臭いっていうんでしょうか？[lr]
草みたいな香りが苦手で…。[p]
[jump  storage=""  target="*choice" ]

*market13
#シルヴィ
[f_st]
あ、いろんなジャムが並んでる…。[p]
瓶に入ったジャムは綺麗でいろんな色があって、[lr]
[f_sst]
味を想像するのも楽しいし、ワクワクしちゃいます。[p]
[jump  storage=""  target="*choice" ]

*market14
#シルヴィ
[f_t]
あ、オレンジが落っこちて…。[lr]
よいしょ、[p]
[f_s]
元の場所に戻しておきましょう。[p]
[jump  storage=""  target="*choice" ]


*market15
#シルヴィ
[f_t]
これはオレンジ[lr]
…じゃないですね。[p]
[f_ct]
みかん？[lr]
オレンジより小さいけど、おいしいんでしょうか？[p]
[jump  storage=""  target="*choice" ]

*market16
#シルヴィ
[f_s]
真っ赤なりんご、いい香りがしますね。[p]
[f_st]
りんごってこうして並んでるのを見ると、[r]
カットしないでそのまま齧ってみたくなります[p]
[jump  storage=""  target="*choice" ]

*market17
#シルヴィ
[f_s]
あ、メロンが安いですね。[p]
[f_clt]
でも荷物になっちゃうし[r]
お散歩ついでに買えるものじゃないですね。[p]
[jump  storage=""  target="*choice" ]


*market18
#シルヴィ
[f_t]
丸ごとのパイナップル…おっきいですね。[p]
[f_ct]
これ、そのまま買って帰っても剥くのが大変そう…。[lr]
特別な道具とかなくても剥けるのかな。[p]
[jump  storage=""  target="*choice" ]

*market19
#シルヴィ
[f_s]
ぶどうがたくさん並んでますね…。[p]
[f_st]
え、一つ味見してもいいんですか？[p]
[f_ssp]
…ん、甘い…♡[p]
[jump  storage=""  target="*choice" ]

*market20
#シルヴィ
[f_st]
イチゴがたくさん。[p]
そのまま食べても美味しそうだけど…[lr]
[f_ss]
ケーキのイチゴ思い出しちゃいます。[p]
[jump  storage=""  target="*choice" ]

*market21
#シルヴィ
[f_t]
面白い形の果物？ですね。[lr]
スターフルーツ？[p]
[f_st]
あ、切ると星型になるんですね。面白い…。[p]
[jump  storage=""  target="*choice" ]

*market22
#シルヴィ
[f_t]
バナナが積んである。[p]
[f_st]
刃物がいらないから食べやすくっていいですよね。[p]
マフィンやケーキにもできるらしいですよ。[lr]
[f_ss]
[name]のためにいつか作ってみたいです。[p]
[jump  storage=""  target="*choice" ]

*market23
#シルヴィ
[f_t]
あ、さくらんぼ[lr]
…じゃない。[p]
[f_ct]
なんでしょうこれ？[lr]
…アセロラ？[p]
[f_t]
香りもさくらんぼとはだいぶ違いますね。[lr]
おいしいのかな？[p]
[jump  storage=""  target="*choice" ]

*market24
#シルヴィ
[f_t]
なんだかトゲトゲで堅そうなのが…。[lr]
これなんでしょう？[p]
ドリアン？[lr]
[f_ct]
…臭いけど、甘いんですか？[p]
どんな味か想像しにくいですね…。[lr]
[f_clt]
食べてみたいような、みたくないような…。[p]
[jump  storage=""  target="*choice" ]

*market25
#シルヴィ
[f_s]
なんだかいろんな色があって綺麗だけど、これなんでしょう。[p]
あ、よく見たらロウソクですね。[p]
[f_t]
アロマキャンドル？[lr]
あかりのためのロウソクとは違うんだ。[p]
[jump  storage=""  target="*choice" ]

*market26
#シルヴィ
[f_s]
ガラスの食器が並んでますね。[p]
[f_st]
キラキラしてて綺麗…。[p]
[f_ct]
でもここまで凝ったものだと、[r]
日常的に使うのはちょっと怖そうですね。[p]
[jump  storage=""  target="*choice" ]


*market27
#シルヴィ
[f_t]
あ、端の方に来ちゃいましたね。[lr]
お店はここまでみたいです。[p]
[f_s]
戻って別の方を見てみましょうか。[p]
[jump  storage=""  target="*choice" ]


*market28
#シルヴィ
[f_st]
あ、いろんなお茶が売ってますよ。[p]
コーヒーは飲めないけど、[r]
お茶なら飲めるから味を想像できて楽しいです。[p]
[jump  storage=""  target="*choice" ]


*market29
#シルヴィ
[f_t]
なんだか変な…置物？が売ってるみたいですね。[p]
いろんなのがあって面白いけど…[r]
どれもうちに飾ってもあまり合いそうにないですね。[p]
[jump  storage=""  target="*choice" ]


*market30
#シルヴィ
[f_t]
なんだか香辛料の香りが…。[p]
あ、干し肉が売ってるんだ。[lr]
[f_ct]
…結構値段するんですね。[p]
[f_clt]
自分で作るのも大変そうだし、手間を考えたらそんなものなのかな。[p]
[jump  storage=""  target="*choice" ]



*book_event
[black]
[fadeoutbgm  time=500]
…[p]
[playbgm  loop="true"  storage="Ivory_Fiber.ogg" ]
[bg  time="1"  method="crossfade"  storage="bg-market.jpg" ]
[chara_mod  name="man"  time="1"  storage="chara/1/smile.png" ]
[chara_show  name="man"  time="100"  wait="true" ]
#怪しい男
おや、どうも先生。[p]

#
（声をかけられて振り向くといつぞやの男が立っていた。[p]
#怪しい男
どうやら、それとはうまくいっているようですね。[p]

#
（シルヴィをちらりと見て言ったところを見ると「それ」とは彼女のことだろう。[p]
#怪しい男
ここでは最近商談がうまく進んでましてね。[lr]
この街にはたまに出入りするようになったんです。[p]
もしかしたらこれからも顔をあわせることになるかもしれませんね。[p]
[chara_mod  name="man"  time="1"  storage="chara/1/def.png" ]
しかし今日はちょっとしたトラブルがありまして、[r]
私がわざわざ積荷の一部を運ぶ羽目になっちまって…。[p]
今は足を待ってるところです。[p]

#
（男は隣に置いてある大きな荷物に手を置き少し不機嫌そうに顔をしかめた。[p]
[chara_mod  name="man"  time="1"  storage="chara/1/smile.png" ]
#怪しい男
そうだ、せっかくですから先生も何か見てみますか？[p]
私も暫くここから動けないし、[r]買い手が決まってないものなんで欲しいものがあればお売りしますよ。[p]
先生の興味の持ちそうなものは、そうだな…これなんてどうでしょう？[p]
#
（男は荷物の中から本を一冊取り出した。[p]
#怪しい男
こいつは国外の薬学を訳したものらしくてですね、ここらでは珍しいものですよ。[p]
#
（軽く中を見てみると、ある項目に目が止まる。[p]
#
（大半は聞いたこともない植物を材料にしているが、[r]
この薬は手近なものでもできるようだ…。[p]
#怪しい男
興味は惹かれたようですね。[p]
それなりに値は張りますが…、多少はお安くしますよ。[p]
#
（シルヴィの件もあるし多めにもらった治療費を返すつもりで購入しようか…。[p]
#怪しい男
それはそれは。お買い上げありがとうございます。[p]
お、ちょうど迎えもきたようです。[p]
また機会があればお会いしましょう。[p]
[chara_hide  name="man"  time="100"  wait="true" ]
#
（男は去っていった[p]
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