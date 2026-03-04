
// 数字类型有三个值 

// 1. int     (整数类型)
// 2. doublea (小数类型)
// 3. num     (可以是 int 也可以是 double)
// ------------------------------
//   - int 和 double 类型的值都可以直接赋值给 num 类型 
//     但是 num 类型的值不能直接赋值给 int 和 double 类型

void main(List<String> args) {

  int a = 1;
  double b = 1.1;
  num c = 1;
  c = a;
  print("c is a: ${c}");
  c = b;
  print("c is b: ${c}");

  // 他们之间可以通过内置方法进行转换
  a = b.toInt();
  print("a is b: ${a}");
  b = c.toDouble();
  print("b is c: ${b}"); 
}

