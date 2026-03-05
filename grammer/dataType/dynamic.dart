
// 动态类型, 类似 ts 或者 go 中的 Any 


void main(List<String> args) {

  // x 是动态类型
  // 相当于去掉了类型检查
  dynamic x = 'hello';
  x = 1;
  x = false;

}
