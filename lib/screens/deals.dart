import 'package:flutter/material.dart';
import 'package:tourbiene/screens/drawer/global_drawer/global_drawer.dart';
import 'package:tourbiene/screens/drawer/search_page.dart';
import 'package:tourbiene/screens/saveedscreen/saved_feed_tab.dart';

// class Deals extends StatelessWidget {
//   static const String pageName = 'Deals';
//   final List<ListItem> items;

//   const Deals({
//     super.key,
//     required this.items,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: items.length,
//               itemBuilder: (context, index) {
//                 final item = items[index];

//                 return Padding(
//                   padding: const EdgeInsets.all(1.0),
//                   child: Expanded(
//                     child: Row(
//                       children: [
//                         Expanded(child: item.buildTitle(context)),
//                         Expanded(child: item.buildSubtitle(context)),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// abstract class ListItem {
//   Widget buildTitle(BuildContext context);

//   Widget buildSubtitle(BuildContext context);
// }

// class HeadingItem implements ListItem {
//   final String heading;

//   HeadingItem(this.heading);

//   @override
//   Widget buildTitle(BuildContext context) {
//     return Text(
//       heading,
//       style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//     );
//   }

//   @override
//   Widget buildSubtitle(BuildContext context) => const SizedBox.shrink();
// }

// class MessageItem implements ListItem {
//   final String sender;
//   final String body;

//   MessageItem(this.sender, this.body);

//   @override
//   Widget buildTitle(BuildContext context) => Padding(
//         padding: const EdgeInsets.all(8),
//         child: Container(
//           height: 250,
//           width: 150,
//           color: Colors.white,
//           child: Column(
//             children: [
//               Container(
//                 color: Colors.white,
//                 height: 170,
//                 width: 160,
//                 child: Card(
//                     elevation: 10,
//                     color: Colors.white,
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(20),
//                       child: Image.network(
//                           'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzhX25DiiLcOJu3_SR2L38hTT-Qljo2TYlwg&usqp=CAU',
//                           fit: BoxFit.cover),
//                     )),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: RichText(
//                   text: const TextSpan(
//                       text: 'vjgjhgjhghjghavegjhgfhjgjh an account?',
//                       style: TextStyle(color: Colors.black, fontSize: 16),
//                       children: <TextSpan>[
//                         TextSpan(
//                           text: " US 240.00",
//                           style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 16,
//                               fontWeight: FontWeight.bold),
//                         )
//                       ]),
//                 ),
//               )
//             ],
//           ),
//         ),
//       );
//   @override
//   Widget buildSubtitle(BuildContext context) => Padding(
//         padding: const EdgeInsets.all(8),
//         child: Container(
//           height: 250,
//           width: 150,
//           color: Colors.white,
//           child: Column(
//             children: [
//               Container(
//                 color: Colors.white,
//                 height: 170,
//                 width: 160,
//                 child: Card(
//                     elevation: 10,
//                     color: Colors.white,
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(20),
//                       child: Image.network(
//                           'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzhX25DiiLcOJu3_SR2L38hTT-Qljo2TYlwg&usqp=CAU',
//                           fit: BoxFit.cover),
//                     )),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: RichText(
//                   text: const TextSpan(
//                       text: 'vjgjhgjhghjghavegjhgfhjgjh an account?',
//                       style: TextStyle(color: Colors.black, fontSize: 16),
//                       children: <TextSpan>[
//                         TextSpan(
//                           text: " US 240.00",
//                           style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 16,
//                               fontWeight: FontWeight.bold),
//                         )
//                       ]),
//                 ),
//               )
//             ],
//           ),
//         ),
//       );
// }

class Tabs extends StatefulWidget {
  static const String pageName = 'Tabs';
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> with TickerProviderStateMixin {
  late TabController _tabController;

  final List<Tab> topTabs = <Tab>[
    const Tab(text: 'Featured'),
    const Tab(text: 'Teach'),
    const Tab(text: 'Fashion'),
    const Tab(text: 'Home'),
    const Tab(text: 'More'),
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
      backgroundColor: Colors.white,
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
                    'Deals',
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
                      indicatorWeight: 4,
                      indicatorSize: TabBarIndicatorSize.tab,
                      labelColor: Colors.white,
                      indicatorColor: Colors.black,
                      controller: _tabController,
                      tabs: topTabs),
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: TabBarView(
                controller: _tabController,
                children: const [
                  SavedFeedTabPage(),
                  SavedFeedTabPage(),
                  SavedFeedTabPage(),
                  SavedFeedTabPage(),
                  SavedFeedTabPage(),
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
