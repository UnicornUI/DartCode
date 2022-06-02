
[TOC]

###  Dart介绍

1. Dart 是谷歌推出的编程语言，它可以被用于web, 服务器, 移动应用和物联网等领域的开发诞生于2011,号称要取代Javascript，
但是一直不受关注,但是自从框架Flutter出现,才开始被人们重视, 所以, 要会Flutter 首先需要学习一下Dart语言的编程规范。

- [官网](https://dart.dev/)

### Dart环境搭建:
    
* 首先需要搭建Dart SDK 才能开发Dart 的应用程序
* [官方文档](https://dart.dev/get-dart) 

### Dart 语法规则

* 程序入口：

```dart
main(){
    print("hello world");
}

// 第二种形式的入口方法
void main(){
    print("hello world");
}

```
* 注释

```dart
// 类似的javascript
/// 也是可以注释的
```
* 变量

    - var 关键字可以用来声明变量，自动进行类型推断,推断出来的类型会复制给变量，是不能
      改变的

    - 也可以使用预设的类型来定义变量，赋值的时候必须要类型一致

    - 变量名称（标识符的命名规则）：
        + 数字，字母，下划线和 $, 但是不能用数字开头
        + 区分大小写,
        + 不能是保留字，关键字
        + 见名知义
    - const final 关键字 (定义常量)
        + const ---- 定义即赋值，不能修改 
        + final ---- 先声明，然后可以赋值一次
        + const 是编译时常量，final不仅是编译时常量，更是运行时常量，fianl
          是惰性加载的，在第一次运行时,才会初始化这个变量，所以如果需要将函数
          结果赋值给常量的时候，需要使用final
        
      ```dart
          final date = new DateTime.now();

      ```

###  数据类型


1. int
   + 整形
2. double
   + 浮点型
3. String
   + ''
   + ""
   + """  """ 长文本类型 可以使用（$变量名）在字符串中直接使用后会自动填充值
   + '''  '''
4. bool
   + true
   + false
5. list
   + ['aa','bb','cc','dd']---length
   + new List<String>()
6. map
   + {"key":value,"name";"alex","hobbys":["vollyball","basketball"]}
   + new Map();

7. Symbols

8. Runes 

*. is关键字可以判断数据的类型

## 
