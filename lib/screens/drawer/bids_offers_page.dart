import 'package:flutter/material.dart';
import 'package:tourbiene/screens/drawer/search_page.dart';
import 'package:tourbiene/screens/saveedscreen/saved_feed_tab.dart';
import 'package:tourbiene/screens/saveedscreen/saved_sellers_tab.dart';

class BidsAndoffersPage extends StatefulWidget {
  static const String pageName = 'BidsAndoffersPage';
  const BidsAndoffersPage({super.key});

  @override
  State<BidsAndoffersPage> createState() => _BidsAndoffersPageState();
}

class _BidsAndoffersPageState extends State<BidsAndoffersPage>
    with TickerProviderStateMixin {
  late TabController _tabController;

  final List<Tab> tabs = <Tab>[
    const Tab(text: 'Active'),
    const Tab(text: "Didn't Win"),
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
      appBar: AppBar(
        title: const Text('Bids&offers'),
        elevation: 1,
        actions: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundColor: Colors.grey.shade300,
              child: Center(
                child: IconButton(
                  padding: const EdgeInsets.only(right: 1),
                  onPressed: () {
                    Navigator.pushNamed(context, SearchPage.pageName);
                  },
                  icon: const Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.black,
                  ),
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
                  icon: const Icon(
                    Icons.shopping_cart,
                    size: 30,
                    color: Colors.black,
                  ),
                  splashColor: Colors.transparent,
                  highlightColor: Colors.limeAccent,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: TabBar(
                  isScrollable: true,
                  labelColor: Colors.black,
                  indicatorColor: Colors.black,
                  controller: _tabController,
                  tabs: tabs),
            ),
            Expanded(
              flex: 9,
              child: TabBarView(
                controller: _tabController,
                children: const [SavedSellersTabPage(), SavedFeedTabPage()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
