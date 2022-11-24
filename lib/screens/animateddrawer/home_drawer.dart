import 'package:flutter/material.dart';
import 'package:tourbiene/screens/home_page.dart';

// ignore: must_be_immutable
class Home extends StatefulWidget {
  Map? userDara = {};
  bool? isLogIn = false;
  final AppBar appBar;
  Home({key, required this.appBar, this.userDara, this.isLogIn})
      : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: widget.appBar, body: HomePage());
  }
}
