import 'package:boutigi_app/features/home/presentation/home_nav_bar/home_nav_bar_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeNavBar extends StatelessWidget {
  const HomeNavBar({super.key});
  static const routeName = '/homeNavBar';
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeViewModel(),
      child: const _HomeScreenBody(),
    );
  }
}

class _HomeScreenBody extends StatelessWidget {
  const _HomeScreenBody();

  @override
  Widget build(BuildContext context) {
    // final AppLocalizations locale = AppLocalizations.of(context)!;
    return Consumer<HomeViewModel>(
      builder: (context, viewModel, child) {
        return Scaffold(
          // indexed stack for save tab state across navigation
          body: IndexedStack(
            index: viewModel.currentIndex,
            children: viewModel.pages,
          ),
          bottomNavigationBar:
              BottomNavigationBar(
                showSelectedLabels: true,
                showUnselectedLabels: false,
                type:
                    BottomNavigationBarType.fixed,
                currentIndex:
                    viewModel.currentIndex,
                onTap: viewModel.setCurrentIndex,
                elevation: 0,
                selectedItemColor: Theme.of(
                  context,
                ).primaryColor,

                unselectedItemColor: Colors.black,
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(
                      CupertinoIcons.home,
                    ),
                    label: 'الرئيسية',
                  ),

                  BottomNavigationBarItem(
                    icon: Icon(
                      CupertinoIcons.bag,
                    ),
                    label: 'المنتجات',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      CupertinoIcons
                          .cart_badge_plus,
                    ),
                    label: 'السلة',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      CupertinoIcons.person,
                    ),
                    label: 'الملف الشخصي',
                  ),
                ],
              ),
        );
      },
    );
  }
}
