import 'package:flutter/material.dart';
import 'package:toku_setup/components/item.dart';
import 'package:toku_setup/models/number_model.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<NumberModel> numbersOfList = const [
    NumberModel(
      image: 'assets/images/numbers/number_one.png',
      jpName: 'ichi',
      enName: 'one',
      sound: 'sounds/numbers/number_one_sound.mp3',
    ),
    NumberModel(
      image: 'assets/images/numbers/number_two.png',
      jpName: 'ni',
      enName: 'two',
      sound: 'sounds/numbers/number_two_sound.mp3',
    ),
    NumberModel(
      image: 'assets/images/numbers/number_three.png',
      jpName: 'san',
      enName: 'three',
      sound: 'sounds/numbers/number_three_sound.mp3',
    ),
    // Add sound paths for numbers 4 through 10 accordingly
    // Remember to replace 'number_four_sound.mp3', 'number_five_sound.mp3', ... with the correct paths
    NumberModel(
      image: 'assets/images/numbers/number_four.png',
      jpName: 'Shi',
      enName: 'four',
      sound: 'sounds/numbers/number_four_sound.mp3',
    ),
    NumberModel(
      image: 'assets/images/numbers/number_five.png',
      jpName: 'go',
      enName: 'five',
      sound: 'sounds/numbers/number_five_sound.mp3',
    ),
    NumberModel(
      image: 'assets/images/numbers/number_six.png',
      jpName: 'roku',
      enName: 'six',
      sound: 'sounds/numbers/number_six_sound.mp3',
    ),
    NumberModel(
      image: 'assets/images/numbers/number_seven.png',
      jpName: 'Sebun',
      enName: 'seven',
      sound: 'sounds/numbers/number_seven_sound.mp3',
    ),
    NumberModel(
      image: 'assets/images/numbers/number_eight.png',
      jpName: 'hachi',
      enName: 'eight',
      sound: 'sounds/numbers/number_eight_sound.mp3',
    ),
    NumberModel(
      image: 'assets/images/numbers/number_nine.png',
      jpName: 'kyu',
      enName: 'nine',
      sound: 'sounds/numbers/number_nine_sound.mp3',
    ),
    NumberModel(
      image: 'assets/images/numbers/number_ten.png',
      jpName: 'ju',
      enName: 'ten',
      sound: 'sounds/numbers/number_ten_sound.mp3',
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
          'Numbers',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: numbersOfList.length,
        itemBuilder: (context, index) {
          return Container(
            child: Item(
              pageColor: const Color(0xffEF9235),
              number: numbersOfList[index],
            ),
            decoration: BoxDecoration(
              border:
                  Border.symmetric(horizontal: BorderSide(color: Colors.white)),
            ),
          );
        },

        //  getList(numbersOfList),
        // [
        //   // Item(number: numbersOfList[0]),
        //   // Item(number: numbersOfList[1]),
        //   // Item(number: numbersOfList[2]),
        //   // Item(number: numbersOfList[3]),
        //   // Item(number: numbersOfList[4]),
        //   // Item(number: numbersOfList[5]),
        //   // Item(number: numbersOfList[6]),
        //   //  Item(number: numbersOfList[7]),
        //   // Item(number: numbersOfList[8]),
        //   // Item(number: numbersOfList[9]),
        // ],
      ),
    );
  }

  // List<Widget> getList(List<Number> numbers) {
  //   List<Widget> itemList = [];

  //   for (int i = 0; i < numbers.length; i++) {
  //     itemList.add(Item(number: numbers[i]));

  //   }
  //    return itemList;
  // }
}
