import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inshorts_news_demo_app/res/assets/assets.dart';
import 'package:inshorts_news_demo_app/res/colors/app_color.dart';
import 'package:inshorts_news_demo_app/view/bookmark/bookmark_view.dart';
import 'package:inshorts_news_demo_app/view/relevancy/relevancy_view.dart';
import 'package:inshorts_news_demo_app/view/share/share_view.dart';

import '../../view_models/controllers/navbar/navbar_viewmodel.dart';

class NavbarView extends StatelessWidget {
  const NavbarView({super.key});

  @override
  Widget build(BuildContext context) {
    final NavViewModel navVM = Get.put(NavViewModel());
    return BottomNavigationBar(
      backgroundColor: AppColor.bg1Light,
      elevation: 0,
      currentIndex: navVM.selectedIndex.value,
      onTap: navVM.changePage,
      items: const [
        BottomNavigationBarItem(
          icon: Image(image: AssetImage(AssetConstants.relevancyIcon)),
          label: 'Relevancy',
        ),
        BottomNavigationBarItem(
          icon: Image(image: AssetImage(AssetConstants.shareIcon)),
          label: 'Share',
        ),
        BottomNavigationBarItem(
          icon: Image(image: AssetImage(AssetConstants.bookmarkIcon)),
          label: 'Bookmark',
        ),
      ],
    );
  }

  Widget _getPage(int index) {
    switch (index) {
      case 0:
        return RelevancyView();
      case 1:
        return ShareView();
      case 2:
        return BookMarkView();
      default:
        return Container();
    }
  }
}
