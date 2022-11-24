import 'package:flutter/material.dart';
import 'package:tourbiene/screens/drawer/global_drawer/global_drawer.dart';
import 'package:tourbiene/screens/explore_popular_categories/shoes_heropage.dart';

class SaneakersPage extends StatelessWidget {
  const SaneakersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: GlobalDrawer(),
        backgroundColor: Colors.white,
        appBar: AppBar(
          //  centerTitle: true,
          backgroundColor: Colors.purple,
          title: const Text(
            'When the do..',
            style: TextStyle(
                fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
                onPressed: () {},
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
            // ignore: sized_box_for_whitespace
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
                                child: const CircleAvatar(
                                  backgroundImage: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDNTXJUKD5fRXQzYWZE3eSCkihN41OOu4PAg&usqp=CAU',
                                  ),
                                )),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              'Fishing',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.normal),
                            )
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
                // ignore: sized_box_for_whitespace
                child: Container(
              height: 300,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) => shoesItem(
                    index: index,
                    images:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrDR_qS6cxvxnh9s4VjBVBoqaZBfJBOqaiGw&usqp=CAU',
                    context: context),
              ),
            ))
          ],
        ));
  }
}

Widget shoesItem({required String images, context, required int index}) {
  return Hero(
      tag: index,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Shoes(
                  immage: images,
                  index: index,
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
                  fit: BoxFit.cover),
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
                        Text(
                          'Sneakers',
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Nike',
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                        Icon(
                          Icons.forward_rounded,
                          color: Colors.white,
                        )
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
