import "package:flutter/material.dart";
import 'package:izaan_want_a_room/components/custom_tab/custom_tab.dart';
import 'package:izaan_want_a_room/config/theme_colors.dart';
import 'package:izaan_want_a_room/screens/home/home.dart';
import 'package:izaan_want_a_room/screens/profile/profile.dart';
import 'package:izaan_want_a_room/utils/helpers.dart';

class HomeTab extends StatefulWidget {
  static const String screenName = "/home-tab";

  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          Helpers.dismissKeyboardOnTap(context);
        },
        child: Scaffold(
            body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: TabBarView(
                  children: [
                    Home(),
                    Profile(),
                  ],
                  controller: _tabController,
                ),
              ),
              TabBar(
                unselectedLabelColor: ThemeColors.darkGrey,
                labelColor: ThemeColors.lightBlue,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.zero,
                ),
                tabs: [
                  CustomTab(
                    icon: Icons.home,
                    label: 'Home',
                  ),
                  CustomTab(
                    icon: Icons.person,
                    label: 'Profile',
                  ),
                ],
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.tab,
              ),
            ],
          ),
        )),
      ),
    );
  }
}
