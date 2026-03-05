
void main(List<String> args) {
  print(add(10, 20));
  print(combine("a", "b" ));

  // 指定传递的参数的名称
  print(combine2("a", c: "c"));

  // 调用匿名函数
  anonymous();

  // 
  printFunc(anonymous);

}


// 返回值 函数名(参数列表) {  函数体 }
// 可推断类型的时候，返回值可以省略(建议书写)
int add (int a, int b) {

  return a + b;
}

// 可选位置参数，
//   - 位于必传参数后面
//   - 使用 [] 包裹
//   - 可以设置默认值
// 适用参数少
String combine(String a, [String? b, String? c = "c"]) {
  return a + (b ?? "") + (c ?? "");
}

// 可选命名参数
//   - 位于必传参数后面
//   - 使用 {} 包裹
//   - 可以设置默认值
// 适用参数多(可以不关注顺序，按照名称传递)
String combine2(String a, {String? b, String? c = "c"}) {
  return a + (b ?? "") + (c ?? "");
}


// 匿名函数
//  Function name = () {}
Function anonymous = () {
  print("annoynmous");
};

// 将匿名函数作为参数
void printFunc(Function callback) {
  print("call....start....");
  callback();
  print("call....over.....");
}

// 箭头函数, 
//   - 函数体只有一行表达式, 
//   - 可以省略大括号和 return 关键字
int add2(int a, int b) => a + b;




