import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 主入口页面
import 'package:mall/pages/main_page.dart';

// provide
import 'package:provide/provide.dart';

void main() {

  // 修改系统状态栏颜色
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.blue, // navigation bar color
    statusBarColor: Colors.blue, // status bar color
  ));
  // var counter = Counter();


  var providers = Providers();
 
 /*
  providers
    ..provide(Provider<Counter>.value(counter));
  */

  runApp(
    ProviderNode(
      child:MyApp(),
      providers:providers
    )
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: '商城',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MainPage()
    );
  }
}