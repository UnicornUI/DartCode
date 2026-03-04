
// 使用 `{}` 表示 map

void main(List<String> args) { 

  var map = {'name': 'ancion', 'age': 18};
  print(map);

  var map2 = Map();
  map2['name'] = 'ancion';
  map2['age'] = 18;
  print(map2);

  // 基本属性
  print("map length: ${map.length}, isEmpty: ${map.isEmpty}, isNotEmpty: ${map.isNotEmpty}");
  print("keys: ${map.keys}, values: ${map.values}");

  // 基本操作
  map['name'] = 'unicorn';
  print(map);
  map.remove('name');
  print(map);

  // 迭代
  for (var key in map.keys) {
    print(key);
  }

  // 遍历
  map.forEach((key, value) {
    print("$key: $value");
  });

  // 判断
  print(map.containsKey('name'));


  // map 的函数式操作


  map.clear();
  print(map);

}
