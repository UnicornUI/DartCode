
// if
// switch
// 三元运算法

import 'dart:math';

void main(List<String> args) {

  var score = 60;

  if (score > 60) {
    print("超过及格线");
  }else if (score == 60) {
    print("刚刚及格");
  }else {
    print("不及格");
  }

  // 三元运算
  score >= 60 ? print("及格") : print("不及格");

  switchMode();
}

// 
void switchMode() {

  var alphabeat = [
    "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"
  ];
  var char = Random().nextInt(26);

  // 3.x 之后的版本，case 中不为空的时候可以不需要 break;
  //   仅在空 case 并且需要提前退出 switch 代码块时需要
  switch(char) {
    case 0:
      print(alphabeat[char]);
    case 1:
      print(alphabeat[char]);
    case 2:
      print(alphabeat[char]);
    case 3:
      print(alphabeat[char]);
    default:
      print(alphabeat[char]);
  }
}
