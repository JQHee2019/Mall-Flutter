import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

/**
 * 首页公告
 */
class HomeNotice extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeNoticeState();
  }

}

class _HomeNoticeState extends State<HomeNotice> {

// 跑码灯的item
 Widget _swiperBuilder(BuildContext context, int index) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text('测试文本测试文本测试文本测试文本测试文本测试文本测试文本测试文本测试文本测试文本测试文本测试文本测试文本' + index.toString(), maxLines: 2,),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 50.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        // border: Border(top:BorderSide(width: 1,color: Color(0xffe5e5e5)))
      ),
      child: Row(
        children: <Widget>[
          Container(
            child: Image.asset('images/function/function_notice_b.png', fit: BoxFit.fitWidth,),
          ),
          Expanded( // 占满剩余的空间
            child: Container(
              child: Swiper(
                itemBuilder: _swiperBuilder,
                itemCount: 3,
                pagination: null,
                control: null,
                scrollDirection: Axis.vertical,
                autoplay: true,
                autoplayDelay: 8000,
                onTap: (index) {
                  print('点击了第$index个');
                },
              )
            ),
          )
        ],
      ),
    );
  }

}