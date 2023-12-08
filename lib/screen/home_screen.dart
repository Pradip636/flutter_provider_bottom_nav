import 'package:flutter/material.dart';
import 'package:flutter_provider_bottom_nav/provider/nav_provider.dart';
import 'package:flutter_provider_bottom_nav/screen/tabs/account_tab.dart';
import 'package:flutter_provider_bottom_nav/screen/tabs/category_tab.dart';
import 'package:flutter_provider_bottom_nav/screen/tabs/dashboard_tab.dart';
import 'package:flutter_provider_bottom_nav/screen/tabs/favorite_tab.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final tabs = const [
    DashboardTab(),
    CategoryTab(),
    FavoriteTab(),
    AccountTab()
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<NavProvider>(
      builder: (context, provider, child) => Scaffold(
        appBar: AppBar(
          title: const Text("Bottom Navigation Bar"),
        ),
        body: tabs[provider.selectedTabIndex],
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            enableFeedback: false,
            currentIndex: provider.selectedTabIndex,
            onTap: (value) => provider.selectedTab(value),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: "Dashboard"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.list), label: "Category"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: "Favorite"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle), label: "Account")
            ]),
      ),
    );
  }
}
