import "package:flutter/material.dart";
import 'package:izaan_want_a_room/screens/home/home_item.dart';
import 'package:izaan_want_a_room/utils/helpers.dart';

class Home extends StatefulWidget {
  static const String screenName = "/home";

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
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
                    SingleChildScrollView(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Column(
                              children: [
                                HomeItem(),
                                HomeItem(),
                                HomeItem(),
                                HomeItem(),
                                HomeItem(),
                                HomeItem(),
                                HomeItem(),
                                HomeItem(),
                                HomeItem(),
                                HomeItem(),
                                HomeItem(),
                                HomeItem(),
                                HomeItem(),
                                HomeItem(),
                                HomeItem(),
                                HomeItem(),
                                HomeItem(),
                                HomeItem(),
                                HomeItem(),
                                HomeItem(),
                                HomeItem(),
                              ],
                            )),
                          ],
                        ),
                      ),
                    ),
                    Text("Profile"),
                  ],
                  controller: _tabController,
                ),
              ),
              TabBar(
                unselectedLabelColor: Colors.black,
                labelColor: Colors.red,
                tabs: [
                  Tab(
                    text: 'Home',
                  ),
                  Tab(
                    text: 'Profile',
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
