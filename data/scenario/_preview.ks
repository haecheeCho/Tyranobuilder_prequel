[_tb_system_call storage=system/_preview.ks ]

[mask time=10]
[mask_off time=10]
[hidemenubutton]

[tb_clear_images]

[tb_keyconfig  flag="0"  ]
[tb_hide_message_window  ]
[bg  storage="title.jpg"  ]
*title

[tb_ptext_show  x="498"  y="132"  size="47"  color="0xffb5db"  time="1000"  text="샘플"  anim="false"  face="Maplestory Bold"  edge="0x196aff"  shadow="undefined"  ]
[glink  color="black"  text="처음부터"  x="75"  y="370"  size="20"  target="*start"  ]
[glink  color="black"  text="이어하기"  x="75"  y="470"  size="20"  target="*load"  storage="undefined"  ]
[s  ]
*start

[showmenubutton]

[cm  ]
[tb_keyconfig  flag="1"  ]
[jump  storage="Prologue.ks"  target=""  ]
[s  ]
*load

[cm  ]
[showload]

[jump  target="*title"  storage=""  ]
[s  ]
