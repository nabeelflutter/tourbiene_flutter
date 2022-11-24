import 'package:flutter/material.dart';
import 'package:tourbiene/screens/drawer/global_drawer/global_drawer.dart';
import 'package:tourbiene/screens/googlescreens/google_register_page.dart';
import 'package:tourbiene/screens/googlescreens/google_screen.dart';

class SellingPage extends StatelessWidget {
  static const String pageName = 'SellingPage';
  const SellingPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height - kToolbarHeight;
    // double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Selling',
          style: TextStyle(color: Colors.white),
        ),
        //title: const Image(image: AssetImage('assets/ant')),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                color: Colors.purple,
                height: height * .13,
                child: Row(
                  children: const [
                    Expanded(
                      flex: 2,
                      child: Icon(
                        Icons.error,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                    Expanded(
                      flex: 8,
                      child: Text(
                        'To create a listing, please list on the website',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * .02,
            ),
            SizedBox(
              height: height * .10,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                              context, GoogleRegisterPage.pageName);
                        },
                        child: Container(
                          height: height * .07,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: Colors.purple)),
                          child: const Center(
                              child: Text(
                            'Register',
                            style:
                                TextStyle(color: Colors.purple, fontSize: 15),
                          )),
                        ),
                      ),
                    )),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                              context, GoogleSignInPage.pageName);
                        },
                        child: Container(
                          height: height * .07,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: Colors.purple)),
                          child: const Center(
                              child: Text(
                            'Sign in',
                            style:
                                TextStyle(color: Colors.purple, fontSize: 15),
                          )),
                        ),
                      ),
                    ))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * .02,
            ),
            SizedBox(
              height: height * .05,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'How it Works',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: height * .10,
              child: const ListTile(
                leading: Icon(
                  Icons.camera_enhance_outlined,
                  size: 40,
                ),
                subtitle: Text(
                    "Snap some photes and write a greate description. We'll help you price your item to sell.",
                    style: TextStyle(color: Colors.black54)),
                title: Text('List in minutes.'),
              ),
            ),
            SizedBox(
              height: height * .10,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(
                    Icons.sell_outlined,
                    size: 40,
                  ),
                  subtitle: Text(
                      "When your item sells, we make the payment process easly for you and the buyer",
                      style: TextStyle(color: Colors.black54)),
                  title: Text('Get paid quickly and safely.'),
                ),
              ),
            ),
            SizedBox(
              height: height * .10,
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.all_inbox_rounded,
                    size: 40,
                  ),
                  subtitle: Text(
                      "Box it up print a lable drictely on Tourbiene,and say farewell. Its that simple.",
                      style: TextStyle(color: Colors.black54)),
                  title: Text('Ship it to its new home.'),
                ),
              ),
            ),
            SizedBox(
              height: height * .07,
              child: const Divider(
                thickness: 2,
              ),
            ),
            const Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text('Learn more',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold)),
                ))
          ],
        ),
      ),
      drawer: GlobalDrawer(),
    );
  }
}
