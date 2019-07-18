import 'package:flutter/material.dart';

// 自定义组件
import 'package:mall/widgets/home/home_swiper.dart';
import 'package:mall/widgets/home/home_items.dart';
import 'package:mall/widgets/home/home_notice.dart';
import 'package:mall/widgets/home/home_banner.dart';
import 'package:mall/widgets/home/home_goods.dart';


/**
 * 商城首页
 */
class FunctionPage extends StatefulWidget  {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FunctionPageState();
  }

}

class _FunctionPageState extends State<FunctionPage> with AutomaticKeepAliveClientMixin {

    @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("首页"),),
      body: Container(
        child: ListView(
          children: <Widget>[
            HomeSwiper(),
            HomeItems(),
            HomeNotice(),
            HomeBanner(),
            HomeGoods()
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

}