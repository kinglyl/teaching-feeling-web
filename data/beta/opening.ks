[_tb_system_call storage=system/_opening.ks]

[tb_start_tyrano_code]
*opening
[cm  ]
[show_skip]
[bg  time="100"  method="crossfade"  storage="bg-door.jpg" ]
[tb_show_message_window  ]

[playbgm  loop="true"  storage="Ivory_Fiber.ogg" ]

#
（日が上がってそう間もない早朝[lr]
落ち着いたノックの音が聞こえた。[p]
（今日は誰かを招く予定は入っていない[lr]
予約もなく尋ねてくるような知人もいない[lr]
誰だろう？[p]

[chara_mod  name="man"  time="1"  storage="chara/1/def.png" ]
[chara_show  name="man"  time="100"  wait="true" ]

#怪しい男
[chara_mod  name="man"  time="100"  storage="chara/1/smile.png" ]

どうも先生。[p]

#
（ドアを開けると怪しげな中年の男が家の前に立っていた。[p]
覚えておいでですか？[lr]
昔先生に命を拾ってもらったものですよ。[p]
#
（…男の顔と記憶を照らし合わせる[lr]言われてみれば見覚えのある顔だ[p]

#怪しい男
そうです、昔この町外れで倒れていたところを先生が助けてくださった。[lr]
ロクでもないトラブルが原因なことは側からでも分かったでしょうに、[lr]
お医者様の性分というものだったのでしょうかね。[p]

さておきあの時はろくにお礼もできずに去ってしまって、申し訳ありませんでした。[lr]
偶然近くの町に立ち寄ったものですから、今日はお礼に参ったのです。[p]
#
（どこか胡散臭い男だがわざわざお礼に来たというのだ、とりあえずお茶でも入れようか…[p]
#怪しい男
いえ、そう長く時間を取るつもりはないのでお構いなく。[lr]
とりあえずこれを…。[lr]
あの時は持ち合わせもなく、治療費も払えませんでしたからね。[p]
#
（男は懐から封筒をだしこちらによこす[lr]
中を改めると治療費と言うには少々多い金が入っている。[p]
#怪しい男
支払いが遅れてしまったほんのお詫びです。[lr]
遠慮せず受け取ってください。[p]
あともう一つ、持ってきたものがあるのですが、[r]これからするお話は内密にお願いできますか？[p]
…さすが先生、話がわかる。[lr]
…おい、こっちへ。[p]

[chara_mod  name="body"  time="1"  storage="chara/body-s/stand.png" ]
[chara_show  name="body"  time="100"  wait="true" ]

#
（男がドアの裏へ声をかけるとドアの死角から一人の少女が姿を表す[p]

#怪しい男
最近ある資産家が事故で亡くなりましてね。[lr]
近しい家族がいなかったものですから、役所やら親類や友人を名乗る者やらが寄ってたかって財産をさらっていきました。[p]
私もちょっとしたコネがありまして、そのおこぼれを頂戴したのですが、[lr]
代わりに厄介な物もいくつか押し付けられてしまったんです。[p]
ええ、こいつがその一つです。[p]
今の私はしがない商人でして、[lr]
「なんでも」取り扱うことを売りにしているので、うまく売っぱらえということだったのですが…。[p]
人の身の売買なんて、肉体労働ができる商品ならまだしも、こんなガキは信頼できる買い手はすぐには見つからないんですよ。[lr]
下手に急いでことを進めると私も不利益を被りかねません。[p]
元手がかかっているわけでもないので、[r]
結局下手なことはせず、適当に処分するか捨ててしまおうかとも思ったのですが…。[p]
私にだって良心や哀れみはあるものです。[lr]
面倒や不利益はごめんだが、よい引取先がいないものかと考えたところ、[lr]
ちょうど今進めている商談のあるこの町で、昔先生に助けられたことを思い出したのです。[p]
見たところあの時と変わらず先生はお一人で暮らしているようですし、[lr]
余計なお世話でしょうが少々寂しい生活をされているのではと思いまして…。[lr]
急な話ですがこいつを引き取ってはみませんか？[p]

#
（どうしよう[p]

[button  storage=""  target="*no"  graphic="ch/first1.png"    x="0" y="350" ]
[button  storage=""  target="*ok"  graphic="ch/first2.png"    x="0" y="200" ]
[s  ]

*no
[cm]
[cancelskip]
#怪しい男
[chara_mod  name="man"  time="1"  storage="chara/1/def.png" ]
そうですか。[lr]
まぁとつぜんの話だ、無理もありませんね。[p]
お時間頂きありがとうございました。[lr]では私らは失礼します。[p]

[free]
#
（男と少女は去っていった[p]
[cancelskip]
[jump  storage="action_lead.ks"  target="*game_over" ]

*ok
[cm]
[cancelskip]
#怪しい男
そうですか、私もこいつも助かります。[p]
こいつは身寄りもない奴隷です。[lr]
家の手伝いをさせてもいいし、先生にその趣味があるならおもちゃにしたって咎める人もいないでしょう…。[lr]
こいつについての詳しい話はこいつから直接聞いてください。[p]
では私は失礼します。[lr]
改めてあの日助けていただいたこと、ありがとうございました。[p]

[chara_hide  name="man"  time="100"  wait="true" ]

#
（男は去っていった[p]


[chara_mod  name="body"  time="100"  storage="chara/body-s/stand-t.png" ]

#少女
改めて初めまして、シルヴィと申します。[lr]
引き取っていただいてありがとうございます。[p]
力仕事はできませんが、申しつけてくれれば簡単な雑用ぐらいならできると思います。[p]
[chara_mod  name="body"  time="100"  storage="chara/body-s/stand-c.png" ]
ただ、前のご主人様は悲鳴を聞いて楽しむのが一番価値のある使い方だって言ってました。[p]
[chara_mod  name="body"  time="100"  storage="chara/body-s/stand-t.png" ]
…お手柔らかに、お願いします。[p]

[fadeoutbgm time=500]
[cancelskip]
[black]

*skip
[jump  storage="step1.ks"  target="*step1" ]


[_tb_end_tyrano_code]

