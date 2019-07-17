import 'package:flutter/material.dart';


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
        child: Text("首页"),
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

}