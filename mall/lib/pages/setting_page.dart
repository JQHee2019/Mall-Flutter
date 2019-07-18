import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * 设置页面
 */
class SettingPage extends StatelessWidget {

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
        title: Text('设置'),),
        body: Container(
          padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
          child: MaterialButton(
            onPressed: () {
              showMyCupertinoDialog(context);
            },
            minWidth: double.infinity,
            height: 50.0,
            color: Colors.blue,
            shape: RoundedRectangleBorder(side: BorderSide.none, borderRadius: BorderRadius.all(Radius.circular(50))),
            child: Text('注销', style: TextStyle(color: Colors.white),),
          ),
        ),
    );
  }

    /**
   * iOS 样式的弹窗
   */
  void showMyCupertinoDialog(BuildContext context) {
    showCupertinoDialog(
        context: context,
        builder: (context) {
          return new CupertinoAlertDialog(
            title: new Text("温馨提示"),
            content: new Text("是否要退出登录？"),
            actions: <Widget>[
              new FlatButton(
                onPressed: () {
                  Navigator.of(context).pop("点击了确定");
                },
                child: new Text("确认"),
              ),
              new FlatButton(
                onPressed: () {
                  Navigator.of(context).pop("点击了取消");
                },
                child: new Text("取消"),
              ),
            ],
          );
        });
  }

}