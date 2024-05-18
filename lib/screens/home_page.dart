import 'package:flutter/material.dart';
import 'package:toku_setup/components/category_item.dart';
import 'package:toku_setup/screens/colors_page.dart';
import 'package:toku_setup/screens/family_members_page.dart';
import 'package:toku_setup/screens/numbers_page.dart';
import 'package:toku_setup/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff46322B),
          title: const Text(
            'Toku',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: const Color(0xffFEF6DB),
        body: Column(
          children: [
            //1
            //custom widget
            Category(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const NumbersPage();
                  }),
                );
              },
              text: 'Numbers',
              color: const Color(0xffEF9235),
            ),

            //2
            //custom widget
            Category(
              text: 'FamilyMembers',
              color: Color(0xff558B37),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return FamilyMembersPage();
                    },
                  ),
                );
              },
            ),

            //3
            //custom widget
            Category(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const ColorsPage();
                    },
                  ),
                );
              },
              text: 'Colors',
              color: const Color(0xff79359F),
            ),

            //4
            //custom widget
            Category(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const PhrasesPage();
                    },
                  ),
                );
              },
              text: 'Phrases',
              color: const Color(0xff50ADC7),
            ),
          ],
        ),
      ),
    );
  }
}
