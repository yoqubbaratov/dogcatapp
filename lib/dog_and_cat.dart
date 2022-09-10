import 'package:dog_and_cat/DOG/pages/main_page.dart';
import 'package:flutter/material.dart';

// enum  Options {CAT,DOG}

class III {
  static  bool? isCD;
}

class DogsAndCats extends StatefulWidget {
  const DogsAndCats({Key? key}) : super(key: key);

  @override
  State<DogsAndCats> createState() => _DogsAndCatsState();
}

class _DogsAndCatsState extends State<DogsAndCats> {
  void onDogPage() {
    setState(() {
      III.isCD=false;
    });
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const MainPage()));
  }

  void onCatPage() {
    setState(() {
      III.isCD = true;
    });
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const MainPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Sizga qaysi biri yoqadi?",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            Expanded(
              child: GestureDetector(
                onTap: onDogPage,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5), //color of shadow
                        spreadRadius: 5, //spread radius
                        blurRadius: 7, // blur radius
                        offset: const Offset(2, 4),
                      ),
                    ],
                    color: Colors.red,
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    image: const DecorationImage(
                      image: AssetImage(
                        "assets/images/dog.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Expanded(
              child: GestureDetector(
                onTap: onCatPage,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5), //color of shadow
                        spreadRadius: 5, //spread radius
                        blurRadius: 7, // blur radius
                        offset: const Offset(2, 4),
                      ),
                    ],
                    color: Colors.red,
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    image: const DecorationImage(
                      image: AssetImage(
                        "assets/images/cat.png",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
