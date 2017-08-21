[_tb_system_call storage=system/_event5.ks]

[tb_start_tyrano_code]

*to_next
[cancelskip]
[show_skip]
[black]
[set_stand]
[bg  time="1"  method="crossfade"  storage="bg-room.jpg" ]
[playbgm  loop="true"  storage="Ivory_Fiber.ogg" ]
[f_t]
…[p]
[show_stand]

#シルヴィ
あの、[name]…？[p]
#
（寝支度を整え、ベッドに腰掛けると部屋にシルヴィがやってきた。[p]
最近ではほぼ毎日のように同じベッドでシルヴィと眠っている。[p]
[f_cl]
（すぐ隣に腰掛けこちらを見上げるシルヴィ。[lr]
いつもとはどこか様子が違う。[p]
#シルヴィ
[f_ctp]
なんども申し上げていますけど。私、[name]にすごく感謝してます。[lr]
[f_ccltp]
食べ物に、お洋服に、たくさん頂いてしまってます。[lr]
だから少しでもお返しをしたいって思ってるんです。[p]
[f_ctp]
それでいろいろ考えたんですけど、[lr]
私簡単なお手伝いぐらいしかできないし。[p]
それで、その…。[lr]
…あの、[name]。[lr]
[name]は、恋人とかはいないんですよね。[p]
もし、夜のお相手が…欲しいのであれば。[lr]
わ、私と…、[l]私を…だ、抱いてくださいませんか？[p]
私、経験はないですけど、[lr]
こういうことも…奴隷として[name]にできることです…よね？[p]
[f_ccltp]
私、[name]にだったら…。[lr]
いや、私も…[name]と、[lr]
形だけでも…む、結ばれたい…なんて[p]
ううん、それは…おこがましいですね。[lr]
[f_ctp]
ただ、[name]の為に何かできないかという話です。[p]
[f_ccltp]
私、発育も悪いし、醜い傷もあります…。[lr]
魅力なんてないとは思います。[p]
それでも…もし、[name]が求めてくれるなら…私…[p]

[button  storage=""  target="*kiss"  graphic="ch/kiss.png"    x="0"  y="200" ]
[button  storage=""  target="*sleep"  graphic="ch/sleep.png"   x="0"  y="350" ]
[s]

*sleep
[cm ]
[cancelskip]
[f_cclt]
…はい、そうですよね。[lr]私なんかが…。[p]
[f_ct]
でも、もし気が変わったら、おっしゃってください。[p]
[f_clt]
では、おやすみなさいませ…。[p]
[eval exp="f.sex='yet'" ]
[fadeoutbgm time=500]
[black]
[cancelskip]
[jump  storage="step6.ks"  target="*a" ]

*kiss
[cm ]
[cancelskip]
[f_clp]
ん…。[p]
[f_tp]
#
（少しこわばった様子を見せながらもシルヴィは体を預けてきた。[p]

#シルヴィ
[name]…。[p]
#
（キスを繰り返し、ゆっくりシルヴィの服を脱がせる。[p]
[chara_mod  name="e-clothes"  time="1"  storage="chara/clothes/00.png" ]
[chara_mod  name="e-body"  time="1"  storage="chara/body/s-body-a.png" ]
[chara_mod  name="e-ribbon"  time="1"  storage="chara/ribbon/00.png" ]

#シルヴィ
あ…。[p]
（頬に当てた手をなぞるように下ろしていき、そっと下腹部に触れる。[p]
[f_clp]
#シルヴィ
ん…。[p]
#
（優しく愛撫を始めると秘部はゆっくりと湿り気を帯びてくる。[p]
[f_tp]
#シルヴィ
[name]に…[lr]抱いて、頂けるんですね…。[p]
#
（力の抜け始めたシルヴィをベッドに横たえた。[p]

[fadeoutbgm time=500]
[black]
[cancelskip]
[jump  storage="H_first.ks"  target="*H_first" ]

[_tb_end_tyrano_code]