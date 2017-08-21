[_tb_system_call storage=system/_step6.ks]

[tb_start_tyrano_code]
*a
[eval exp="f.step=6" ]
[eval exp="f.feeling=0" ]
[eval exp="f.act='non'" ]
[eval exp="f.lust=0" ]
[eval exp="f.market=0" ] 
[eval exp="f.sexless=0" ]
[eval exp="f.sexless_c=0" ]

[eval exp="f.h_m=0" ]
[eval exp="f.h_b=0" ]
[eval exp="f.h_c=0" ]
[eval exp="f.h_v=0" ]

[eval exp="f.h_act='non'" ]
[eval exp="f.h_right='non'" ]
[eval exp="f.h_left='non'" ]
[eval exp="f.h_sex=0" ]
[eval exp="f.s_ex=0" ]
[eval exp="f.y_ex=0" ]
[eval exp="f.s_feel=0" ]
[eval exp="f.y_feel=0" ]
[eval exp="f.wet=0" ]

*show_bace
[cm]
[if exp="f.h_m>=400" ]
[eval exp="f.h_m=400" ]
[endif]
[if exp="f.h_b>=400" ]
[eval exp="f.h_b=400" ]
[endif]
[if exp="f.h_c>=400" ]
[eval exp="f.h_c=400" ]
[endif]
[if exp="f.h_v>=400" ]
[eval exp="f.h_v=400" ]
[endif]

[if exp="f.love>=9999" ]
[eval exp="f.love=9999" ]
[endif]
[if exp="f.lust>=9999" ]
[eval exp="f.lust=9999" ]
[endif]

[iscript]
TG.stat.stack["call"] = [];
TG.stat.stack["if"] = [];
[endscript]

[eval exp="f.feeling=0" ]

[eval exp="f.morning_h=0" ]
[if exp="f.dress==31 && f.lust>=10 || f.dress==32 && f.lust>=10 || f.dress==33 && f.lust>=10" ]
[iscript]
f.morning_h=Math.floor(Math.random() * 3 + 1);
[endscript]
[endif]

[if exp="f.act=='non' && f.morning_h==1" ]
[jump  storage="H_morning.ks"  target="*morning" ]
[endif]

[hide_skip]
[set_sit]
[s_s]
[set_time]
[show_sit]

[if exp="f.act=='non'" ]
[eval exp="f.act=0" ]
[playbgm  loop="true"  storage="Silver_Glass.ogg" ]
[s_sst]
#シルヴィ
…おはようございます、[name][p]
[s_s]
[elsif exp="f.act=='nonp'" ]
[eval exp="f.act=0" ]
[playbgm  loop="true"  storage="Silver_Glass.ogg" ]
[s_tp]
#シルヴィ
…おはようございます、[name][p]
[s_sp]
[elsif exp="f.act=='sex'" ]
[eval exp="f.act=0" ]
[eval exp="f.sexless=0" ]
[eval exp="f.sexless_c=0" ]
[playbgm  loop="true"  storage="Silver_Glass.ogg" ]
[s_cltp]
#シルヴィ
…おはようございます、[name][p]
[s_tp]
昨日は…その…[lr]気持ちよすぎて…[p]いつの間にか意識が飛んじゃってたみたいです。[p]
[s_cltp]
気がついたら、もう朝で…。[lr]すいません。[p]
[s_clp]
[elsif exp="f.act=='sexxx'" ]
[eval exp="f.act=0" ]
[eval exp="f.sexless=0" ]
[eval exp="f.sexless_c=0" ]
[playbgm  loop="true"  storage="Silver_Glass.ogg" ]
[s_cltp]
#シルヴィ
…おはようございます、[name][p]
[s_ctp]
昨日は、その…勝手なことをして、ごめんなさい。[p]
[s_ccltp]
自分で自分が抑えられなくて…。[p]
[s_cltp]
でも、昨日の[name]凄かった…♡[p]
[s_tp]
正確には覚えてないんですけど…[r]
たくさん…していただいたんですよね。[p]
…まだ脚に力が入らないんです。[p]
[s_ccltp]
今日は家で休ませていただいていいでしょうか？[p]
[s_p]

