;このファイルは削除しないでください！
;
;make.ks はデータをロードした時に呼ばれる特別なKSファイルです。
;Fixレイヤーの初期化など、ロード時点で再構築したい処理をこちらに記述してください。
;
;
;
;return 必須

[call  storage="macro.ks"  target="*"  ]
[call  storage="face.ks"  target="*"  ]
[call storage="system/chara_define.ks"]
[call  storage="new_c.ks"  target="*new_c" ]


@clearfix name="role_button"
[button name="role_button" role="save" graphic="b-save.png" x=937 y=850]
[button name="role_button" role="load" graphic="b-load.png" x=1005 y=850]
[button name="role_button" role="backlog" graphic="b-log.png" x=1073 y=850]
[button name="role_button" role="window" graphic="b-win.png" x=1131 y=850]
[button name="role_button" role="title" graphic="b-title.png" x=1247 y=850]
[return]