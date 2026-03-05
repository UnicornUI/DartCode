
// Dart 的继承

// - 继承是拥有父类的属性和方法
// - dart 属于是单继承，一个类只能有一个父类，子类拥有父类的所有属性和方法
// - 使用 extends 表示继承
// - 子类可以覆写(@override)父类的方法，但是不可以覆写父类的属性
// - 子类不会继承父类的构造方法，可以使用 super 关键字来调用父类的构造方法
// - super 语法: 子类的构造函数(可选命名参数): super({参数})


class Parent {
  String? name;

  // 私有属性也是可以继承的
  String? _poll;

  Parent({ String? name, String? poll}){
    this.name = name;
    this._poll = poll;
  }

  void mcck() {
    print("$name is $_poll");
  }

}

class Child extends Parent {

  // 调用父类的构造函数
  Child(String name, String poll) : super(name: name, poll: poll);

  @override
    void mcck() {
      print("$name is $_poll");
      super.mcck();
    }
}


void main(List<String> args) {
  var ren = Child("mock", "milk");
  ren.mcck();
}
