import 'package:flutter/material.dart';
import 'package:mall/pages/user_info_page.dart';

/**
 * 路由 (无需使用fluro)
 */

// 更多使用方法参考：https://www.jianshu.com/p/b4fa985a3c8f
class RouterUtil {

    static void routeToUserInfoPage(BuildContext context) {
      Navigator.of(context).push(
          MaterialPageRoute(
              builder: (context){
                return UserInfoPage();
              }
          )
      );
    }

  // pop或dismiss
  static pop(BuildContext context) {
    // 方式一
    Navigator.of(context).pop();
    //方式二
    //Navigator.pop(context);
  }

  /* 第一种： push
    // 方式一
    Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                      return SecondPage();
                })
    );
    // 方式二
    Navigator.push(context,
                  MaterialPageRoute(fullscreenDialog: true,
                    builder: (context) { 
                    return SecondPage();
                  })
      );
   */

  /* 第二种： present
   // 方式一
  Navigator.of(context).push(
                MaterialPageRoute(
                                    fullscreenDialog: true,
                                    builder: (context) {
                                        return SecondPage();
                                  }
                )
  );
  // 方式二
  Navigator.push(context,
                MaterialPageRoute(
                  fullscreenDialog: true,
                  builder: (context) { 
                  return SecondPage();
                })
    );
   */
}