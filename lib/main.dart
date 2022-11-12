import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: profile(),
    debugShowCheckedModeBanner: false,
  ));
}

class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          "profile",
          textAlign: TextAlign.center,
        )),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: 500,
              height: 500,
            ),
            Positioned(
              child: Container(
                  height: 250,
                  width: 800,
                  child: const Image(
                    image: AssetImage("assets/images/bg.jpg"),
                    fit: BoxFit.fill,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Center(
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(100),
                      image: const DecorationImage(
                          image: AssetImage("assets/images/srk.jpeg"),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
            Positioned(
              top: 220,
              left: 100,
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  color: Colors.red,
                  border: Border.all(color: Colors.red),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: const Icon(
                  Icons.message,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              right: 100,
              top: 220,
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(
                    color: Colors.blue,
                  ),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 350),
              child: Center(
                child: Container(
                  child: const Text(
                    "Shah Rukh Khan",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 390),
              child: Center(
                child: Container(
                  child: const Text(
                    "Actor/SuperStar",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
