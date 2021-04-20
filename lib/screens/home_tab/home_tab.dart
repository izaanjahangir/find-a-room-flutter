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

    _tabController.addListener(() {
      setState(() {});
    });

    super.initState();
  }

  @override
  void dispose() {
    _tabController.removeListener(() {});

    super.dispose();
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
                    active: _tabController.index == 0,
                    icon: AssetImage("assets/icons/home-unactive.png"),
                    activeIcon: AssetImage("assets/icons/home-active.png"),
                    label: 'Home',
                  ),
                  CustomTab(
                    active: _tabController.index == 1,
                    icon: AssetImage("assets/images/dummy-user.jpeg"),
                    activeIcon: AssetImage("assets/images/dummy-user.jpeg"),
                    roundIcon: true,
                    iconAsImage: true,
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
