import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

/**
 * 用户头像
 */
class UserInfoAvatarPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _UserInfoAvatarPageState();
  }
}

class _UserInfoAvatarPageState extends State<UserInfoAvatarPage> {

  var _imageFile;

  @override
  Widget build(BuildContext context) {

    var imageView = _imageFile == null ?  NetworkImage('12') : FileImage(_imageFile); 

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
        title: Text('修改头像'),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            child: ListView(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 50),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            showActionSheetMenu(context);
                          },
                          child: Container(
                            color: Colors.orange,
                            width: 300,
                            height: 300,
                            child: CircleAvatar(
                                radius: 150,
                                backgroundImage: imageView,
                              ),
                          ),
                        )
     
                      ],
                    ),),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 50,
            left: 20,
            right: 20,
            child: MaterialButton(
            onPressed: () {
              debugPrint('提交');
            },
            minWidth: double.infinity,
            height: 50.0,
            color: Colors.blue,
            shape: RoundedRectangleBorder(side: BorderSide.none, borderRadius: BorderRadius.all(Radius.circular(50))),
            child: Text('提交', style: TextStyle(color: Colors.white),),
          ),
          )
        ],
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
    setState(() {
      _imageFile = image;
    });
    
  }

  /*拍照*/
  _takePhoto() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _imageFile = image;
    });
  }
}