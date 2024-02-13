import 'package:inshorts_news_demo_app/models/show_news/show_news_model.dart';

import '../../data/network/network_api_services.dart';
import '../../res/app_url/app_url.dart';

class HomeRepository {
  final _apiService = NetworkApiServices();

  Future<ShowNewsModel> showNewsListApi() async {
    dynamic response = await _apiService
        .getApi(AppUrl.fetchNews, <String, dynamic>{"article": "desc_1"});
    return ShowNewsModel.fromJson(response);
  }

  // Future<UserListModel> userListApi() async {
  //   dynamic response = await _apiService.getApi(AppUrl.userListApi);
  //   return UserListModel.fromJson(response);
  // }
}
