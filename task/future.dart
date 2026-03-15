//  Dart Future

// Future 代表异步操作的最终结果
// 状态:
//    - UnComplated(等待),
//    - Complete with a value (成功),
//    - Completed with a error (失败)
// 创建：
//  - Future((){})
//    - 执行成功，不抛出异常 -> 成功状态 -> then((){})J
//    - 执行失败，throw Exception() -> 失败状态 -> catchError((){})

void main(List<String> args) {
  base();
  chain();
}

void base() {
  Future<String> f = Future(() {
    // 只要返回值则可以正常接受，没异常则认为是成功
    return "hello";
    // 抛出异常，则外部可以捕获异常
    // throw Exception("error");
  });

  // 获取结果
  f.then((value) {
    print("value: $value");
  });

  // 捕获异常错误
  f.catchError((error) {
    print("error: $error");
    throw error;
  });
}


void chain() {
  Future<String> f = Future(() {
    return "first";
  });

  f.then((value) async {
    return await Future(() => "$value - second");
  })
  .then((value) async {
    return await Future(() => "$value - third");
  })
  .then((value) {
    print("result: $value");
    throw Exception("error");
  })
  .catchError((error) {
    print("error: $error");
  });

}
