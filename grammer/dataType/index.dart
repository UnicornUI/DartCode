
// dart 中的数据类型

// dart 是静态类型语言, 需要在定义类型时指定类型, 且类型不可变
// var 表示变量， 可以重新赋值(此时类型自动推断)
// const 表示编译时常量(可以是表达式，但是表达式中使用的也必须是常量)， 无法重新赋值
// final 表示运行时常量， 无法重新赋值

void main() {
  // 声明变量
  var name = 'unicorn';
  String address = "beijing";
  print(name);
  print(address);

}


