import 'package:flutter/material.dart';

/**
 * 个人资料修改
 */
class UserInfoModify extends StatelessWidget {

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
        title: Text('修改'),
      ),
    );
  }

}