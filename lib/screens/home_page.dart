// ignore_for_file: sized_box_for_whitespace, must_be_immutable

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:shimmer/shimmer.dart';
import 'package:tourbiene/modal/huvavy.dart';
import 'package:tourbiene/modal/modal4.dart';
import 'package:tourbiene/modal/modal5.dart';
import 'package:tourbiene/modal/modal6.dart';
import 'package:tourbiene/modal/rochship.dart';
import 'package:tourbiene/screens/bottomnavigationbar/tab_bar.dart' as prefix0;
import 'package:tourbiene/screens/categories.dart';
import 'package:tourbiene/screens/deals.dart';
import 'package:tourbiene/screens/drawer/search_page.dart';
import 'package:tourbiene/screens/explore_popular_categories/korean_beauty/korean_beauty_item.dart';
import 'package:tourbiene/screens/saveedscreen/saved.dart';
import 'package:tourbiene/screens/selling.dart';

import '../modal/modal.dart';
import '../modal/samsing_modal.dart';

class HomePage extends StatelessWidget {
  Map? userDara = {};
  bool? isLogIn = false;
  HomePage({super.key, this.userDara, this.isLogIn});

  static const String pageName = 'HomePage';

  @override
  Widget build(BuildContext context) {
    List<Modal> postList = [];

    var imageUrl =
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDNTXJUKD5fRXQzYWZE3eSCkihN41OOu4PAg&usqp=CAU';
    List list = [
      'Selling',
      'Deals',
      'Categories',
      'Saved',
    ];
    Future<Modal1> getSamsingPostApi() async {
      final response = await http
          .get(Uri.parse('https://tourbiene.com/wp-json/wp/v2/media/170'));
      //var data = jsonDecode(response.body.toString());
      if (response.statusCode == 200) {
        // for (Map<String, dynamic> i in data) {
        //   postList.add(Modal1.fromJson(i));
        // }
        // return postList;
        return Modal1.fromJson(jsonDecode(response.body));
      } else {
        return Modal1.fromJson(jsonDecode(response.body));
      }
    }

    Future<Modal3> getHuvavyPostApi() async {
      final response = await http
          .get(Uri.parse('https://tourbiene.com/wp-json/wp/v2/media/612'));

      if (response.statusCode == 200) {
        return Modal3.fromJson(jsonDecode(response.body));
      } else {
        return Modal3.fromJson(jsonDecode(response.body));
      }
    }

    Future<Modal6> getModal6PostApi() async {
      final response = await http
          .get(Uri.parse('https://tourbiene.com/wp-json/wp/v2/media/255'));

      if (response.statusCode == 200) {
        return Modal6.fromJson(jsonDecode(response.body));
      } else {
        return Modal6.fromJson(jsonDecode(response.body));
      }
    }

    Future<Modal2> getRockShipPostApi() async {
      final response = await http
          .get(Uri.parse('https://tourbiene.com/wp-json/wp/v2/media/304'));

      if (response.statusCode == 200) {
        return Modal2.fromJson(jsonDecode(response.body));
      } else {
        return Modal2.fromJson(jsonDecode(response.body));
      }
    }

    Future<Modal4> getModal4PostApi() async {
      final response = await http
          .get(Uri.parse('https://tourbiene.com/wp-json/wp/v2/media/626'));

      if (response.statusCode == 200) {
        return Modal4.fromJson(jsonDecode(response.body));
      } else {
        return Modal4.fromJson(jsonDecode(response.body));
      }
    }

    Future<Modal5> getModal5PostApi() async {
      final response = await http
          .get(Uri.parse('https://tourbiene.com/wp-json/wp/v2/media/624'));

      if (response.statusCode == 200) {
        return Modal5.fromJson(jsonDecode(response.body));
      } else {
        return Modal5.fromJson(jsonDecode(response.body));
      }
    }

    Future<List<Modal>> getPostApi() async {
      final response = await http
          .get(Uri.parse('https://tourbiene.com/wp-json/wp/v2/posts'));
      var data = jsonDecode(response.body.toString());
      if (response.statusCode == 200) {
        for (Map<String, dynamic> i in data) {
          postList.add(Modal.fromJson(i));
        }
        return postList;
      } else {
        return postList;
      }
    }

    List<Widget> iconList = [
      const Icon(
        Icons.sell_outlined,
      ),
      const Icon(
        Icons.bolt_rounded,
      ),
      const Icon(
        Icons.grid_view_outlined,
      ),
      const Icon(
        Icons.favorite_border_outlined,
      ),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: const prefix0.TabBarPage(),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Spacer(flex: 5),
              Expanded(
                flex: 90,
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 195, 198, 201),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      const Spacer(flex: 5),
                      Expanded(
                        flex: 5,
                        child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, SearchPage.pageName);
                            },
                            child:
                                const Icon(FontAwesomeIcons.magnifyingGlass)),
                      ),
                      const Spacer(flex: 5),
                      Expanded(
                        flex: 65,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, SearchPage.pageName);
                          },
                          child: const Text(
                            'Search on Tourbiene',
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                      ),
                      const Expanded(
                        flex: 5,
                        child: Icon(FontAwesomeIcons.microphone),
                      ),
                      const Spacer(flex: 5),
                      const Expanded(
                        flex: 5,
                        child: Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.black,
                          size: 27,
                        ),
                      ),
                      const Spacer(flex: 5),
                    ],
                  ),
                ),
              ),
              const Spacer(flex: 7),
            ],
          ),
          const SizedBox(
            height: 15,
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
                      backgroundColor: const Color.fromARGB(245, 230, 235, 240),
                      avatar: iconList[index],
                      label: Text('${list[index]}'),
                      onSelected: (bool value) {
                        if (index == 0) {
                          Navigator.pushNamed(context, SellingPage.pageName);
                        } else if (index == 1) {
                          Navigator.pushNamed(context, Tabs.pageName);
                        } else if (index == 2) {
                          Navigator.pushNamed(context, Catrgories.pageName);
                        } else {
                          Navigator.pushNamed(context, SavedPage.pageName);
                        }
                      },
                    ),
                  );
                },
              )),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Your Recently Posts',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 200,
            child: FutureBuilder(
              future: getPostApi(),
              builder: (context, AsyncSnapshot<List<Modal>> snapshot) {
                if (!snapshot.hasData) {
                  return Center(
                      child: Column(
                    children: [
                      Shimmer.fromColors(
                          baseColor: Colors.grey.shade700,
                          highlightColor: Colors.grey.shade100,
                          child: ListTile(
                              subtitle: Container(
                                  height: 10, color: Colors.amber.shade100),
                              title: Container(
                                  height: 20, color: Colors.amber.shade100))),
                      Shimmer.fromColors(
                          baseColor: Colors.grey.shade700,
                          highlightColor: Colors.grey.shade100,
                          child: ListTile(
                              subtitle: Container(
                                  height: 10, color: Colors.amber.shade100),
                              title: Container(
                                  height: 20, color: Colors.amber.shade100))),
                    ],
                  ));
                } else {
                  return ListView.builder(
                    itemCount: postList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(postList[index].title!.rendered.toString(),
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold)),
                      );
                    },
                  );
                }
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Your Recently Viewed Items',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 300,
            color: Colors.white,
            child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return FutureBuilder<Modal1>(
                  future: getSamsingPostApi(),
                  builder: (context, AsyncSnapshot<Modal1> snapshot) {
                    if (!snapshot.hasData) {
                      return const Center(
                        child: Text('Loading'),
                      );
                    } else {
                      return Padding(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          height: 250,
                          width: 150,
                          // color: Colors.white,
                          child: Column(
                            children: [
                              Container(
                                color: Colors.white,
                                height: 170,
                                width: 160,
                                child: Card(
                                    //elevation: 10,
                                    // color: Colors.white,
                                    child: Image.network(
                                        snapshot.data!.guid!.rendered
                                            .toString(),
                                        fit: BoxFit.cover)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: RichText(
                                  text: TextSpan(
                                      text: snapshot.data!.title!.rendered
                                          .toString(),
                                      style: const TextStyle(
                                          color: Colors.black, fontSize: 16),
                                      children: const <TextSpan>[
                                        TextSpan(
                                          text: ' Rs.5000',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ]),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }
                  },
                );
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Explore Popular Categories',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 340,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FutureBuilder<Modal1>(
                      future: getSamsingPostApi(),
                      builder: (context, snapshot) => InkWell(
                        onTap: () {
                          if (!snapshot.hasData) {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content:
                                  Text('Please wait your data is Loading...'),
                              backgroundColor: Colors.purple,
                            ));
                          } else {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RockShip(
                                    image: snapshot.data!.sourceUrl.toString(),
                                    descroption: snapshot
                                        .data!.description!.rendered
                                        .toString(),
                                  ),
                                ));
                          }
                        },
                        child: Container(
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  height: 100,
                                  width: 100,
                                  decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 240, 205, 200),
                                      shape: BoxShape.circle),
                                  child: imageUrl.isEmpty
                                      ? Shimmer.fromColors(
                                          baseColor: Colors.grey.shade200,
                                          highlightColor: Colors.grey.shade700,
                                          child: const CircleAvatar(
                                            backgroundColor: Colors.white,
                                          ))
                                      : FutureBuilder<Modal1>(
                                          future: getSamsingPostApi(),
                                          builder: (context, snapshot) =>
                                              !snapshot.hasData
                                                  ? const SizedBox()
                                                  : CircleAvatar(
                                                      backgroundImage:
                                                          NetworkImage(
                                                        snapshot.data!.sourceUrl
                                                            .toString(),
                                                      ),
                                                    ),
                                        )),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text(
                                'Samsung',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    FutureBuilder<Modal2>(
                      future: getRockShipPostApi(),
                      builder: (context, snapshot) => InkWell(
                        onTap: () {
                          if (!snapshot.hasData) {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content:
                                  Text('Please wait your data is Loading...'),
                              backgroundColor: Colors.purple,
                            ));
                          } else {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RockShip(
                                    image: snapshot.data!.sourceUrl.toString(),
                                    descroption: snapshot
                                        .data!.description.rendered
                                        .toString(),
                                  ),
                                ));
                          }
                        },
                        child: Container(
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  height: 100,
                                  width: 100,
                                  decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 240, 205, 200),
                                      shape: BoxShape.circle),
                                  child: imageUrl.isEmpty
                                      ? Shimmer.fromColors(
                                          baseColor: Colors.grey.shade200,
                                          highlightColor: Colors.grey.shade700,
                                          child: const CircleAvatar(
                                            backgroundColor: Colors.white,
                                          ))
                                      : FutureBuilder<Modal2>(
                                          future: getRockShipPostApi(),
                                          builder: (context, snapshot) =>
                                              !snapshot.hasData
                                                  ? const SizedBox()
                                                  : CircleAvatar(
                                                      backgroundImage:
                                                          NetworkImage(
                                                        snapshot.data!.sourceUrl
                                                            .toString(),
                                                      ),
                                                    ),
                                        )),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text(
                                'RockShip',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    FutureBuilder<Modal3>(
                      future: getHuvavyPostApi(),
                      builder: (context, snapshot) => InkWell(
                        onTap: () {
                          if (!snapshot.hasData) {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content:
                                  Text('Please wait your data is Loading...'),
                              backgroundColor: Colors.purple,
                            ));
                          } else {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RockShip(
                                    image: snapshot.data!.sourceUrl.toString(),
                                    descroption: snapshot
                                        .data!.description.rendered
                                        .toString(),
                                  ),
                                ));
                          }
                        },
                        child: Container(
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  height: 100,
                                  width: 100,
                                  decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 240, 205, 200),
                                      shape: BoxShape.circle),
                                  child: imageUrl.isEmpty
                                      ? Shimmer.fromColors(
                                          baseColor: Colors.grey.shade200,
                                          highlightColor: Colors.grey.shade700,
                                          child: const CircleAvatar(
                                            backgroundColor: Colors.white,
                                          ))
                                      : FutureBuilder<Modal3>(
                                          future: getHuvavyPostApi(),
                                          builder: (context, snapshot) =>
                                              !snapshot.hasData
                                                  ? const SizedBox()
                                                  : CircleAvatar(
                                                      backgroundImage:
                                                          NetworkImage(
                                                        snapshot.data!.sourceUrl
                                                            .toString(),
                                                      ),
                                                    ),
                                        )),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text(
                                'Huawea',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FutureBuilder<Modal4>(
                      future: getModal4PostApi(),
                      builder: (context, snapshot) => InkWell(
                        onTap: () {
                          if (!snapshot.hasData) {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content:
                                  Text('Please wait your data is Loading...'),
                              backgroundColor: Colors.purple,
                            ));
                          } else {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RockShip(
                                    image: snapshot.data!.sourceUrl.toString(),
                                    descroption: snapshot
                                        .data!.description.rendered
                                        .toString(),
                                  ),
                                ));
                          }
                        },
                        child: Container(
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  height: 100,
                                  width: 100,
                                  decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 240, 205, 200),
                                      shape: BoxShape.circle),
                                  child: imageUrl.isEmpty
                                      ? Shimmer.fromColors(
                                          baseColor: Colors.grey.shade200,
                                          highlightColor: Colors.grey.shade700,
                                          child: const CircleAvatar(
                                            backgroundColor: Colors.white,
                                          ))
                                      : FutureBuilder<Modal4>(
                                          future: getModal4PostApi(),
                                          builder: (context, snapshot) =>
                                              !snapshot.hasData
                                                  ? const SizedBox()
                                                  : CircleAvatar(
                                                      backgroundImage:
                                                          NetworkImage(
                                                        snapshot.data!.sourceUrl
                                                            .toString(),
                                                      ),
                                                    ),
                                        )),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text(
                                'Xiaomi',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    FutureBuilder<Modal5>(
                      future: getModal5PostApi(),
                      builder: (context, snapshot) => InkWell(
                        onTap: () {
                          if (!snapshot.hasData) {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content:
                                  Text('Please wait your data is Loading...'),
                              backgroundColor: Colors.purple,
                            ));
                          } else {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RockShip(
                                    image: snapshot.data!.sourceUrl.toString(),
                                    descroption: snapshot
                                        .data!.description.rendered
                                        .toString(),
                                  ),
                                ));
                          }
                        },
                        child: Container(
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  height: 100,
                                  width: 100,
                                  decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 240, 205, 200),
                                      shape: BoxShape.circle),
                                  child: imageUrl.isEmpty
                                      ? Shimmer.fromColors(
                                          baseColor: Colors.grey.shade200,
                                          highlightColor: Colors.grey.shade700,
                                          child: const CircleAvatar(
                                            backgroundColor: Colors.white,
                                          ))
                                      : FutureBuilder<Modal5>(
                                          future: getModal5PostApi(),
                                          builder: (context, snapshot) =>
                                              !snapshot.hasData
                                                  ? const SizedBox()
                                                  : CircleAvatar(
                                                      backgroundImage:
                                                          NetworkImage(
                                                        snapshot.data!.sourceUrl
                                                            .toString(),
                                                      ),
                                                    ),
                                        )),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text(
                                'Vgologo',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    FutureBuilder<Modal6>(
                      future: getModal6PostApi(),
                      builder: (context, snapshot) => InkWell(
                        onTap: () {
                          if (!snapshot.hasData) {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content:
                                  Text('Please wait your data is Loading...'),
                              backgroundColor: Colors.purple,
                            ));
                          } else {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RockShip(
                                    image: snapshot.data!.sourceUrl.toString(),
                                    descroption: snapshot
                                        .data!.description.rendered
                                        .toString(),
                                  ),
                                ));
                          }
                        },
                        child: Container(
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  height: 100,
                                  width: 100,
                                  decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 240, 205, 200),
                                      shape: BoxShape.circle),
                                  child: imageUrl.isEmpty
                                      ? Shimmer.fromColors(
                                          baseColor: Colors.grey.shade200,
                                          highlightColor: Colors.grey.shade700,
                                          child: const CircleAvatar(
                                            backgroundColor: Colors.white,
                                          ))
                                      : FutureBuilder<Modal6>(
                                          future: getModal6PostApi(),
                                          builder: (context, snapshot) =>
                                              !snapshot.hasData
                                                  ? const SizedBox()
                                                  : CircleAvatar(
                                                      backgroundImage:
                                                          NetworkImage(
                                                        snapshot.data!.sourceUrl
                                                            .toString(),
                                                      ),
                                                    ),
                                        )),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text(
                                'Gopro_hero7',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Daily Deals',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 300,
            color: Colors.white,
            child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return FutureBuilder<Modal1>(
                  future: getSamsingPostApi(),
                  builder: (context, AsyncSnapshot<Modal1> snapshot) {
                    if (!snapshot.hasData) {
                      return const Center(
                        child: Text('Loading'),
                      );
                    } else {
                      return Padding(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          height: 250,
                          width: 150,
                          // color: Colors.white,
                          child: Column(
                            children: [
                              Container(
                                color: Colors.white,
                                height: 170,
                                width: 160,
                                child: Card(
                                    //elevation: 10,
                                    // color: Colors.white,
                                    child: Image.network(
                                        snapshot.data!.guid!.rendered
                                            .toString(),
                                        fit: BoxFit.cover)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: RichText(
                                  text: TextSpan(
                                      text: snapshot.data!.title!.rendered
                                          .toString(),
                                      style: const TextStyle(
                                          color: Colors.black, fontSize: 16),
                                      children: const <TextSpan>[
                                        TextSpan(
                                          text: " Rs.999",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ]),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }
                  },
                );
              },
            ),
          ),
        ],
      )),
    );
  }
}
