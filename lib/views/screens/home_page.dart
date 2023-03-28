import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> turnAnimation;

  List<Map<String, dynamic>> myList = [
    {
      'title': 'Mercury',
      'image': 'assets/images/mercury.png',
    },
    {
      'title': 'Venus',
      'image': 'assets/images/venus.png',
    },
    {
      'title': 'Earth',
      'image': 'assets/images/earth.png',
    },
    {
      'title': 'Mars',
      'image': 'assets/images/mars.png',
    },
    {
      'title': 'Jupiter',
      'image': 'assets/images/jupiter.png',
    },
    {
      'title': 'Saturn',
      'image': 'assets/images/saturn.png',
    },
    {
      'title': 'Uranus',
      'image': 'assets/images/uranus.png',
    },
    {
      'title': 'Neptune',
      'image': 'assets/images/n.png',
    },
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 50),
    );

    turnAnimation = Tween<double>(begin: 0, end: 2 * pi).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.easeInOut,
      ),
    );
    animationController.repeat();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Galaxy Planets",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: myList
              .map(
                (e) => GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(e['title']);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white.withOpacity(0.3),
                    ),
                    child: Row(
                      children: [
                        RotationTransition(
                          turns: turnAnimation,
                          child: Image.asset(
                            e['image'],
                            width: 150,
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          e['title'],
                          style: GoogleFonts.openSans(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 5.0,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
