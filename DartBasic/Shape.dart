import "dart:math";

// 工厂模式的第一种解决方案
// 在最顶层的作用域(在所有类的作用域之外)中定义一个顶层的方法，
// 当需要创建这些类的实例的时候,使用这个方法来获取对象

Shape shapeFactory(String type) {
  if (type == 'circle') return Circle(2);
  if (type == 'square') return Square(2);
  throw "Can't create $type";
}

abstract class Shape {
  // 使用 Dart 关键字 factory 定义一个工厂模式构造方法
  factory Shape(String type) {
    if (type == 'circle') return Circle(2);
    if (type == 'square') return Square(2);

    // Dart 中定义了常见的异常类型，如果没有找到对应的异常类型,
    // 也可以自定义异常类型
    // 也可以直接 throw 字符串的形式来描述发生的问题
    throw 'Can\'t create $type.';
  }
  num get area;
}

class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  num get area => pi * pow(radius, 2);
}

class Square implements Shape {
  final num side;
  Square(this.side);
  num get area => pow(side, 2);
}

// --------------------------------------------------------------------
// Dart 中没有提供 interface 关键字，但是默认每个类都隐式的定义了一个接口
// 即所有的类都可以被实现,
// 实现类时候，不需要覆写对应的方法
// 但是需要定义相应的实例变量
class CircleMock implements Circle {
  num area;
  num radius;
}

void main() {
  /*
  // 原始使用类的方式来创建对象
  final circle = Circle(2);
  final square = Square(2);
  */

  /*
  // 使用顶层工厂的方式来创建对象
  final circle = shapeFactory('circle');
  final square = shapeFactory('square');
  */

  // 使用 factory 关键字定义一个工厂模式构造方法,使用 抽象类的工厂构造方法
  final circle = Shape('circle');
  final square = Shape('square');

  print(circle.area);
  print(square.area);
}
