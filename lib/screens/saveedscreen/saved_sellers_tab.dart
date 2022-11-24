import 'package:flutter/material.dart';

class SavedSellersTabPage extends StatelessWidget {
  const SavedSellersTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          SizedBox(
            height: 50,
          ),
          Center(
            child: CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 30,
              child: Icon(
                Icons.person,
                size: 50,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Nothing's here (yet)",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Save your favourite sellers to quickly see their latest inventory ',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
