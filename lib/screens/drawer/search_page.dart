// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:tourbiene/screens/drawer/global_drawer/global_drawer.dart';

class SearchPage extends StatefulWidget {
  static const String pageName = 'SearchPage';
  const SearchPage({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController editingController = TextEditingController();

  final duplicateItems = ['1', '2', '3', '4', '5'];
  var items = [];

  @override
  void initState() {
    items.addAll(duplicateItems);
    super.initState();
  }

  void filterSearchResults(String query) {
    List<String> dummySearchList = [];
    dummySearchList.addAll(duplicateItems);
    if (query.isNotEmpty) {
      List<String> dummyListData = [];
      // ignore: avoid_function_literals_in_foreach_calls
      dummySearchList.forEach((item) {
        if (item.contains(query)) {
          dummyListData.add(item);
        }
      });
      setState(() {
        items.clear();
        items.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        items.clear();
        items.addAll(duplicateItems);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title.toString()),
      ),
      // ignore: avoid_unnecessary_containers
      drawer: GlobalDrawer(),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) {
                  filterSearchResults(value);
                },
                controller: editingController,
                decoration: const InputDecoration(
                    labelText: "Search",
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)))),
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('${items[index]}'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class SearchPage extends StatefulWidget {
//   static const String pageName = 'SearchPage';
//   const SearchPage({Key? key}) : super(key: key);

//   @override
//   State<SearchPage> createState() => _SearchPageState();
// }

// class _SearchPageState extends State<SearchPage> with TickerProviderStateMixin {
//   late TabController _tabController;
//   final List<Tab> topTabs = <Tab>[
//     const Tab(text: 'Recent'),
//     const Tab(text: 'Saved'),
//   ];

//   @override
//   void initState() {
//     super.initState();

//     _tabController =
//         TabController(length: topTabs.length, vsync: this, initialIndex: 0);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: Drawer(
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                 color: Colors.white,
//                 height: 220,
//                 child: DrawerHeader(
//                     child: UserAccountsDrawerHeader(
//                         decoration: const BoxDecoration(color: Colors.white),
//                         currentAccountPicture: CircleAvatar(
//                           backgroundColor: Colors.grey.shade300,
//                           child: Icon(
//                             Icons.person,
//                             size: 70,
//                             color: Colors.grey.shade600,
//                           ),
//                         ),
//                         accountName: const Text('Sajjad',
//                             style: TextStyle(
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 18)),
//                         accountEmail: const Text('nabeelfluer786@gmail.com',
//                             style: TextStyle(color: Colors.black)))),
//               ),
//               const ListTile(
//                 leading: Icon(Icons.home),
//                 title: Text('Home'),
//               ),
//               const ListTile(
//                 leading: Icon(Icons.notifications),
//                 title: Text('Notification'),
//               ),
//               const ListTile(
//                 leading: Icon(Icons.message),
//                 title: Text('Message'),
//               ),
//               const Divider(
//                 thickness: 2,
//               ),
//               const Padding(
//                 padding: EdgeInsets.all(8.0),
//                 child: Text('My Tourbiene'),
//               ),
//               const ListTile(
//                 leading: Icon(Icons.watch),
//                 title: Text('Watching'),
//               ),
//               const ListTile(
//                 leading: Icon(Icons.favorite_border),
//                 title: Text('Saved'),
//               ),
//               const ListTile(
//                 leading: Icon(Icons.card_travel_sharp),
//                 title: Text('Buy Again'),
//               ),
//               const ListTile(
//                 leading: Icon(Icons.picture_in_picture_alt_sharp),
//                 title: Text('Purchases'),
//               ),
//               const ListTile(
//                 leading: Icon(Icons.gavel),
//                 title: Text('Bids & Offers'),
//               ),
//               const ListTile(
//                 leading: Icon(Icons.sell_outlined),
//                 title: Text('Selling'),
//               ),
//               const Divider(
//                 thickness: 2,
//               ),
//               const ListTile(
//                 leading: Icon(Icons.grid_view_outlined),
//                 title: Text('Catrgories'),
//               ),
//               const ListTile(
//                 leading: Icon(Icons.bolt_rounded),
//                 title: Text('Deals'),
//               ),
//               const ListTile(
//                 leading: Icon(Icons.settings),
//                 title: Text('Setting'),
//               ),
//               const ListTile(
//                 leading: Icon(Icons.help),
//                 title: Text('Help'),
//               ),
//             ],
//           ),
//         ),
//       ),
//       body: SafeArea(
//           child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           Expanded(
//             flex: 2,
//             child: AppBar(
//               title: const Text('Search'),
//               elevation: 1,
//               backgroundColor: Colors.purple,
//               flexibleSpace: Expanded(
//                 child: Row(
//                   children: [
//                     const Spacer(flex: 7),
//                     Expanded(
//                       flex: 86,
//                       child: Container(
//                         height: 40,
//                         decoration: BoxDecoration(
//                             color: const Color.fromARGB(255, 195, 198, 201),
//                             borderRadius: BorderRadius.circular(20)),
//                         child: Row(
//                           children: const [
//                             Spacer(flex: 5),
//                             Expanded(
//                               flex: 5,
//                               child: Icon(Icons.arrow_back),
//                             ),
//                             Spacer(flex: 5),
//                             Expanded(
//                               flex: 68,
//                               child: Text(
//                                 'Search on Tourbiene',
//                                 style: TextStyle(fontSize: 16),
//                               ),
//                             ),
//                             Expanded(
//                               flex: 10,
//                               child: Icon(Icons.camera_alt_outlined),
//                             ),
//                             Spacer(flex: 7),
//                           ],
//                         ),
//                       ),
//                     ),
//                     const Spacer(flex: 7),
//                   ],
//                 ),
//               ),
//               bottom: TabBar(
//                   isScrollable: true,
//                   labelColor: Colors.white,
//                   indicatorColor: Colors.black,
//                   indicatorSize: TabBarIndicatorSize.label,
//                   indicatorWeight: 4,
//                   controller: _tabController,
//                   tabs: topTabs),
//             ),
//           ),
//           Expanded(
//               flex: 8,
//               child: TabBarView(controller: _tabController, children: const [
//                 Center(child: Text('sajjad')),
//                 Center(child: Text('sajjad')),
//               ]))
//         ],
//       )),
//     );
//   }
// }
