import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mall/widgets/dialog/loading_dialog.dart';
import 'package:mall/routers/router_util.dart';

/**
 * 消息中心
 */
class MinePage extends StatelessWidget {

  static const double IMAGE_ICON_WIDTH = 30.0;
  static const double ARROW_ICON_WIDTH = 16.0;

  var headerImg = "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1563344166709&di=ebe7859f4a474f15a7f9d48f2837660a&imgtype=0&src=http%3A%2F%2Fy3.ifengimg.com%2Fa%2F2016_03%2F6154e935f8a0fc6.jpg";
  var titleTextStyle = new TextStyle(fontSize: 16.0);
  var rightArrowIcon = new Image.asset(
    'images/ic_arrow_right.png',
    width: ARROW_ICON_WIDTH,
    height: ARROW_ICON_WIDTH,
  );

  /**
   * 个人中心头部
   */
  Widget _renderHeader(context) {
    return GestureDetector(
      onTap: () {
        debugPrint('个人资料');
        // 跳转到个人资料页面
        RouterUtil.routeToUserInfoPage(context);
      },
      child: Container(
        height: ScreenUtil().setHeight(300),
        color: Colors.green,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,          
            children: <Widget>[
            new Container(
                width: 60.0,
                height: 60.0,
                decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                    image: new DecorationImage(
                        image: new NetworkImage(headerImg),
                        fit: BoxFit.cover
                    ),
                    border: new Border.all(color: Colors.white, width: 2.0)
                ),
            ),
            new Container(
              margin: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
              child: new Text(
                '点击头像登录',
                style: new TextStyle(color: Colors.white, fontSize: 16.0)
              ),
            ),
          ]),
        ),
      ),
    );
  }

  /**
   * 个人中心cell
   */
  Widget _renderRow(context, title) {
    return InkWell(
      onTap: () {
        // 获取本地缓存大小和清除缓存：https://www.jianshu.com/p/04dc696e7b33
        // showLoadingDialog(context),
        showMyCupertinoDialog(context);
        debugPrint(title);
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        child: Row(
          children: <Widget>[
            new Expanded(
                  child: new Text(
                      title,
                      style: titleTextStyle,
              )
            ),
            rightArrowIcon,
          ],
        ),
      ),
    );
  }

  /**
   * 水平分割线
   */
  Widget _renderLine(context, color, height) {
    // Color(0xFFF3F3F3)
    return Container(width: double.infinity, height: height, color: color);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("个人中心"),),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
                _renderHeader(context),
                _renderRow(context, "我的物流"),
                _renderLine(context, Color(0xFFF3F3F3), 1.0),
                _renderRow(context, "我的课程"),
                _renderLine(context, Color(0xFFF3F3F3), 1.0),
                _renderRow(context, "我的账户"),
                _renderLine(context, Color(0xFFF3F3F3), 1.0),
                _renderRow(context, "我的加盟"),
                _renderLine(context, Color(0xFFF3F3F3), 10.0),
                _renderRow(context, "商城中心"),
                _renderLine(context, Color(0xFFF3F3F3), 1.0),
                _renderRow(context, "分销商中心"),
                _renderLine(context, Color(0xFFF3F3F3), 1.0),
                _renderRow(context, "清除缓存"),
                _renderLine(context, Color(0xFFF3F3F3), 1.0),
                _renderRow(context, "使用帮助"),
                _renderLine(context, Color(0xFFF3F3F3), 10.0),
                _renderRow(context, "设置"),
            ],
          )
        ],
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
            title: new Text("title"),
            content: new Text("内容内容内容内容内容内容内容内容内容内容内容"),
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

  /**
   * 自定义dialog的使用
   */
  showLoadingDialog(context) {
    showDialog<Null>(
      context: context, //BuildContext对象
      barrierDismissible: true,
      builder: (BuildContext context) {
          return new LoadingDialog( //调用对话框
              loadingText: '正在获取详情...',
              dismissCallback: () {
                // 展示相当跳转到一个新的页面
                Navigator.of(context).pop(); //关闭对话框
                print("dismiss");
              },
          );
      });
  }

  hideLoadingDialog(context) {
    // Navigator.of(context).pop(); //关闭对话框
  }
}

