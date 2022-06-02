import "dart:math";


class Rectangle {
  int width;
  int height;
  Point origin;
  

  /**
   * Dart 中不支持构造函数的重载,通过可选类型参数来是实现对应的功能
   * 在没有方法体的方法中,使用语法糖来是实现成员变量的初始化
   * 使用 `{}` 包裹成员变量的初始化, 表示这些参数都是可选的
   * 下面的代码表示给实例变量赋予默认值(默认值是必须在编译期就可以确定的常量)
   */
  Rectangle({this.origin = const Point(0, 0), this.width = 0, this.height = 0});


  String toString() => 'Origin: (${origin.x}, ${origin.y}), width: $width, height: $height';



}


void main(){

  print(Rectangle(origin: const Point(10, 20), width: 100, height: 200));
  print(Rectangle(origin: const Point(10, 20)));
  print(Rectangle(width: 100, height: 200));
  print(Rectangle());

}
