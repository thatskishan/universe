import 'package:flutter/material.dart';
import 'package:universe/views/screens/details_page.dart';
import 'package:universe/views/screens/home_page.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
        'Mercury': (context) => const Details(
              title: 'Mercury',
              imagePath: 'assets/images/mercury.png',
              details1:
                  'Mercury is the smallest planet in the Solar System and the closest to the Sun. Its orbit around the Sun takes 87.97 Earth days, the shortest of all the Suns planets. It is named after the Roman god Mercurius (Mercury), god of commerce, messenger of the gods, and mediator between gods and mortals.',
            ),
        'Venus': (context) => const Details(
              imagePath: 'assets/images/venus.png',
              details1:
                  'Venus is the second planet from the Sun. It is sometimes called Earths "sister" or "twin" planet as it is almost as large and has a similar composition. As an interior planet to Earth, Venus (like Mercury) appears in Earths sky never far from the Sun, either as morning star or evening star.',
              title: 'Venus',
            ),
        'Earth': (context) => const Details(
              imagePath: 'assets/images/earth.png',
              details1:
                  'Earth is the third planet from the Sun and the only place known in the universe where life has originated and found habitability. While Earth may not contain the largest volumes of water in the Solar System, only Earth sustains liquid surface water, extending over 70.8% of the Earth.',
              title: 'Earth',
            ),
        'Mars': (context) => const Details(
              imagePath: 'assets/images/mars.png',
              details1:
                  'Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System, larger only than Mercury. In the English language, Mars is named for the Roman god of war. Mars is a terrestrial planet with a thin atmosphere and has a crust primarily composed of elements similar to Earths crust, as well as a core made of iron and nickel.',
              title: 'Mars',
            ),
        'Jupiter': (context) => const Details(
              imagePath: 'assets/images/Jupiter.png',
              details1:
                  'Jupiter is the fifth planet from the Sun and the largest in the Solar System. It is a gas giant with a mass more than two and a half times that of all the other planets in the Solar System combined, and slightly less than one one-thousandth the mass of the Sun.',
              title: 'Jupiter',
            ),
        'Saturn': (context) => const Details(
              imagePath: 'assets/images/saturn.png',
              details1:
                  'Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter. It is a gas giant with an average radius of about nine and a half times that of Earth.[23][24] It has only one-eighth the average density of Earth, but is over 95 times more massive.',
              title: 'Saturn',
            ),
        'Uranus': (context) => const Details(
              imagePath: 'assets/images/Uranus.png',
              details1:
                  'Uranus is the seventh planet from the Sun. It is named after Greek sky deity Uranus (Caelus), who in Greek mythology is the father of Cronus (Saturn), a grandfather of Zeus (Jupiter) and great-grandfather of Ares (Mars). Uranus has the third-largest planetary radius and fourth-largest planetary mass in the Solar System.',
              title: 'Uranus',
            ),
        'Neptune': (context) => const Details(
              imagePath: 'assets/images/neptune.png',
              details1:
                  'Neptune is the eighth planet from the Sun and the farthest known planet in the Solar System. It is the fourth-largest planet in the Solar System by diameter, the third-most-massive planet, and the densest giant planet. It is 17 times the mass of Earth, and slightly more massive than its near-twin Uranus.',
              title: 'Neptune',
            ),
      },
    ),
  );
}