[elsif exp="f.act=='morning'" ]
[eval exp="f.act=3" ]
[eval exp="f.sexless=0" ]
[eval exp="f.sexless_c=0" ]
[playbgm  loop="true"  storage="Silver_Glass.ogg" ]
[s_tp]
#シルヴィ
…もう、落ち着きました。[lr]改めておはようございます。[p]
[s_cltp]
もうお昼近いですね。[lr][name]が朝からあんなにするから…。[p]
[s_tp]
…嫌ではないですけど。[p]
[s_p]

[elsif exp="f.act=='wood'" ]
[eval exp="f.act=0" ]
[eval exp="f.sexless=0" ]
[eval exp="f.sexless_c=0" ]
[playbgm  loop="true"  storage="Silver_Glass.ogg" ]
[s_cltp]
#シルヴィ
…おはようございます、[name][p]
[s_tp]
昨日は家まで運んでくれて、ありがとうございました。[p]
しかも私、帰りに疲れて寝ちゃったみたいで…。[p]
すいません…。[p]

[elsif exp="f.act=='sexmax'" ]
[eval exp="f.act=4" ]
[eval exp="f.sexless=0" ]
[eval exp="f.sexless_c=0" ]
[eval exp="f.out=1" ]
[playbgm  loop="true"  storage="Silver_Glass.ogg" ]
[s_cltp]
#シルヴィ
…おはようございます、[name][p]
[s_tp]
結局、朝までしてしまいましたね…。[p]
[s_cltp]
もうお昼…。何か食べましょうか。[p]
…。[p]
[s_ctp]
ん…ごめんなさい。しばらく立てそうもありません。[lr]
というか、まだ、体の震えも治まってなくて…。[p]
[s_cp]
[endif]


*before_menu
[hide_skip]
[cancelskip]
[if exp="f.act>=7" ]
[jump  storage=""  target="*night" ]
[else]
[endif]
[set_time]

[jump  storage="set_show.ks"  target="*show_button2" ]


*night
[eval exp="f.day=f.day+1" ]
[eval exp="f.miyage='non'" ]
[eval exp="f.act='non'" ]
[eval exp="f.work_c=0" ]
[eval exp="f.out=0" ]
[if exp="f.lust>=15" ]
[eval exp="f.lust=f.lust-1" ]
[elsif exp="f.lust>=100" ]
[eval exp="f.lust=f.lust-2" ]
[elsif exp="f.lust>=500" ]
[eval exp="f.lust=f.lust-3" ]
[elsif exp="f.lust>=1000" ]
[eval exp="f.lust=f.lust-5" ]
[elsif exp="f.lust>=3000" ]
[eval exp="f.lust=f.lust-10" ]
[elsif exp="f.lust<=0" ]
[eval exp="f.lust=0" ]
[endif]
[eval exp="f.sexless=f.sexless+1" ]
[fadeoutbgm time=500]
[if exp="f.lust<=30" ]
[jump  storage=""  target="*day_end" ]
[elsif exp="f.lust<=300" ]
[jump  storage=""  target="*x" ]
[elsif exp="f.lust<=700" ]
[jump  storage=""  target="*xx" ]
[else]
[jump  storage=""  target="*xxx" ]
[endif]

*x
[if exp="f.sexless>=4 && f.sexless_c==0" ]
[eval exp="f.sexless_c=1" ]
[jump  storage=""  target="*day_end_h" ]
[elsif exp="f.sexless>=7 && f.sexless_c==1" ]
[eval exp="f.sexless_c=2" ]
#
…[p]
（もう夜だ…寝支度をしよう[p]
[jump  storage="H_sexless1.ks"  target="*sexless1" ]
[elsif exp="f.sexless>=11 && f.sexless_c==2" ]
[eval exp="f.sexless_c=3" ]
#
…[p]
（もう夜だ…寝支度をしよう[p]
[jump  storage="H_sexless2.ks"  target="*sexless2" ]
[elsif exp="f.sexless>=15 && f.sexless_c==3" ]
[jump  storage=""  target="*cant_wait" ]
[elsif exp="f.sexless_c==3" ]
[jump  storage=""  target="*day_end_h" ]
[else]
[jump  storage=""  target="*day_end" ]
[endif]

