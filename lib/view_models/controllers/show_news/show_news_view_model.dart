import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:inshorts_news_demo_app/models/show_news/show_news_model.dart';

import '../../../data/response/status.dart';
import '../../../repository/home_repository/home_repository.dart';

class HomeViewModel extends GetxController {
  final _api = HomeRepository();
  final rxRequestStatus = Status.LOADING.obs;
  final showNewsList = ShowNewsModel().obs;
  // final userList = UserListModel().obs;
  RxString error = ''.obs;

  void setRxRequestStatus(Status _value) => rxRequestStatus.value = _value;
  void setShowNewsList(ShowNewsModel _value) => showNewsList.value = _value;
  // void setUserList(UserListModel _value) => userList.value = _value;
  void setError(String _value) => error.value = _value;

  void showNewsListApi() {
    _api.showNewsListApi().then((value) {
      setRxRequestStatus(Status.COMPLETED);
      showNewsList(value);
    }).onError((error, stackTrace) {
      if (kDebugMode) {
        print(error);
        print(stackTrace);
      }
      setError(error.toString());
      setRxRequestStatus(Status.ERROR);
    });
  }

  void refreshApi() {
    setRxRequestStatus(Status.LOADING);
    _api.showNewsListApi().then((value) {
      setRxRequestStatus(Status.COMPLETED);
      showNewsList(value);
    }).onError((error, stackTrace) {
      if (kDebugMode) {
        print(error);
        print(stackTrace);
      }
      setError(error.toString());
      setRxRequestStatus(Status.ERROR);
    });
  }
}
