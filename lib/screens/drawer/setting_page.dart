import 'package:flutter/material.dart';
import 'package:tourbiene/screens/drawer/global_drawer/global_drawer.dart';

class SettingPage extends StatefulWidget {
  static const String pageName = 'SettingPage';
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting'),
      ),
      drawer: GlobalDrawer(),
      body: SingleChildScrollView(
        child: Column(children: [
          // ignore: sized_box_for_whitespace
          const Divider(
            color: Colors.grey,
            height: 10,
            thickness: 2,
          ),
          // ignore: sized_box_for_whitespace
          Container(
              height: 380,
              child: Column(
                children: const [
                  ListTile(
                    leading: Text(
                      'Account',
                      style: TextStyle(color: Colors.blue, fontSize: 18),
                    ),
                  ),
                  ListTile(
                    leading: Text(
                      'Sign in and security',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  ListTile(
                    leading:
                        Text('Notifications', style: TextStyle(fontSize: 18)),
                  ),
                  ListTile(
                    leading: Text('Emails', style: TextStyle(fontSize: 18)),
                  ),
                  ListTile(
                    leading: Text('Measurement and Analytics',
                        style: TextStyle(fontSize: 18)),
                  ),
                  ListTile(
                    leading: Text('Sign out', style: TextStyle(fontSize: 18)),
                  ),
                ],
              )),
          const Divider(
            color: Colors.grey,
            height: 10,
            thickness: 2,
          ),
          // ignore: sized_box_for_whitespace
          Container(
              height: 350,
              child: Column(
                children: const [
                  ListTile(
                    leading: Text(
                      'General',
                      style: TextStyle(color: Colors.blue, fontSize: 18),
                    ),
                  ),
                  ListTile(
                    leading: Text('Theme', style: TextStyle(fontSize: 18)),
                  ),
                  ListTile(
                    leading: Text('Country or region',
                        style: TextStyle(fontSize: 18)),
                  ),
                  ListTile(
                    leading:
                        Text('Translation', style: TextStyle(fontSize: 18)),
                  ),
                  ListTile(
                    leading: Text('Clear search history',
                        style: TextStyle(fontSize: 17)),
                  ),
                ],
              )),
          const Divider(
            color: Colors.grey,
            height: 10,
            thickness: 2,
          ),
          // ignore: sized_box_for_whitespace
          Container(
              height: 150,
              child: Column(
                children: const [
                  ListTile(
                    leading: Text(
                      'Suupport',
                      style: TextStyle(color: Colors.blue, fontSize: 18),
                    ),
                  ),
                  ListTile(
                    leading: Text('Customer Services',
                        style: TextStyle(fontSize: 18)),
                  ),
                ],
              )),
          const Divider(
            color: Colors.grey,
            height: 10,
            thickness: 2,
          ),
          // ignore: sized_box_for_whitespace
          Container(
              height: 450,
              child: Column(
                children: const [
                  ListTile(
                    leading: Text(
                      'About',
                      style: TextStyle(color: Colors.blue, fontSize: 18),
                    ),
                  ),
                  ListTile(
                    leading:
                        Text('User Agreement', style: TextStyle(fontSize: 18)),
                  ),
                  ListTile(
                    leading: Text('Privacy', style: TextStyle(fontSize: 18)),
                  ),
                  ListTile(
                    leading: Text(
                        'Do Not Sell My Personal Information & AdChoice',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold)),
                  ),
                  ListTile(
                    leading: Text('Advertising and Related Perfernces',
                        style: TextStyle(fontSize: 18)),
                  ),
                  ListTile(
                    leading: Text('Legal', style: TextStyle(fontSize: 18)),
                  ),
                  ListTile(
                    leading: Text('Version', style: TextStyle(fontSize: 18)),
                  ),
                ],
              )),
          const Divider(
            color: Colors.grey,
            height: 10,
            thickness: 2,
          ),
        ]),
      ),
    );
  }
}
