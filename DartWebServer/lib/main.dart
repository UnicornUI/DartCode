import 'package:serral/serral.dart';

void main() {
  final app = Serral();
  // 允许跨域
  app.before(app.addCorsHeaders);
  // 添加前置的中间件
  app.before((SerralCtx ctx) {
    print(ctx.request.uri.toString());
    ctx.context['dog'] = 100;
  });

  // 添加后置中间件
  app.after((SerralCtx ctx) {
    print('end');
  });

  // 捕获某个请求路径
  app.GET('/', getHome);
  app.POST("/dog", postDog);

  app.serve(port: 5100);
}

// 实现 GET 路由请求
void getHome(SerralCtx ctx) {
  // q读取 ctx.context，检查我们添加的前置中间件是否生效
  print(ctx.context['dog']);
  // 查看路径参数
  print(ctx.params);
  // 响应请求
  ctx.send(200, "hello: ${ctx.context['dog']}");
}

// 实现 POST 路由请求
void postDog(SerralCtx ctx) async {
  // 查看Post请求的请求 body
  print(ctx.body);
  // 模拟异步，检查后置中间件是否生效
  await Future.delayed(Duration(milliseconds: 300));

  ctx.send(200, 'order');
}
