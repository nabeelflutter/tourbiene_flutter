// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:tourbiene/screens/drawer/global_drawer/global_drawer.dart';
import 'package:tourbiene/screens/drawer/search_page.dart';

class NotificationPage extends StatelessWidget {
  static const String pageName = 'NotificationPage';
  NotificationPage({super.key});

  List list = [
    'Important',
    'Buying',
    'Selling',
    'Account',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Notifications',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: CircleAvatar(
                backgroundColor: const Color.fromARGB(255, 240, 245, 240),
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
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 240, 245, 240),
                child: Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                )),
          )
        ],
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 1,
        backgroundColor: Colors.purple,
      ),
      drawer: GlobalDrawer(),
      body: Column(children: [
        const SizedBox(
          height: 10,
        ),
        Container(
            color: Colors.white,
            height: 50,
            child: ListView.builder(
              itemCount: list.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: InputChip(
                    backgroundColor: const Color.fromARGB(245, 36, 135, 233),
                    label: Text('${list[index]}'),
                  ),
                );
              },
            )),
      ]),
    );
  }
}
