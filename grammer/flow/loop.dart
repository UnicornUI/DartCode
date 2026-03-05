
import 'dart:io';

void main(List<String> args) {

  var x = 10;

  // while 
  while(x > 0) {
    stdout.write("$x ");
    x--;
  }
  print("");

  // for 
  for (var i = 0; i < 10; i++) {
     x++; 
     stdout.write("$x ");
  }
  print("");

  // do while, 至少执行一次
  do {
    x++;
    if (x == 5) break;
    stdout.write("$x ");
  } while(x < 10);
  print("");

  // for in
  for (var i in [1,2,3,4,5,6,7,8,9,10]) {
    // 当次循环跳过
    if (i == 5) continue;
    stdout.write("$i ");
  }
  
}
