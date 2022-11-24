import 'package:flutter/material.dart';

class WristWatchesHeroPage extends StatefulWidget {
  const WristWatchesHeroPage(
      {Key? key, required this.immage, required this.index})
      : super(key: key);

  final String immage;
  final int index;

  @override
  State<WristWatchesHeroPage> createState() => _WristWatchesHeroPageState();
}

class _WristWatchesHeroPageState extends State<WristWatchesHeroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Hero(
          tag: widget.index,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: NetworkImage(
                      widget.immage,
                    ),
                    fit: BoxFit.cover),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    offset: const Offset(0, 10),
                    blurRadius: 10,
                  )
                ]),
            child: Stack(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(Icons.arrow_back_ios,
                            color: Colors.white),
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
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  width: MediaQuery.of(context).size.width,
                  //  height: 500,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                      Colors.black.withOpacity(.9),
                      Colors.black.withOpacity(.0)
                    ], begin: Alignment.bottomRight)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          'Sneakers',
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        const Text('Size',
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 20,
                              color: Colors.white,
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 10),
                              width: 40,
                              height: 40,
                              child: const Center(
                                child: Text(
                                  '40',
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 10),
                              width: 40,
                              height: 40,
                              child: const Center(
                                child: Text(
                                  '42',
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 10),
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Center(
                                child: Text(
                                  '44',
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      // color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 10),
                              width: 40,
                              height: 40,
                              child: const Center(
                                child: Text(
                                  '46',
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white),
                          child: const Center(
                            child: Text(
                              'Buy Now',
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
