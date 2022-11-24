import 'package:flutter/material.dart';
import 'package:tourbiene/screens/drawer/global_drawer/global_drawer.dart';
import 'package:tourbiene/screens/drawer/search_page.dart';

class PurchasesPage extends StatelessWidget {
  static const String pageName = 'PurchasesPage';
  const PurchasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Purchases'),
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
      drawer: GlobalDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Icon(
              Icons.wallet_giftcard,
              size: 200,
              color: Colors.grey.shade400,
            ),
          ),
          const Center(
            child: Text(
              "You don't have any purchases to view",
              style: TextStyle(fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}
