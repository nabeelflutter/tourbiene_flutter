import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';



import 'package:tourbiene/screens/categories.dart';
import 'package:tourbiene/screens/deals.dart';
import 'package:tourbiene/screens/drawer/bids_offers_page.dart';
import 'package:tourbiene/screens/drawer/buy_again_page.dart';
import 'package:tourbiene/screens/drawer/notification_page.dart';
import 'package:tourbiene/screens/drawer/purchase_page.dart';
import 'package:tourbiene/screens/drawer/setting_page.dart';
import 'package:tourbiene/screens/drawer/watching/watching.dart';

import 'package:tourbiene/screens/googlescreens/google_screen.dart';

import 'package:tourbiene/screens/saveedscreen/saved.dart';
import 'package:tourbiene/screens/selling.dart';

// ignore: must_be_immutable
class GlobalDrawer extends StatefulWidget {
  Map? userDara = {};
  bool? isbool = false;
  GlobalDrawer({super.key, this.userDara, this.isbool});

  @override
  State<GlobalDrawer> createState() => _GlobalDrawerState();
}

class _GlobalDrawerState extends State<GlobalDrawer> {
  //final user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.purple,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: sort_child_properties_last
          children: [
            // Container(
            //   color: Colors.purple,
            //   height: 220,
            //   child: DrawerHeader(
            //       // child: UserAccountsDrawerHeader(
            //     // decoration: const BoxDecoration(color: Colors.purple),
            //     // currentAccountPicture: user == null
            //     //     ? const CircleAvatar()
            //     //     : CircleAvatar(
            //     //         backgroundImage:
            //     //             NetworkImage(user!.photoURL.toString()),
            //     //       ),
            //     // accountEmail: Text(user!.email.toString(),
            //     //     style: const TextStyle(color: Colors.white)),
            //     // accountName: Text(user!.displayName.toString(),
            //     //     style: const TextStyle(
            //     //         color: Colors.white,
            //     //         fontWeight: FontWeight.bold,
            //     //         fontSize: 18)),
            //   )
            //   ),
            // ),
            const ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, NotificationPage.pageName);
              },
              leading: const Icon(Icons.notifications),
              title: const Text('Notification'),
            ),
            const ListTile(
              leading: Icon(Icons.message),
              title: Text('Message'),
            ),
            const Divider(
              thickness: 2,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('My Tourbiene',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, WatchingPage.pageName);
              },
              leading: const Icon(
                FontAwesomeIcons.glasses,
                color: Colors.black54,
                size: 25,
              ),
              title: const Text('Watching'),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, SavedPage.pageName);
              },
              leading: const Icon(Icons.favorite_border),
              title: const Text('Saved'),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, BuyAgainPage.pageName);
              },
              leading: const Icon(Icons.card_travel_sharp),
              title: const Text('Buy Again'),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, PurchasesPage.pageName);
              },
              leading: const Icon(Icons.picture_in_picture_alt_sharp),
              title: const Text('Purchases'),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, BidsAndoffersPage.pageName);
              },
              leading: const Icon(Icons.gavel),
              title: const Text('Bids & Offers'),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, SellingPage.pageName);
              },
              leading: const Icon(Icons.sell_outlined),
              title: const Text('Selling'),
            ),
            const Divider(
              thickness: 2,
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, Catrgories.pageName);
              },
              leading: const Icon(Icons.grid_view_outlined),
              title: const Text('Catrgories'),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, Tabs.pageName);
              },
              leading: const Icon(Icons.bolt_rounded),
              title: const Text('Deals'),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, SettingPage.pageName);
              },
              leading: const Icon(Icons.settings),
              title: const Text('Setting'),
            ),
            ListTile(
              onTap: () {
               // signout();
                Navigator.pushNamed(context, GoogleSignInPage.pageName);
              },
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
            )
          ],
        ),
      ),
    );
  }
}
