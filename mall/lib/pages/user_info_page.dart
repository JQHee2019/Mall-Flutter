import 'package:flutter/material.dart';

/**
 * 个人资料
 */
class UserInfoPage extends StatelessWidget {
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
        title: Text('个人资料'),
      ),
      body: Container(
        child: Text('个人资料'),
      ),
    );
  }

}