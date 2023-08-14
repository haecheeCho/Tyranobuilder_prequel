[_tb_system_call storage=system/_Prologue.ks]

[cm  ]
[tb_ptext_hide  time="1000"  ]
[bg  time="1000"  method="crossfade"  storage="bg_base.png"  ]
*Protagonist

[chara_hide_all  time="20"  wait="false"  ]
[cm  ]
[tb_show_message_window  ]
[tb_start_text mode=4 ]
당신이 원하는 외형을 선택해 주세요
[_tb_end_text]

[chara_show  name="akane"  time="200"  wait="true"  storage="chara/2/normal.png"  width="400"  height="1300"  left="98"  top="44"  reflect="false"  ]
[chara_show  name="yamato"  time="200"  wait="true"  storage="chara/3/normal.png"  width="750"  height="1500"  left="620"  top="-19"  reflect="false"  ]
[glink  color="black"  storage="Prologue.ks"  size="20"  target="*Girl"  x="190"  y="358"  width=""  height=""  text="이&nbsp;아이로&nbsp;할게요"  _clickable_img=""  ]
[glink  color="black"  storage="Prologue.ks"  size="20"  target="*Boy"  x="852"  y="363"  width=""  height=""  text="이&nbsp;아이로&nbsp;할게요"  _clickable_img=""  ]
[s  ]
*Girl

[tb_eval  exp="f.MyFace=1"  name="MyFace"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_hide_message_window  ]
[chara_hide  name="yamato"  time="200"  wait="false"  pos_mode="true"  ]
[glink  color="black"  storage="Prologue.ks"  size="20"  text="이&nbsp;외형으로&nbsp;할게요"  target="*FaceSelected"  x="474"  y="418"  width=""  height=""  _clickable_img=""  ]
[glink  color="black"  storage="Prologue.ks"  size="20"  text="다시&nbsp;생각할게요"  target="*Protagonist"  x="482"  y="476"  width=""  height=""  _clickable_img=""  ]
[s  ]
*Boy

[tb_eval  exp="f.MyFace=2"  name="MyFace"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[tb_hide_message_window  ]
[chara_hide  name="akane"  time="200"  wait="false"  pos_mode="true"  ]
[glink  color="black"  storage="Prologue.ks"  size="20"  text="이&nbsp;외형으로&nbsp;할게요"  target="*FaceSelected"  x="474"  y="418"  width=""  height=""  _clickable_img=""  ]
[glink  color="black"  storage="Prologue.ks"  size="20"  text="다시&nbsp;생각할게요"  target="*Protagonist"  x="482"  y="476"  width=""  height=""  _clickable_img=""  ]
[s  ]
*FaceSelected

[cm  ]
*Input_Start

[tb_show_message_window  ]
[tb_start_text mode=3 ]
당신의 이름을 정해주세요[r]
[_tb_end_text]

[edit  left="411"  top="292"  width="375"  height="61"  size="20"  maxchars="200"  reflect="false"  name="f.MyName"  ]
[button  storage="Prologue.ks"  target="*Name_Submit"  name="img_23"  graphic="Button_00.png"  width="155"  height="59"  x="822"  y="300"  _clickable_img=""  ]
[s  ]
*Name_Submit

[commit  ]
[cm  ]
[jump  storage="Prologue.ks"  target="*Name_Input_OK"  cond="f.MyName!=''"  ]
[tb_start_text mode=1 ]
이름은 공백으로 할 수 없습니다![p]
[_tb_end_text]

[jump  storage="Prologue.ks"  target="*Input_Start"  ]
*Name_Input_OK

[tb_start_tyrano_code]
당신의 이름은 [emb exp="f.MyName"] 이군요 [p]
[_tb_end_tyrano_code]

[glink  color="black"  storage="Prologue.ks"  size="20"  text="네&nbsp;맞아요!"  x="519"  y="292"  width=""  height=""  _clickable_img=""  target="*Name_Input_Finish"  ]
[glink  color="black"  storage="Prologue.ks"  size="20"  text="다시&nbsp;지을래요"  x="500"  y="350"  width=""  height=""  _clickable_img=""  target="*Input_Start"  ]
[s  ]
[tb_start_tyrano_code]
[chara_new name="Player" storage="chara/" + f.MyFace + "/normal.png" jname=f.MyName]
[_tb_end_tyrano_code]

*Name_Input_Finish

[jump  storage="scene1.ks"  target=""  ]
