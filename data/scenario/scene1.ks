[_tb_system_call storage=system/_scene1.ks]

[cm  ]
[tb_ptext_hide  time="1000"  ]
[bg  storage="room.jpg"  time="1000"  ]
[tb_show_message_window  ]
[chara_mod  name="akane"  time="600"  cross="true"  storage="chara/2/egao.png"  ]
[chara_mod  name="yamato"  time="600"  cross="true"  storage="chara/3/egao.png"  ]
[chara_move  name="yamato"  anim="false"  time="300"  effect="easeInOutQuint"  wait="false"  ]
[chara_move  name="akane"  anim="false"  time="300"  effect="easeInOutQuint"  wait="false"  ]
[chara_show  name="조르주"  time="1000"  wait="true"  storage="chara/1/jyorujyu.png"  width="729"  height="948"  left="648"  top="-58"  reflect="false"  ]
[tb_start_text mode=1 ]
#TEST
예이 실험 [p]
[_tb_end_text]

[tb_start_text mode=1 ]
#Player
안녕 난 [emb exp="f.MyName"]야.[p]
[_tb_end_text]

[s  ]
[tb_eval  exp="undefined"  ]
[tb_eval  exp="undefined"  ]
[glink  color="black"  storage="scene1.ks"  size="20"  x="505"  y="293"  width=""  height=""  text=""  _clickable_img=""  ]
[glink  color="black"  storage="scene1.ks"  size="20"  x="503"  y="332"  width=""  height=""  text=""  _clickable_img=""  ]
[s  ]
