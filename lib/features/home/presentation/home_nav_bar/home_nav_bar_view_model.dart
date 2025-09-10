import 'package:boutigi_app/features/home/presentation/tabs/category_tab/category_tab.dart';
import 'package:boutigi_app/features/home/presentation/tabs/home_tab/home_view.dart';
import 'package:boutigi_app/features/home/presentation/tabs/product_tab/product_tab.dart';
import 'package:boutigi_app/features/home/presentation/tabs/profile_tab/profile_tab.dart';
import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  // hold data
  int currentIndex = 0;
  List<Widget> pages = [
    HomeView(),
    CategoryTab(),
    ProductTab(),
    ProfileTab(),
  ];

  // handle logic
  void setCurrentIndex(int index) {
    if (currentIndex != index) {
      currentIndex = index;
      notifyListeners();
    }
  }
}
