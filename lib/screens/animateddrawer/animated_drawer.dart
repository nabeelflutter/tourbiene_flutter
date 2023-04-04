// ignore_for_file: must_be_immutable

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

import 'package:tourbiene/screens/saveedscreen/saved.dart';
import 'package:tourbiene/screens/selling.dart';

class AppDrawer extends StatefulWidget {
  Map? userDara = {};
  bool? isLogIn = false;
  final Widget child;
  AppDrawer({key, required this.child, this.userDara, this.isLogIn})
      : super(key: key);

  // ignore: library_private_types_in_public_api
  static _AppDrawerState? of(BuildContext context) =>
      context.findAncestorStateOfType<_AppDrawerState>();

  @override
  // ignore: library_private_types_in_public_api
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer>
    with SingleTickerProviderStateMixin {
  static Duration duration = const Duration(milliseconds: 300);
  late AnimationController _controller;
  static const double maxSlide = 255;
  static const dragRightStartVal = 60;
  static const dragLeftStartVal = maxSlide - 20;
  static bool shouldDrag = false;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: _AppDrawerState.duration);
    super.initState();
  }

  void close() => _controller.reverse();

  void open() => _controller.forward();

  void toggle() {
    if (_controller.isCompleted) {
      close();
    } else {
      open();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onDragStart(DragStartDetails startDetails) {
    bool isDraggingFromLeft = _controller.isDismissed &&
        startDetails.globalPosition.dx < dragRightStartVal;
    bool isDraggingFromRight = _controller.isCompleted &&
        startDetails.globalPosition.dx > dragLeftStartVal;
    shouldDrag = isDraggingFromLeft || isDraggingFromRight;
  }

  void _onDragUpdate(DragUpdateDetails updateDetails) {
    if (shouldDrag == false) {
      return;
    }
    double delta = updateDetails.primaryDelta! / maxSlide;
    _controller.value += delta;
  }

  void _onDragEnd(DragEndDetails dragEndDetails) {
    if (_controller.isDismissed || _controller.isCompleted) {
      return;
    }

    // ignore: no_leading_underscores_for_local_identifiers
    double _kMinFlingVelocity = 365.0;
    double dragVelocity = dragEndDetails.velocity.pixelsPerSecond.dx.abs();

    if (dragVelocity >= _kMinFlingVelocity) {
      double visualVelocityInPx = dragEndDetails.velocity.pixelsPerSecond.dx /
          MediaQuery.of(context).size.width;
      _controller.fling(velocity: visualVelocityInPx);
    } else if (_controller.value < 0.5) {
      close();
    } else {
      open();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragStart: _onDragStart,
      onHorizontalDragUpdate: _onDragUpdate,
      onHorizontalDragEnd: _onDragEnd,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (BuildContext context, _) {
          double animationVal = _controller.value;
          double translateVal = animationVal * maxSlide;
          double scaleVal = 1 - (animationVal * 0.3);
          return Stack(
            children: <Widget>[
              CustomDrawer(
                userDara: widget.userDara,
                isLogIn: widget.isLogIn,
              ),
              Transform(
                alignment: Alignment.centerLeft,
                transform: Matrix4.identity()
                  ..translate(translateVal)
                  ..scale(scaleVal),
                child: GestureDetector(
                    onTap: () {
                      if (_controller.isCompleted) {
                        close();
                      }
                    },
                    child: widget.child),
              ),
            ],
          );
        },
      ),
    );
  }
}

class CustomDrawer extends StatefulWidget {
  Map? userDara = {};
  bool? isLogIn = false;
  CustomDrawer({super.key, this.userDara, this.isLogIn});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  // final user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.purple,
      child: SafeArea(
        child: Theme(
          data: ThemeData(
            brightness: Brightness.dark,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Container(
                //   color: Colors.purple,
                //   height: 220,
                //   child: DrawerHeader(
                //       child: UserAccountsDrawerHeader(
                //           decoration: const BoxDecoration(color: Colors.purple),
                //           currentAccountPicture: user == null
                //               ? CircleAvatar(
                //                   child: Icon(Icons.person),
                //                 )
                //               : CircleAvatar(
                //                   backgroundImage:
                //                       NetworkImage(user!.photoURL.toString()),
                //                 ),
                //           accountName: Text(user!.displayName.toString(),
                //               style: const TextStyle(
                //                   color: Colors.white,
                //                   fontWeight: FontWeight.bold,
                //                   fontSize: 18)),
                //           accountEmail: Text(user!.email.toString(),
                //               style: const TextStyle(color: Colors.white)))),
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
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ),
                ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, WatchingPage.pageName);
                  },
                  leading: const Icon(
                    FontAwesomeIcons.glasses,
                    color: Colors.white,
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
                    // FirebaseAuth.instance.signOut();
                    // Navigator.pushNamed(context, GoogleSignInPage.pageName);
                  },
                  leading: const Icon(Icons.logout),
                  title: const Text('Logout'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
