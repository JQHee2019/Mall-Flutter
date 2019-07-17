import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_easyrefresh/material_footer.dart';
import 'package:flutter_easyrefresh/material_header.dart';

/**
 * 消息中心
 */
class MessagePage extends StatelessWidget {

  GlobalKey<RefreshHeaderState> _headerKey = new GlobalKey<RefreshHeaderState>();
  GlobalKey<RefreshFooterState> _footerKey = new GlobalKey<RefreshFooterState>();

  Widget _renderRow(context) {
    return InkWell(
      onTap: () => {

      },
      child: Row(
        children: <Widget>[
          Text('测试')
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("消息中心"),),
      body: Container(
        child: EasyRefresh(
          refreshHeader: ClassicsHeader(
              key: _headerKey, 
          ),
          refreshFooter: ClassicsFooter(
              key: _footerKey, 
              textColor: Colors.white,
              moreInfoColor: Colors.white,
              showMore: false,
              noMoreText: '加载完成',
              moreInfo: '加载中',
              loadReadyText: '上拉加载...',
  
          ),
          child: ListView.builder(
            itemBuilder: (context, i) => _renderRow(context),
            itemCount: 50,
          ),
          onRefresh: () async {
            // 延迟一秒执行
            await new Future.delayed(const Duration(seconds: 1), () {
              
            });
          },
          loadMore: () async {
            
          },
        ),
      ),
    );
  }

}