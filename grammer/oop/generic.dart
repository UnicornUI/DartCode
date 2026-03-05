// Dart 中泛型

// Dart 可以使用类型参数，限定类型的同时又让类型更加灵活，让代码更加健壮和维护性更好
// 泛型的应用场景 
// 泛型集合
// 泛型方法
// 泛型类




// 方法的泛型写在函数名后面声明后可用
T getValue<T>(T value) {
  return value;
}

class Point<T> {
  T? x;
  T? y;

  Point({this.x, this.y});

}
