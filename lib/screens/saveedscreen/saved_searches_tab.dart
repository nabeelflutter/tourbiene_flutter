import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class SavedSearchTabs extends StatefulWidget {
  const SavedSearchTabs({super.key});

  @override
  State<SavedSearchTabs> createState() => _SavedSearchTabsState();
}

class _SavedSearchTabsState extends State<SavedSearchTabs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Save searches',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Save a search to get updates when new items are listed that match your criteria.',
            style: TextStyle(fontSize: 15),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const SizedBox(
          height: 20,
        ),
        Shimmer.fromColors(
            baseColor: Colors.grey.shade700,
            highlightColor: Colors.grey.shade100,
            child: ListTile(
                subtitle: Container(height: 10, color: Colors.amber),
                leading: const CircleAvatar(
                  radius: 40,
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
                title: Container(height: 20, color: Colors.amber.shade100))),
        Shimmer.fromColors(
            baseColor: Colors.grey.shade700,
            highlightColor: Colors.grey.shade100,
            child: ListTile(
                subtitle: Container(height: 10, color: Colors.amber.shade100),
                leading: const CircleAvatar(
                  radius: 40,
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
                title: Container(height: 20, color: Colors.amber))),
        Shimmer.fromColors(
            baseColor: Colors.grey.shade700,
            highlightColor: Colors.grey.shade100,
            child: ListTile(
                subtitle: Container(height: 10, color: Colors.amber.shade100),
                leading: const CircleAvatar(
                  radius: 40,
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
                title: Container(height: 20, color: Colors.amber.shade100)))
      ],
    ));
  }
}