/** 
 * 实例 
 */
/*
class MyInfoPage extends StatelessWidget {
  static const double IMAGE_ICON_WIDTH = 30.0;
  static const double ARROW_ICON_WIDTH = 16.0;

  var userAvatar;
  var userName;
  var titles = ["我的消息", "阅读记录", "我的博客", "我的问答", "我的活动", "我的团队", "邀请好友"];
  var imagePaths = [
    "images/ic_my_message.png",
    "images/ic_my_blog.png",
    "images/ic_my_blog.png",
    "images/ic_my_question.png",
    "images/ic_discover_pos.png",
    "images/ic_my_team.png",
    "images/ic_my_recommend.png"
  ];

  var titleTextStyle = new TextStyle(fontSize: 16.0);
  var rightArrowIcon = new Image.asset(
    'images/ic_arrow_right.png',
    width: ARROW_ICON_WIDTH,
    height: ARROW_ICON_WIDTH,
  );

  @override
  Widget build(BuildContext context) {
//    return showCustomScrollView();
    var listView = new ListView.builder(
      itemBuilder: (context, i) => renderRow(context,i),
      itemCount:   titles.length * 2,
    );
    return listView;
  }

  renderRow(context, i) {
    final userHeaderHeight = 200.0;
    if (i == 0) {
      var userHeader = new Container(
          height: userHeaderHeight,
          color: Colors.green,
          child: new Center(
              child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              userAvatar == null
                  ? new Image.asset(
                      "images/ic_avatar_default.png",
                      width: 60.0,
                    )
                  : new Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                          image: new DecorationImage(
                              image: new NetworkImage(userAvatar),
                              fit: BoxFit.cover),
                          border:
                              new Border.all(color: Colors.white, width: 2.0)),
                    ),
              new Container(
                margin: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                child: new Text(
                  userName == null ? '点击头像登录' : userName,
                  style: new TextStyle(color: Colors.white, fontSize: 16.0),
                ),
              )
            ],
          )));
      return new GestureDetector(
        onTap: () {

        },
        child: userHeader,
      );
    }
    --i;
    if (i.isOdd) {
      return new Divider(
        height: 1.0,
      );
    }
    i = i ~/ 2;
    String title = titles[i];
    var listItemContent = new Padding(
      padding: const EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
              child: new Text(
            title,
            style: titleTextStyle,
          )),
          rightArrowIcon
        ],
      ),
    );
    return new InkWell(
      child: listItemContent,
      onTap: () {},
    );
  }
}

Widget showCustomScrollView() {
  return new CustomScrollView(
    slivers: <Widget>[
      const SliverAppBar(
        pinned: true,
        expandedHeight: 250.0,
        flexibleSpace: const FlexibleSpaceBar(
          title: const Text('Demo'),
        ),
      ),
      new SliverGrid(
        gridDelegate: new SliverGridDelegateWithMaxCrossAxisExtent(
          //横轴的最大长度
          maxCrossAxisExtent: 200.0,
          //主轴间隔
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          //横轴间隔
          childAspectRatio: 1.0,
        ),
        delegate: new SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return new Container(
              alignment: Alignment.center,
              color: Colors.teal[100 * (index % 9)],
              child: new Text('grid item $index'),
            );
          },
          childCount: 20,
        ),
      ),
      new SliverFixedExtentList(
        itemExtent: 50.0,
        delegate:
            new SliverChildBuilderDelegate((BuildContext context, int index) {
          return new Container(
            alignment: Alignment.center,
            color: Colors.lightBlue[100 * (index % 9)],
            child: new Text('list item $index'),
          );
        }, childCount: 10),
      ),
    ],
  );
}
*/
