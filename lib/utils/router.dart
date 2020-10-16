import 'package:bigheadprice/ui/home_screen.dart';
import 'package:bigheadprice/ui/item_detail_screen.dart';
import 'package:flutter/material.dart';


class CustomRouter {
  static Route<Widget> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Home.HOME_SCREEN_VIEW_ROUTE:
        return MaterialPageRoute(builder: (_) => Home());
//      case ItemDetailScreen.ITEM_DETAILS_SCREEN_ROUTE:
//        return MaterialPageRoute(builder: (_) => ItemDetailScreen());
      default:
        return null;
    }
  }
}
