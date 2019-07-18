import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

/**
 * 首页的功能菜单
 */
class HomeItems extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeItemsState();
  }

}

class _HomeItemsState extends State<HomeItems> {

 Widget _swiperBuilder(BuildContext context) {

    return Container(
      child: new ConstrainedBox( // 约束布局 设置某一个范围
        child: new Swiper(
          outer:false,
          itemBuilder: (c, i) {
            return new Wrap(
              runSpacing:  6.0,
              children: [0,1,2,3,4,5,6,7,8,9].map((i){
                return new SizedBox(
                  width: MediaQuery.of(context).size.width/5,
                  child: new Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      new SizedBox(
                        child:  new Container(
                          child: new Image.network("https://fuss10.elemecdn.com/c/db/d20d49e5029281b9b73db1c5ec6f9jpeg.jpeg%3FimageMogr/format/webp/thumbnail/!90x90r/gravity/Center/crop/90x90"),
                        ),
                        height: MediaQuery.of(context).size.width * 0.12,
                        width: MediaQuery.of(context).size.width * 0.12,
                      ),
                      new Padding(padding: new EdgeInsets.only(top:6.0),child: new Text("$i"),)
                    ],
                  ),
                );
              }).toList(),
            );
          },
          pagination: new SwiperPagination(
            margin: new EdgeInsets.all(5.0)
          ),
          itemCount: 3,
        ),
          constraints:new BoxConstraints.loose(new Size(MediaQuery.of(context).size.width, 200.0))
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _swiperBuilder(context);
  }

}
