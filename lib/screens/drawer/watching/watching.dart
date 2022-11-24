import 'package:flutter/material.dart';
import 'package:tourbiene/screens/drawer/global_drawer/global_drawer.dart';
import 'package:tourbiene/screens/saveedscreen/saved_feed_tab.dart';

class WatchingPage extends StatefulWidget {
  static const String pageName = 'WatchingPage';
  const WatchingPage({Key? key}) : super(key: key);

  @override
  State<WatchingPage> createState() => _WatchingPageState();
}

class _WatchingPageState extends State<WatchingPage>
    with TickerProviderStateMixin {
  late TabController _tabController;
  final List<Tab> topTabs = <Tab>[
    const Tab(text: 'Active'),
    const Tab(text: 'Ended'),
  ];

  @override
  void initState() {
    super.initState();

    _tabController =
        TabController(length: topTabs.length, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Watching'),
        elevation: 1,
        actions: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundColor: Colors.grey.shade300,
              child: Center(
                child: IconButton(
                  padding: const EdgeInsets.only(right: 1),
                  onPressed: () {},
                  icon: const Icon(Icons.search, size: 30),
                  splashColor: Colors.transparent,
                  highlightColor: Colors.limeAccent,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundColor: Colors.grey.shade300,
              child: Center(
                child: IconButton(
                  padding: const EdgeInsets.only(right: 1),
                  onPressed: () {},
                  icon: const Icon(Icons.shopping_cart, size: 30),
                  splashColor: Colors.transparent,
                  highlightColor: Colors.limeAccent,
                ),
              ),
            ),
          ),
        ],
        bottom: TabBar(
            padding: const EdgeInsets.only(left: 5),
            isScrollable: true,
            labelColor: Colors.white,
            indicatorColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 4,
            controller: _tabController,
            tabs: topTabs),
      ),
      drawer: GlobalDrawer(),
      body: TabBarView(controller: _tabController, children: const [
        SavedFeedTabPage(),
        SavedFeedTabPage(),
      ]),
    );
  }
}
