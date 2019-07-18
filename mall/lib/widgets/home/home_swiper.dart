import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

/**
 * 首页轮播广告
 */
class HomeSwiper extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeSwiperState();
  }

}

class _HomeSwiperState extends State<HomeSwiper> {

 Widget _swiperBuilder(BuildContext context, int index) {
    return (Image.network(
      "http://via.placeholder.com/350x150",
      fit: BoxFit.fill,
    ));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200.0,
      child: Swiper(
        itemBuilder: _swiperBuilder,
        itemCount: 3,
        pagination: new SwiperPagination(
          builder: DotSwiperPaginationBuilder(
          color: Colors.black54,
          activeColor: Colors.white,
        )),
        control: null,
        scrollDirection: Axis.horizontal,
        autoplay: true,
        onTap: (index) => print('点击了第$index个'),
      )
    );
  }

}