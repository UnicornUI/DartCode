
void main() {
  // 定义可为空的类型
  String? name = null;
  print(name);

  // name = "unicorn";

  // ?. 使用可为空的类型保护，为空后不执行
  print(name?.length);

  // !. 使用可为空的类型保护(编程者自己保证不为null)，为空后抛出异常
  name  = "unicorn";
  print(name!.length);

  // ?? 使用可为空的类型保护，为空后返回后面的值
  name = null;
  print(name ?? "ancion");
}
