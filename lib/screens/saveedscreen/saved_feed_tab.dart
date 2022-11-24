import 'package:flutter/material.dart';

class SavedFeedTabPage extends StatelessWidget {
  const SavedFeedTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          SizedBox(
            height: 70,
          ),
          Center(
            child: Icon(
              Icons.window,
              size: 70,
              color: Colors.grey,
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
              "New items from your saved searches and sellers will show up here as soon as they're listed. ",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
