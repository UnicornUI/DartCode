
// mixin 关键字 
// Dart 在不使用传统的继承方式扩展类的方法,

// - 使用 mixin 关键字定义一个对象
// - 使用 with 关键字来将定义的对象混入到当前对象
// - 一个类支持 with 多个 mixin, 调用多个类型中内容重复时, 优先级采用后来居上的方式
// - 


// 
// 可更加灵活的混入不同的类中  
// 
mixin Base {
  void song(String name) {
    print("$name is song");
  }
}

class Student with Base {
  String? name;
  int? age;
  Student({this.name, this.age});
}

class Teacher with Base {
  String? name;
  int? age;
  Teacher({this.name, this.age});
}

void main(List<String> agrs) {

  var s = Student(name: "Alex");
  var t = Teacher(name: "Tom");
  s.song(s.name!);
  t.song(t.name!);
}
