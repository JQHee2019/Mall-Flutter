import 'package:flutter/material.dart';

/**
 * 电商服务中心
 */
/* GridView 使用说明 可参考： https://www.jianshu.com/p/fb3bf633ee12

padding: // 内边距
//水平子Widget之间间距
crossAxisSpacing: 10.0,
//垂直子Widget之间间距
mainAxisSpacing: 30.0,
//GridView内边距
padding: EdgeInsets.all(10.0),
//一行的Widget数量
crossAxisCount: 2,
//子Widget宽高比例
childAspectRatio: 2.0,
//子Widget列表
children: getWidgetList()

children：子视图数组
 */
class ElectricityServicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // 返回
              Navigator.pop(context);
            },
          ),
          title: Text("CollectionView"),
        ),
        body: Center(
          child: GridView.count(
            padding: EdgeInsets.all(10),    // 内边距
            scrollDirection: Axis.vertical, // 滚动方向
            crossAxisSpacing: 10,           // 列间距
            crossAxisCount: 3,              // 每行的个数
            mainAxisSpacing: 10,            // 行间距
            children: <Widget>[
              new Container(
                color: Colors.lightBlue,
              ),
              new Container(
                color: Colors.lightGreen,
              ),
              new Container(
                color: Colors.red,
              ),
              new Container(
                color: Colors.orange,
              ),
              new Image.network(
                "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1554110093883&di=9db9b92f1e6ee0396b574a093cc987d6&imgtype=0&src=http://n.sinaimg.cn/sinacn20/151/w2048h1303/20180429/37c0-fzvpatr1915813.jpg",
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      );
  }

}

