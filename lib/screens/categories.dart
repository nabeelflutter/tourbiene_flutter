import 'package:flutter/material.dart';
import 'package:tourbiene/screens/drawer/global_drawer/global_drawer.dart';
import 'package:tourbiene/screens/drawer/search_page.dart';

class Catrgories extends StatelessWidget {
  static const String pageName = 'Catrgories';
  const Catrgories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: GlobalDrawer(),
        appBar: AppBar(
          title: const Text(
            'Catrgories',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 240, 245, 240),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, SearchPage.pageName);
                    },
                    child: const Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                  )),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 240, 245, 240),
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.black,
                  )),
            ),
          ],
          iconTheme: const IconThemeData(color: Colors.white),
          elevation: 0,
          backgroundColor: Colors.purple,
        ),
        body: GridView.builder(
          itemCount: 7,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,

            // crossAxisSpacing: 3,
          ),
          itemBuilder: (context, index) {
            return Column(
              children: [
                Expanded(
                  flex: 80,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRN6jZ6z_lngV8BxPmqtg9JNSRfNiyZlkztA&usqp=CAU',
                            fit: BoxFit.cover)),
                  ),
                ),
                const Expanded(
                  flex: 20,
                  child: Center(child: Text('SS')),
                ),
                const Divider(
                  color: Colors.grey,
                  thickness: 1,
                )
              ],
            );
          },
        ));
  }
}
