// ignore_for_file: must_be_immutable, prefer_if_null_operators, sized_box_for_whitespace

import 'package:flutter/material.dart';

// ignore: unused_import
import 'package:html/parser.dart';
import 'package:tourbiene/screens/drawer/global_drawer/global_drawer.dart';
import 'package:tourbiene/screens/drawer/search_page.dart';
import 'package:tourbiene/screens/explore_popular_categories/korean_beauty/korean_beauty_heropage.dart';

class RockShip extends StatelessWidget {
  String image;
  String descroption;
  RockShip({super.key, required this.image, required this.descroption});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: GlobalDrawer(),
        backgroundColor: Colors.white,
        appBar: AppBar(
          //  centerTitle: true,
          backgroundColor: Colors.purple,
          title: const Text(
            'Korean bea..',
            style: TextStyle(
                fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, SearchPage.pageName);
                },
                icon: const Icon(Icons.search),
                color: Colors.black),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.camera_alt_outlined),
                color: Colors.black),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart),
                color: Colors.black),
          ],
        ),
        body: Column(
          children: [
            Container(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
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
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                    image.toString(),
                                  ),
                                )),
                            const SizedBox(
                              height: 8,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                )),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                // ignore': sized_box_for_whitespace
                child: Container(
              height: 300,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) => shoesItem(
                    index: index,
                    // ignore: unnecessary_null_comparison
                    images: image == null
                        ? 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMKrDNApV7rY_z32ceQZ1EO57rL53UAP76sg&usqp=CAU'
                        : image,
                    context: context,
                    description: descroption),
              ),
            ))
          ],
        ));
  }
}

Widget shoesItem(
    {required String images,
    context,
    required int index,
    required String? description}) {
  return Hero(
      tag: index,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => KoreanHeroPage(
                  immage: images,
                  index: index,
                  description: description,
                ),
              ));
        },
        child: Container(
          height: 200,
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.only(bottom: 20),
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: NetworkImage(
                    images,
                  ),
                  fit: BoxFit.fill),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  offset: const Offset(0, 10),
                  blurRadius: 10,
                )
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(
                          height: 2,
                        ),
                        // Icon(
                        //   Icons.forward_rounded,
                        //   color: Colors.white,
                        // )
                      ],
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: const Center(
                      child: Icon(
                        Icons.favorite_border_outlined,
                        size: 20,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ));
}
