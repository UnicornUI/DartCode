
void main(List<String> args){

  var list  = [1, 2, 3];

  // 基本属性
  print("list length: ${list.length}, isEmpty: ${list.isEmpty}, isNotEmpty: ${list.isNotEmpty}, first: ${list.first}, last: ${list.last}", );

  print("${list}");

  // 基本操作(添加另一个数组中的元素)
  list.addAll([4, 6]);
  print("${list}");

  // 移除元素
  list.remove(4);
  print("${list}");

  list.removeRange(1,  2);
  print("${list}");

  var sub = list.sublist(1,3);
  print("${sub}");


  // 数组的函数式操作
  var newList = list.map((e) => e * 2).toList();
  print("${newList}");

  // 数组的遍历
  for (var i = 0; i < list.length; i++) {
    print(list[i]);
  }

  // 数组的遍历
  list.forEach((element) {
    print(element);
  });
  
  // 数组的判断
  print(list.contains(2));
  print(list.every((e) => e > 10));

  // 数组的过滤
  var filterList = list.where((e) => e > 2).toList();
  print("${filterList}");

  // 数组的排序
  list.sort((a, b) => b - a);
  print("${list}");

  // 数组的拼接
  var joinList = list.join(" + ");
  print("${joinList}");

}
