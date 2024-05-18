import 'package:flutter/material.dart';
import 'package:toku_setup/components/item.dart';
import 'package:toku_setup/models/colors_model.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  final List<ColorsModel> colors = const [
    ColorsModel(
      image: 'assets/images/colors/color_black.png',
      enName: 'black',
      jpName: 'Burakku', // Pronounce: Koo-roh
      sound: 'sounds/colors/black.wav',
    ),
    ColorsModel(
      image: 'assets/images/colors/color_brown.png',
      enName: 'brown',
      jpName: 'Chairo', // Pronounce: Chai-roh
      sound: 'sounds/colors/brown.wav',
    ),
    ColorsModel(
      image: 'assets/images/colors/color_dusty_yellow.png',
      enName: 'dusty yellow',
      jpName: 'Kasunda kiiro', // Pronounce: Kah-soon-dah kee-ee-roh
      sound: 'sounds/colors/dusty yellow.wav',
    ),
    ColorsModel(
      image: 'assets/images/colors/color_gray.png',
      enName: 'grey',
      jpName: 'Gurē', // Pronounce: Ha-ee-roh
      sound: 'sounds/colors/gray.wav',
    ),
    ColorsModel(
      image: 'assets/images/colors/color_green.png',
      enName: 'green',
      jpName: 'Midori', // Pronounce: Mee-doh-ree
      sound: 'sounds/colors/green.wav',
    ),
    ColorsModel(
      image: 'assets/images/colors/color_red.png',
      enName: 'red',
      jpName: 'Aka', // Pronounce: Ah-kah
      sound: 'sounds/colors/red.wav',
    ),
    ColorsModel(
      image: 'assets/images/colors/color_white.png',
      enName: 'white',
      jpName: 'Shiro', // Pronounce: Shee-roh
      sound: 'sounds/colors/white.wav',
    ),
    ColorsModel(
      image: 'assets/images/colors/yellow.png',
      enName: 'yellow',
      jpName: 'Kiiro', // Pronounce: Kee-ee-roh
      sound: 'sounds/colors/yellow.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
           appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          title: const Text(
            'Colors',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: const Color(0xff46322B),
        ),
   
        body: ListView.builder(
          itemCount: colors.length,
          itemBuilder: (context, index) {
           return Container(
             child: Item(
                colors: colors[index],
                pageColor: const Color(0xff79359F),
              ),
              decoration: BoxDecoration(
                border: Border.symmetric(
                    horizontal: BorderSide(color: Colors.white)),
              ),
           );
          },
        ));
  }
}
