// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class KoreanHeroPage extends StatefulWidget {
  const KoreanHeroPage(
      {Key? key,
      required this.immage,
      required this.index,
      required this.description})
      : super(key: key);

  final String immage;
  // ignore: prefer_typing_uninitialized_variables
  final description;
  final int index;

  @override
  State<KoreanHeroPage> createState() => _KoreanHeroPageState();
}

class _KoreanHeroPageState extends State<KoreanHeroPage> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: widget.index,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * .5,
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
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(widget.description,
                  style: const TextStyle(color: Colors.black)),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (count >= 1) {
                            count--;
                          }
                        });
                      },
                      child: const Text('Decrement')),
                  Card(
                    elevation: 20,
                    child: Container(
                      width: 50,
                      color: Colors.white,
                      child: Center(child: Text(count.toString())),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          count++;
                        });
                      },
                      child: const Text('Increment'))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.purple),
                child: const Center(
                  child: Text(
                    'Buy Now',
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
