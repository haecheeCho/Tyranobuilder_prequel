[_tb_system_call storage=system/_BuildShip.ks]

[bg  time="1000"  method="crossfade"  storage="spaceship_interior01.png"  ]
*Start

[tb_ptext_hide  time="500"  ]
[tb_start_tyrano_code]


[if exp="f.Energy > 0"]

;[locate x=500 y=200]
;[button graphic="Button_00.png" target=*upgrade]

@jump target=*Upgrades

[else]
@jump target=*common


[endif]

[return]
[_tb_end_tyrano_code]

*Upgrades

[tb_ptext_show  x="200"  y="300"  size="30"  color="0xffffff"  time="1"  text="업그레이드&nbsp;가능"  ]
[glink  color="btn_28_blue"  storage="BuildShip.ks"  size="20"  x="936"  y="320"  width=""  height=""  text="Upgrade!"  _clickable_img=""  target="*upgradeFIN"  ]
[s  ]
*upgradeFIN

[tb_ptext_hide  time="100"  ]
[tb_ptext_show  x="532"  y="281"  size="30"  color="0x35e0fa"  time="501"  text="업그레이드&nbsp;완료!"  anim="false"  face="Maplestory Bold"  edge="undefined"  shadow="undefined"  ]
[jump  storage="BuildShip.ks"  target="*Start"  cond=""  ]
*common