*xx
[if exp="f.sexless>=3 && f.sexless_c==0" ]
[eval exp="f.sexless_c=1" ]
[jump  storage=""  target="*day_end_h" ]
[elsif exp="f.sexless>=6 && f.sexless_c==1" ]
[eval exp="f.sexless_c=2" ]
#
…[p]
（もう夜だ…寝支度をしよう[p]
[jump  storage="H_sexless1.ks"  target="*sexless1" ]
[elsif exp="f.sexless>=8 && f.sexless_c==2" ]
[eval exp="f.sexless_c=3" ]
#
…[p]
（もう夜だ…寝支度をしよう[p]
[jump  storage="H_sexless2.ks"  target="*sexless2" ]
[elsif exp="f.sexless>=10 && f.sexless_c==3" ]
[jump  storage=""  target="*cant_wait" ]
[elsif exp="f.sexless_c==3" ]
[jump  storage=""  target="*day_end_h" ]
[else]
[jump  storage=""  target="*day_end" ]
[endif]

*xxx
[if exp="f.sexless>=2 && f.sexless_c==0" ]
[eval exp="f.sexless_c=1" ]
[jump  storage=""  target="*day_end_h" ]
[elsif exp="f.sexless>=4 && f.sexless_c==1" ]
[eval exp="f.sexless_c=2" ]
#
…[p]
（もう夜だ…寝支度をしよう[p]
[jump  storage="H_sexless1.ks"  target="*sexless1" ]
[elsif exp="f.sexless>=6 && f.sexless_c==2" ]
[eval exp="f.sexless_c=3" ]
#
…[p]
（もう夜だ…寝支度をしよう[p]
[jump  storage="H_sexless2.ks"  target="*sexless2" ]
[elsif exp="f.sexless>=8 && f.sexless_c==3" ]
[jump  storage=""  target="*cant_wait" ]
[elsif exp="f.sexless_c==3" ]
[jump  storage=""  target="*day_end_h" ]
[else]
[jump  storage=""  target="*day_end" ]
[endif]

*day_end
[s_s]
#
…[p]
（もう夜だ…寝支度をしよう[p]
[s_st]
#シルヴィ
…そろそろ寝ましょうか。[lr]
[s_ssp]
今日も一緒に…。[p]
[black]
…[p]
[jump  storage=""  target="*show_bace" ]


*day_end_h
[s_s]
#
…[p]
（もう夜だ…寝支度をしよう[p]
[s_p]
…[p]
[s_clt]
#シルヴィ
あ、なんでもないです。[lr]
[s_st]
そろそろ寝ましょうか。[p]
[black]
…[p]
[jump  storage=""  target="*show_bace" ]

*cant_wait
#
…[p]
[s_cp]
（もう夜だ…寝支度をしよう[p]
[s_cclp]
#シルヴィ
…[p]
[jump  storage="H_sexless3.ks"  target="*sexless3" ]


