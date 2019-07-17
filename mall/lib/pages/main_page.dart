import 'dart:ui' as prefix0;

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mall/pages/message_page.dart';
import 'package:mall/pages/function_page.dart';
import 'package:mall/pages/server_page.dart';
import 'package:mall/pages/mine_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provide/provide.dart';

/**
 * tabbar 底部导航
 */
class MainPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MainPagePage();
  }

}

class _MainPagePage extends State<MainPage> {

  /**
   * 自定义设置icon大小
   */
  Widget _renderIcon(name) {
    return Container(
        height: 25,
        width: 25,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(name)
            ],
          ),
        ),
      );
  }

  List<BottomNavigationBarItem> bottomTabs = [];

  final List<Widget> tabBodies = [
    MessagePage(),
    FunctionPage(),
    ServerPage(),
    MinePage()
  ];

  int currentIndex = 1; // 当前索引
  // var currentPage;

  @override
  void initState() {

    bottomTabs = [
    BottomNavigationBarItem(
      icon: _renderIcon("images/tabbar/tabbar_message_n.png"),
      activeIcon: _renderIcon("images/tabbar/tabbar_message_h_b.png"),
      title: Text('消息')
    ),
     BottomNavigationBarItem(
      icon: _renderIcon("images/tabbar/tabbar_function_n.png"),
      activeIcon: _renderIcon("images/tabbar/tabbar_function_h_b.png"),
      title: Text('功能')
    ),
     BottomNavigationBarItem(
      icon: _renderIcon("images/tabbar/tabbar_customerservice_n.png"),
      activeIcon: _renderIcon("images/tabbar/tabbar_customerservice_h_b.png"),
      title: Text('客服')
    ),
     BottomNavigationBarItem(
      icon: _renderIcon("images/tabbar/tabbar_mine_n.png"),
      activeIcon: _renderIcon("images/tabbar/tabbar_mine_h_b.png"),
      title: Text('我的')
    ),
  ];
    // 默认
    // currentPage = tabBodies[currentIndex];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

        // 适配
    ScreenUtil.instance = ScreenUtil(width: 750,height: 1334)..init(context);
    // TODO: implement build
        return Scaffold(
          backgroundColor: Color.fromRGBO(244, 255, 255, 1),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            items: bottomTabs,
            onTap: (index){
              // Provide.value<CurrentIndexProvide>(context).changeIndex(index);
              setState(() {
                currentIndex = index;
                // currentPage = tabBodies[currentIndex];
              });
            },
          ),
          body: IndexedStack(
            index: currentIndex,
            children: tabBodies,
          )
        );
  }

}