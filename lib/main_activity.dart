import 'package:flutter/material.dart';
import 'package:hook_up/screens/bottom_nav_pages/favourite_page/favourite.dart';
import 'package:hook_up/styles/app_colors.dart';

import 'package:provider/provider.dart';

import 'Provider/bottom_nav_provider.dart';
import 'screens/bottom_nav_pages/account_page/account.dart';
import 'screens/bottom_nav_pages/add_page/add.dart';
import 'screens/bottom_nav_pages/home_page/home.dart';
import 'screens/bottom_nav_pages/search_page/search.dart';

class MainActivityPage extends StatefulWidget {
  const MainActivityPage({Key? key}) : super(key: key);

  @override
  State<MainActivityPage> createState() => _MainActivityPageState();
}

class _MainActivityPageState extends State<MainActivityPage> {
  ///bottom nav items
  List<Map>? bottomNavItems = [
    {'title': 'Home', 'icon': 'assets/images/home.png'},
    {'title': 'Search','icon': 'assets/images/search.png'},
    { 'title': 'Add','icon': 'assets/images/add.png'},
    {'title': 'Favourite', 'icon': 'assets/images/favourite.png'},
    { 'title': 'Profile','icon': 'assets/images/profile.png'},
  ];

  List<Map>? bottomNavItemsSelected = [
    { 'title': 'Home','icon': 'assets/images/bottom_home_s.png'},
    {'title': 'Search','icon': 'assets/images/bottom_search_s.png'},
    { 'title': 'Add','icon': 'assets/images/bottom_add_s.png'},
    {'title': 'Favourite', 'icon': 'assets/images/bottom_favourite_s.png'},
    {'title': 'Profile', 'icon': 'assets/images/bottom_profile_s.png'},
  ];

  ///bottom nav pages
  List<Widget> bottomNavPages = [
    const HomePage(),
    const SearchPage(),
    const AddPage(),
    const FavouritePage(),
    const AccountPage()
  ];




  @override
  Widget build(BuildContext context) {
    return Consumer<ModelProviders>(builder: (context, counter, child) {
      return Scaffold(
        body: bottomNavPages[counter.bottomCounter],
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.circular(20)),

          child: BottomNavigationBar(
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.black,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedLabelStyle:  TextStyle(fontWeight: FontWeight.bold, color: AppColor.primaryColor),
              onTap: (value) {
                counter.changeCounter(value);
              },
              currentIndex: counter.bottomCounter,
              items: List.generate(bottomNavItems!.length, (index) {
                final data = bottomNavItems![index];
                final selectedData = bottomNavItemsSelected![index];

                return BottomNavigationBarItem(
                    tooltip: data['title'],

                    icon: Image.asset(
                      counter.bottomCounter == index
                          ? selectedData['icon']
                          : data['icon'],
                      width: 20,
                      color: counter.bottomCounter == index
                          ? AppColor.primaryColor
                          : AppColor.gray,
                    ),
                    label: data['title' ],

                );
              })),
        ),
      );
    });
  }
}
