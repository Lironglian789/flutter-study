  // {
  //   "logo": "https://img2.bosszhipin.com/mcs/chatphoto/20160220/6042752606dc6957d81c5f08f409db8e5e01c286644ac62b728b8918eb85ca28.jpg",
  //   "name": "平安银行",
  //   "location": "上海徐汇区平安大厦凯滨路206号",
  //   "type": "互联网",
  //   "size": "已上市",
  //   "employee": "10000人以上",
  //   "hot": "前端架构师",
  //   "count": "400",
  //   "inc": "平安银行，全称平安银行股份有限公司，是中国平安保险（集团）股份有限公司控股的一家跨区域经营的股份制商业银行，为中国大陆12家全国性股份制商业银行之一，总部位于广东省深圳市。中国平安保险（集团）股份有限公司（以下简称“中国平安”）及其控股子公司为平安银行的控股股东。"
  // }
  
import 'dart:convert';

class Article {
  final String logo;
  final String name;
  final String location;
  final String type;
  final String size;
  final String employee;
  final String hot;
  final String count;
  final String inc;

  // 构造函数
  Article({
    this.logo,
    this.name,
    this.location, 
    this.type,
    this.size,
    this.employee,
    this.hot,
    this.count,
    this.inc,
  });
  // string => List<Article>
  static List<Article> resolveFromJsonString(String json) {
    List<Article> listModel = new List<Article>();
    List list = jsonDecode(json)['list'];
    list.forEach((item) {
      var model = new Article(
        logo: item['logo'],
        name: item['name'],
        location: item['location'],
        type: item['type'],
        size: item['size'],
        employee: item['employee'],
        hot: item['hot'],
        count: item['count'],
        inc: item['inc']
      );
      listModel.add(model);
    }); 
    return listModel;
  }
}