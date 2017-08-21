[_tb_system_call storage=system/_wood.ks]

*work
[cm ]
[show_skip]
[free]
[set_work]
[w_]
[bg  time="1"  method="crossfade"  storage="work.jpg"  ]
[show_work]
[eval exp="f.work_c=1" ]

#シルヴィ
[w_st]
お仕事、頑張ってお手伝いします。[p]
#
シルヴィに仕事を少し手伝ってもらう事にした。[p]

*re
[cm ]
[iscript]
f.work=Math.floor(Math.random() * 8 + 1);
[endscript]
[jump  storage=""  target="*talk" ]


*choice
[eval exp="f.act=f.act+1" ]
[eval exp="f.love=f.love+1" ]
[if exp="f.act==7" ]
[jump  storage=""  target="*stop"  ]
[endif]

[button  storage=""  target="*re"  graphic="ch/continue.png"    x="0"  y="270" ]
[button  storage=""  target="*stop"  graphic="ch/stop.png"   x="0" y="420" ]
[s ]

*talk
[cm]
[if exp="f.work==1" ]
[jump  storage=""  target="*work1" ]
[elsif exp="f.work==2" ]
[jump  storage=""  target="*work2" ]
[elsif exp="f.work==3" ]
[jump  storage=""  target="*work3" ]
[elsif exp="f.work==4" ]
[jump  storage=""  target="*work4" ]
[elsif exp="f.work==5" ]
[jump  storage=""  target="*work5" ]
[elsif exp="f.work==6" ]
[jump  storage=""  target="*work6" ]
[elsif exp="f.work==7" ]
[jump  storage=""  target="*work7" ]
[elsif exp="f.work==8" ]
[jump  storage=""  target="*work8" ]
[elsif exp="f.work==9" ]
[jump  storage=""  target="*work9" ]
[elsif exp="f.work==10" ]
[jump  storage=""  target="*work10" ]
[elsif exp="f.work==11" ]
[jump  storage=""  target="*work11" ]
[elsif exp="f.work==12" ]
[jump  storage=""  target="*work12" ]
[elsif exp="f.work==13" ]
[jump  storage=""  target="*work13" ]
[elsif exp="f.work==14" ]
[jump  storage=""  target="*work14" ]
[elsif exp="f.work==15" ]
[jump  storage=""  target="*work15" ]
[endif]


*stop
[cm ]
#
（今日はここら辺で切り上げよう…。[p]
[w_t]
#シルヴィ
今日はおしまいですか？[p]
[w_st]
はい。お疲れ様でした、[name][p]
[black]
…[p]
[hide_skip]
[cancelskip]
[jump  storage="step6.ks"  target="*show_bace"  ]



*work1
[cm ]
#シルヴィ
[w_t]
この書類、どこにしまっておけばいいですか？[p]
[jump  storage=""  target="*choice"  ]


*work2
[cm ]
#シルヴィ
[w_t]
お仕事といっても、それほど忙しくはなりませんね。[p]
[w_st]
平和な証拠だからいいことではありますけど。[p]
[jump  storage=""  target="*choice"  ]

*work3
[cm ]
#シルヴィ
[w_st]
いつかお薬の調合とかもきちんと覚えて、[r]
[w_stp]
もっとお役に立てるように…。[p]
[jump  storage=""  target="*choice"  ]

*work4
[cm ]
#シルヴィ
[w_t]
棚を少し整理しておきますね。[p]
[w_]
傾いた書類や薬入れを直すぐらいで、順番は変えないように…。[p]
[jump  storage=""  target="*choice"  ]

*work5
[cm ]
#シルヴィ
[w_t]
この棚少しほこりっぽいですね。[p]
[w_st]
軽く掃除しておきます。[p]
[jump  storage=""  target="*choice"  ]

*work6
[cm ]
#シルヴィ
[w_st]
今日は確か診察の予約が入ってるんでしたよね。[p]
[w_t]
カルテが…えっと、これかな？[p]
[jump  storage=""  target="*choice"  ]

*work7
[cm ]
#シルヴィ
[w_st]
まだ大したことはできないけど、[r]
この服を着てるだけでもお手伝いできてる気分になっちゃいます。[p]
[jump  storage=""  target="*choice"  ]

*work8
[cm ]
#シルヴィ
[w_t]
…何かお手伝いすることはありませんか？[p]
[jump  storage=""  target="*choice"  ]

*work9
[cm ]
#シルヴィ
[w_t]
ガーゼの予備が少し減ってきましたね。[p]
[w_st]
今度買い足しに行きましょう。[p]
[jump  storage=""  target="*choice"  ]

*work10
[cm ]
#シルヴィ
[w_st]
私、少しは[name]のお役に立てているでしょうか？[p]
[jump  storage=""  target="*choice"  ]

*work11
[cm ]
#シルヴィ
[w_t]
患者さんがいない日は時間持て余しちゃいますね。[p]
[jump  storage=""  target="*choice"  ]

*work12
[cm ]
#シルヴィ
[w_t]
うーん、お医者さんってやっぱり大変ですね…。[p]
#
（医学書を開いて難しい顔をしている。[lr]
予備知識なしで読んで分かるものではないだろう…。[p]
[jump  storage=""  target="*choice"  ]

*work13
[cm ]
#シルヴィ
[w_t]
患者さんは多くないとはいえ、今までは[name]一人でこなしていたんですよね？[p]
[w_stp]
これからは私がお手伝いしますからね。[p]
[jump  storage=""  target="*choice"  ]

*work14
[cm ]
#シルヴィ
[w_t]
この薬はこっちの棚ににしまっておけばいいでしょうか？[p]
[jump  storage=""  target="*choice"  ]

*work15
[cm ]
#シルヴィ
[w_st]
今は雑用ぐらいしかできませんけど、[r]
いつか助手が務まるぐらいになれるよう頑張ります。[p]
[jump  storage=""  target="*choice"  ]

