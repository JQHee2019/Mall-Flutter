import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

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
        child: GestureDetector(
          onTap: () {
            showActionSheetMenu(context);
          },
          child: Text('个人资料'),
        ),
      ),
    );
  }

  /**
   * ActionSheet 弹窗
   */
  showActionSheetMenu(context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Column(
          mainAxisSize: MainAxisSize.min, // 设置最小的弹出
          children: <Widget>[

            new ListTile(
              title: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center, 
                  children: <Widget>[
                    new Text("打开相机"),
                  ],
                )
              ),
              onTap: () async {
                Navigator.of(context).pop();
                _takePhoto();
              },
            ),
            new Container(
              width: double.infinity,
              height: 1.0,
              color: Color(0xFFF3F3F3),
            ),
            new ListTile(
              title: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center, 
                  children: <Widget>[
                    new Text("打开相册"),
                  ],
                )
              ),
              onTap: () async {
                Navigator.of(context).pop();
                _openGallery();
              },
            ),
            new Container(
              width: double.infinity,
              height: 10.0,
              color: Color(0xFFF3F3F3),
            ),
            new ListTile(
              title: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center, 
                  children: <Widget>[
                    new Text("取消"),
                  ],
                )
              ),
              onTap: () async {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      }
    );
  }

  /*相册*/
  _openGallery() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
  }

  /*拍照*/
  _takePhoto() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
  }

}