import 'package:flutter/material.dart';

class NoConnectionPage extends StatelessWidget {
  const NoConnectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    color: Colors.amber,
                    height: height * .4,
                    width: width * .4,
                    child: const Image(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/disconnect.gif')),
                  ),
                ),
              ),
              const Center(
                child: Text(
                  'No Internet! Please Try Again ',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w400),
                ),
              )
            ],
          )),
    );
  }
}
