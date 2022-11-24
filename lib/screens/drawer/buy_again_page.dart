import 'package:flutter/material.dart';
import 'package:tourbiene/screens/drawer/global_drawer/global_drawer.dart';

class BuyAgainPage extends StatefulWidget {
  static const String pageName = 'BuyAgainPage';
  const BuyAgainPage({Key? key}) : super(key: key);

  @override
  State<BuyAgainPage> createState() => _BuyAgainPageState();
}

class _BuyAgainPageState extends State<BuyAgainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Buy Again'), elevation: 1, actions: [
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
      ]),
      drawer: GlobalDrawer(),
      body: Column(children: [
        const Expanded(
            flex: 10,
            child: Center(
              child: Text(
                'You have no items to Buy again.',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            )),
        Expanded(
          flex: 5,
          child: Row(
            children: const [
              Spacer(
                flex: 5,
              ),
              Expanded(
                  flex: 95,
                  child: Text(
                    'Stock up on essentials',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w800),
                  ))
            ],
          ),
        ),
        Expanded(
            flex: 85,
            child: Container(
              color: Colors.white,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            color: Colors.white,
                            child: Card(
                                elevation: 10,
                                color: Colors.white,
                                child: Image.network(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzhX25DiiLcOJu3_SR2L38hTT-Qljo2TYlwg&usqp=CAU',
                                    fit: BoxFit.cover)),
                          ),
                          const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Shampoo',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                              ))
                        ],
                      ),
                    ),
                  );
                },
              ),
            ))
      ]),
    );
  }
}
