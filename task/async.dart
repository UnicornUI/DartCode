

// 构建 Future
void main(List<String> args) async { 
  print(await getImg());
}


// async 函数中可以使用 await
// 完成异步代码的同步写法
Future<String> getImg() async {
  try  {
    return await Future(() {
      return "hello";
    });
  }catch(e) {
    print("error: $e");
    return "";
  }
}
