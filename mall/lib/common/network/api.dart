/**
 * 接口相关请求
 */

class API {

  /// 基本地址
  static const BASE_URL = 'http://v.jspang.com:8088/baixing';

  // 商店首页信息
  static const HOME = BASE_URL + '/wxmini/homePageContent';
  // 商城首页热卖商品
  static const HOME_HOT_GOODS = BASE_URL + '/wxmini/homePageBelowConten';
  
  // 商品类别
  static const CATEGORY = BASE_URL + '/wxmini/getCategory';
  // 商品分类的商品列表
  static const CATEGORY_GOODS = BASE_URL + '/wxmini/getMallGoods';
  // 商品详情
  static const GOODS_DETAIL  = BASE_URL + '/wxmini/getGoodDetailById';

}