*talk1
[s_st]
[name]？[lr]
[s_sstp]
#シルヴィ
…大好きです。[p]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk2
[s_cclt]
#シルヴィ
ずっと、一緒ですよね…。[p]
[s_ccl]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk3
[s_sclt]
#シルヴィ
お出かけも楽しいけど、こうして家で二人きりも落ち着きますね。[p]
[s_s]
[eval exp="f.lust=f.lust-1" ]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk4
[s_st]
#シルヴィ
私、幸せです。[lr]
[name]といれば昔のこと、思い出してもつらくないです。[p]
[s_s]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk5
[s_stp]
#シルヴィ
…[name]。[p]
[s_sp]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk6
[s_sp]
#シルヴィ
…。[p]
[s_ssp]
…。[p]
#
（何をしなくとも微笑みを向けてくる[p]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk7
[s_clp]
#シルヴィ
…[p]
#
（何もいわずに身を寄せてきた。[p]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk8
[s_st]
#シルヴィ
[name]といると昔のことを忘れていられます。[p]
[s_s]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk9
[s_cclt]
#シルヴィ
[name]がそばにいないと、少し不安になってしまいます。[lr]
[s_ct]
できるだけ一緒にいてもいいですか？[p]
[s_c]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk10
[s_cclt]
#シルヴィ
一人の夜はもう嫌です…。[lr]
[s_ct]
一緒にいてください。[p]
[s_c]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk11
[s_st]
#シルヴィ
[name]といれば、どこにいても何をしていても楽しいです。[p]
[s_s]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk12
[s_clt]
#シルヴィ
[name]のくれるものは全部私の宝物です。[lr]
[s_stp]
物も、気持ちも、思い出も[p]
[s_sp]
[eval exp="f.lust=f.lust-1" ]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk13
[s_stp]
#シルヴィ
もっと[name]に好きになってもらいたいです。[lr]
私、がんばります。[p]
[s_sp]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk14
[s_ct]
#シルヴィ
私の傷、醜くないですか？[lr]
[name]が嫌なら、できるだけ隠したいんですけど…[p]
[s_c]
[eval exp="f.lust=f.lust-1" ]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk15
[s_sclp]
#シルヴィ
どこにも行かないでくださいね…。[p]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk16
[s_st]
#シルヴィ
何か、してほしいことはないですか？[lr]
[name]のお役に立ちたいです。[p]
[s_s]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk17
[s_st]
#シルヴィ
のどは渇いてませんか？[lr]
なにかお飲み物、もってきましょうか？[p]
[s_s]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk18
[s_st]
#シルヴィ
お腹空きませんか？[lr]
簡単なものでよければ何か作りますよ。[p]
[s_s]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk19
[s_t]
#シルヴィ
お掃除と洗濯と、お料理もきっと上手になって…。[lr]
[s_clt]
あとは、何ができるかな…。[p]
[s_cl]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk20
[s_st]
#シルヴィ
ご迷惑じゃなければ、[name]のお仕事も手伝わせてくれませんか？[p]
[s_s]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk21
[s_ct]
#シルヴィ
あの服屋の店員さん、ちょっと怖くないですか？[lr]
なんというか、つかみどころがない感じが…。[p]
[s_c]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk22
[s_ct]
#シルヴィ
[name]も、やっぱり色々と豊満な女性に魅力を感じるんでしょうか？[lr]
[s_cclt]
あの服屋の店員さんに会う度、少し惨めな気持ちになってしまいます…。[p]
[s_ccl]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk23
[s_t]
#シルヴィ
今度あの商人の方に会ったら、きちんとお礼をしたいです。[lr]
[s_clt]
優しくはなかったけど、ひどいこともしなかったし、[lr]
[s_st]
何より私をここに連れてきてくれたのはいくら感謝してもしきれません。[p]
[s_s]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk24
[s_cl]
#シルヴィ
…。[p]
#
（…。[p]
#シルヴィ
[s_ctp]
…ぁ、ごめんなさい。[lr]少しウトウトしちゃったみたいです[p]
[s_cp]
[eval exp="f.lust=f.lust-1" ]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk25
[s_ct]
#シルヴィ
お出かけは楽しいですけど、[name]以外の人はまだ少し怖いんです…。[p]
[s_c]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk26
[s_st]
#シルヴィ
[name]に引き取ってもらえて、私本当に幸運でした。[lr]
[s_scltp]
今までの不幸がかすむぐらい…。[p]
[s_sclp]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk27
[s_t]
#シルヴィ
本棚の本を見てみてもいいですか？[lr]
一応読み書きはできるんです。[p]
知識がある方が[name]のお役に立てることも増えるかもしれないし。[p]
[s_s]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk28
[s_t]
#シルヴィ
[name]は自分のお洋服を買ったりはしないんですか？[p]
[s_ct]
私のお洋服ばかり買っていただいて…。[p]
[s_c]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk
[s_st]
#シルヴィ
お洋服を買ってもらえるのも、[r]
美味しいデザートをご馳走してもらえるのも嬉しいです。[p]
[s_t]
でも気を使わなくても大丈夫ですよ？[lr]
[s_ssp]
私、[name]がいればそれだけで幸せですから。[p]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk29
[s_t]
#シルヴィ
患者さんの病気や怪我もそれほどひどくないみたいですし、[r]
この町は平和な所なんですね。[p]
[s_clt]
私が育った場所はもっと治安の悪いところにありました。[p]
[s_cl]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk30
[s_t]
#シルヴィ
ここに来る前のお屋敷には私の他にも奴隷が何人かいました。[p]
[s_ct]
雑用や労働のための奴隷。[lr]
夜の相手をする奴隷。[lr]
[s_cclt]
私はただ、痛めつけて楽しむための奴隷だったみたいです。[p]
[s_ccl]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk31
[s_t]
#シルヴィ
前に私を飼っていた人。[lr]
[s_clt]
事故で亡くなったって言われてましたけど、本当は違うんです。[p]
色んな人の恨みを買っていたらしいです…。[p]
[s_cl]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk32
[s_t]
#シルヴィ
私を飼っていた人、[r]
私の前にも何人か痛めつけて楽しむための奴隷を買ってたらしいです。[p]
[s_cclt]
…事件が起こるタイミングがもう少し遅かったら、[r]
私もその人たちと同じことになってたかもしれません。[p]
[s_ccl]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk33
[s_clt]
#シルヴィ
物心つく頃から私は一人で、家族と言うものを知りません。[lr]
[s_ct]
…[name]を、家族のように思ったら、ご迷惑でしょうか？[p]
[s_c]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk34
[s_ct]
#シルヴィ
私の体、貧相だけど、嫌いじゃないですか？[lr]
まだ、成長はすると思いますから…。[p]
[s_c]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk35
[s_st]
#シルヴィ
[name]を思うと、楽しくて。[lr]
[s_ccltp]
幸せすぎて苦しくもなります。[p]
[s_cclp]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk36
[s_ctp]
#シルヴィ
[name]…。[lr]抱きしめて…くれませんか？[p]
[s_cp]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk37
[s_clp]
#シルヴィ
ん…[p]
#
（突然唇を重ねられた[p]
[eval  exp="f.h_m=f.h_m+1" ]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk38
[s_ctp]
#シルヴィ
こうして一緒にいるだけで、体が火照るような…。[p]
[s_cp]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk39
[s_stp]
#シルヴィ
私は、[name]のものです。[lr]
心も、体も…。[p]
[s_sp]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk40
[s_clt]
#シルヴィ
普通の家庭に生まれていたら、辛い過去はなかったのかもしれません。[lr]
でも、そうしたら[name]ともきっと会えなかった。[p]
[s_stp]
そう考えたら、みなしごでよかったって思います。[p]
[s_sp]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk41
[s_sstp]
#シルヴィ
[name]といれば、どこにいても何をしていても幸せです。[p]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk42
[s_cltp]
#シルヴィ
[name]といると、昔のことなんてどうでもよくなります。[p]
[s_clp]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk43
[s_cltp]
#シルヴィ
奴隷でもいいから、ずっとお側に居させてください。[p]
[s_clp]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk44
[s_cltp]
#シルヴィ
[name]。[lr]
私にして欲しいことがあったら、遠慮しないで言ってくださいね。[lr]
[s_tp]
私、精一杯ご奉仕します。[p]
[s_p]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk45
[s_t]
#シルヴィ
あの服屋さん、普通じゃない服や、服でないものも置いてありますよね。[p]
[s_stp]
[name]が着てほしい物なら、私なんでも着ますからね。[p]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk46
[s_clt]
#シルヴィ
[name]は色んなことを教えてくれましたね。[p]
[s_st]
優しい、暖かい、甘い、嬉しい。[lr]
[s_cltp]
…あと、気持ちいい。[p]
[s_clp]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk47
[s_ctp]
#シルヴィ
最近、[name]に触れると、[r]
なんだかお腹の下の方がきゅうってなるんです。[p]
[s_cp]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk48
[s_cp]
#
（太ももを擦り合わせるようにもじもじとしている[p]
#シルヴィ
…。[p]
（目が合うと頬がさらに赤らんだような気がした。[p]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk49
[s_ctp]
#シルヴィ
[name]…　[p]
#
（こちらに寄り添い、なにやら切なそうな声を上げた[p]
[s_cp]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk50
[s_ctp]
#シルヴィ
[name]、その…。[lr]
[s_ccltp]
…なんでも…ないです。[p]
#
（なにか少し落ち着きがないようだ。[lr]
心なしか息が荒い。[p]
[s_cp]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk51
[s_clp]
#シルヴィ
ん…[p]
#
（突然唇を重ねられた。[lr]
熱い吐息と舌が口内に入り込んでくる。[p]
#シルヴィ
ちゅ…れる[p]
[eval  exp="f.h_m=f.h_m+1" ]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk52
[s_clp]
#シルヴィ
ん…[p]
#
（何も言わず後ろから抱きしめられた。[lr]
少し高く感じる体温と大きく高鳴る心音が背中から伝わってくる。[p]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk53
[s_ctp]
#シルヴィ
もっと、くっついても、いいですか？[p]
#
（返事より前に胴を抱えられた。[p]
[s_clp]
#シルヴィ
ふぅ…ん…。[p]
#
（しっかりと体を抱きしめ、[r]
腹をこすりつけるようにゆっくりと身じろぎしている。[p]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk54
[s_p]
#
（…[p]
（こちらの肩に頭を預けているシルヴィの頬に手をそえる。[p]
[s_tp]
#シルヴィ
…あむ[p]
#
（唐突にシルヴィに指を咥えられた[p]　
[s_cltp]
#シルヴィ
ん、ちゅ…。[lr]はぁ…れろ…。[p]　
#
（奉仕するように指先を舐め始めてしまった。[p]
[eval  exp="f.h_m=f.h_m+1" ]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk55
[s_ctp]
#シルヴィ
私、もう[name]がいないと、ダメだと思います…。[lr]
なにがって…、何もかもです…。[p]
[s_cp]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk56
[s_ctp]
#シルヴィ
常に[name]のことを求めるようになってしまいました。[lr]
心も、体も…[p]
[s_cp]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk57
[s_ctp]
#シルヴィ
最近、日が高いうちから[name]に抱かれている時の気持ちが脳裏を離れなくて…。[lr]
お腹のあたりが、いつも切ないです…。[p]
[eval  exp="f.lust=f.lust+1" ]
[s_cp]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk58
[s_tp]
#シルヴィ
[name]？[lr]
私、[name]を受け入れる準備はいつでもできてますから…。[p]
[s_tp]
ほんのちょっとでもそういう気持ちになったら、[r]
遠慮しないでいいですからね？[p]
[s_p]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk59
[s_ccltp]
#シルヴィ
あの…実は[name]に隠れて、その…。[lr]
[s_ctp]
自分を慰めたことがあるんです。[p]
[s_ccltp]
でも、全然満足できなくて、[lr]
余計辛くなってしまって…。[lr]
[s_ctp]
もう、[name]にしていただかないとダメみたいです…。[p]
[eval  exp="f.lust=f.lust+1" ]
[s_cp]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk60
[s_ctp]
#シルヴィ
[name]…。[p]
（シルヴィが正面から抱きついてきた。[p]
[name]…。[name]…。[p]
（繰り返しこちらを呼ぶばかりだが[r]
潤んだ瞳は何かを訴えるようにこちらを見上げている。[p]
[s_cp]
[eval  exp="f.h_b=f.h_b+1" ]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk61
[s_t]
外に出ると人の目を引いてしまうのは、やっぱりこの痕のせいですよね…[p]
[s_clt]
でも[name]さえ気にしないでくれるなら私は大丈夫です。[p]
[s_st]
私にとっては[name]が全てですから。[p]
[s_s]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk62
[s_ctp]
自分でも、自分がいやらしいって思います…。[p]
…[name]はそんな娘は嫌でしょうか？[r]
やっぱり迷惑でしょうか…？[p]
[s_p]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk63
[s_ctp]
いやらしい気持ちになっちゃうのは[name]のことを考えてる間だけなんです…。[p]
[s_ccltp]
でも、そばにいると考えちゃうし、そばにいないと不安になるし…。[p]
[s_cclp]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk64
[s_tp]
自分で体を動かすより、[name]に好きにされてる時の方が自然に思えてしまって。[p]
[s_cltp]
私の体、もう[name]の物になってしまったみたいです…。[p]
[s_clp]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk65
[s_tp]
[name]に激しくされると、私は[name]の物なんだって感じます。[p]
[s_cltp]
それがどうしようもなく嬉しく感じるのは、やっぱり変なんでしょうね…。[p]
[s_clp]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk66
[s_ctp]
たとえ他に生きていく居場所があったとしても、[r]
私もう[name]と一緒じゃないとダメです。[p]
ずっと一緒にいてください。ずっと…ずっと…。[p]
[s_cp]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk67
[s_stp]
[name]のそばにいるだけで嬉しくて、[name]に触れてると幸せです。[p]
[s_sp]
[jump  storage="after_action.ks"  target="*after_talk" ]

*talk68
[s_t]
[name]はどんな女性が好みなんでしょう？[p]
言葉使い、姿勢、振る舞い[r]
[s_ct]
私、どう変わればもっと好きになってもらえますか？[p]
[s_c]
[jump  storage="after_action.ks"  target="*after_talk" ]





[_tb_end_tyrano_code]


