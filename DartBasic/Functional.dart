/*
 Dart 中的函数式编程
 ----------------------------------------------
 1. 将函数作为参数传递
 2. 将函数作为返回值返回
 3. 将函数直接赋值给变量
 4. 对函数进行解构，只传递一部分参数来调用它，让它返回一个函数去处理剩下的参数（也被称为柯里化）
 5. 创建一个可以当作常量的匿名函数（也被称为 lambda 表达式）
*/

// 定义函数
String stream(int length) => "A${'a' * length}H!";

void main() {
  final values = [1, 3, 5, 8, 50];
  /*
  // 函数的方式，数据作为参数循环执行对应的函数
  -----------------------------------------------
  for (var i in values) {
    print(stream(i));
  }
  */

  // 使用函数式的方式调用
  values.map(stream).forEach(print);

  // 常用的函数主要有：
  /*
  ---------------------------------
  dart:collection 库中的List 与 Iterable 支持  fold where join skip 等函数行为
  Map 与 Set 类型也支持对应的代码
  */

  // skip() : 跳过迭代中指定个数的值
  // take() : 从当前位置连续取出指定个数的值.其余被丢弃
  values.skip(1).take(2).map(stream).forEach(print);
}
