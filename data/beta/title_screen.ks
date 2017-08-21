[_tb_system_call storage=system/_title_screen.ks]

[tb_start_tyrano_code]
[call  storage="macro.ks" ]
[call  storage="face.ks" ]
[title name="TeachingFeeling_ver1.30beta" ]
[movie storage="logo.webm" skip=true ]

*title
[cm  ]
[tb_hide_message_window  ]
[playbgm  loop="true"  storage="Silver_Glass.ogg" ]
[bg  time="500"  method="crossfade"  storage="title-menu.jpg" ]
@clearfix name="role_button"

*show
[button  storage=""  target="*start"  graphic="title-start.png"  x="321"  y="615"  ]
[button  storage=""  target="*load"  graphic="title-continue.png"  x="321"  y="680"  ]
[button  storage=""  target="*close"  graphic="title-finish.png" x="321"  y="750" ]
[s  ]

*start
[cm  ]
[stopbgm  ]
[jump  storage="Opening.ks"  target="*opening" ]

*load
[cm  ]
[showload]
[jump  storage=""  target="*show" ]

*close
[close ask="false"]

[_tb_end_tyrano_code]

