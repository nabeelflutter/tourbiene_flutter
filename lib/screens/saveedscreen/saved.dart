import 'package:flutter/material.dart';
import 'package:tourbiene/screens/drawer/global_drawer/global_drawer.dart';
import 'package:tourbiene/screens/drawer/search_page.dart';
import 'package:tourbiene/screens/saveedscreen/saved_searches_tab.dart';
import 'package:tourbiene/screens/saveedscreen/saved_sellers_tab.dart';

import 'saved_feed_tab.dart';

class SavedPage extends StatefulWidget {
  static const String pageName = 'SavedPage';
  const SavedPage({super.key});

  @override
  State<SavedPage> createState() => _SavedPageState();
}

class _SavedPageState extends State<SavedPage> with TickerProviderStateMixin {
  late TabController _tabController;

  final List<Tab> tabs = <Tab>[
    const Tab(text: 'Searches'),
    const Tab(text: 'Sellers'),
    const Tab(text: 'Feed'),
  ];

  @override
  void initState() {
    super.initState();

    _tabController =
        TabController(length: tabs.length, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,

              // ignore: avoid_unnecessary_containers
              child: Container(
                child: AppBar(
                  title: const Text(
                    'Saved',
                    style: TextStyle(color: Colors.white),
                  ),
                  actions: [
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 10,
                      ),
                      child: CircleAvatar(
                          backgroundColor:
                              const Color.fromARGB(255, 240, 245, 240),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, SearchPage.pageName);
                            },
                            child: const Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                          )),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        right: 10,
                      ),
                      child: CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 240, 245, 240),
                          child: Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.black,
                          )),
                    ),
                  ],
                  iconTheme: const IconThemeData(color: Colors.white),
                  elevation: 1,
                  backgroundColor: Colors.purple,
                  bottom: TabBar(
                      isScrollable: true,
                      labelColor: Colors.white,
                      indicatorColor: Colors.white,
                      controller: _tabController,
                      tabs: tabs),
                ),
              ),
            ),
            Expanded(
              flex: 7,
              child: TabBarView(
                controller: _tabController,
                children: const [
                  SavedSearchTabs(),
                  SavedSellersTabPage(),
                  SavedFeedTabPage()
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: GlobalDrawer(),
    );
  }
}
