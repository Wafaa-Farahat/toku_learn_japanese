import 'package:flutter/material.dart';
import 'package:toku_setup/components/item.dart';
import 'package:toku_setup/models/family_members_model.dart';

class FamilyMembersPage extends StatelessWidget {
  FamilyMembersPage({
    super.key,
  });

  final List<FamilyMemberModel> members = const [
    FamilyMemberModel(
      enName: 'father',
      jpName: 'Chichioya',
      image: 'assets/images/family_members/family_father.png',
      sound: 'sounds/family_members/father.wav',
    ),
    FamilyMemberModel(
      enName: 'mother',
      jpName: 'Hahaoya',
      image: 'assets/images/family_members/family_mother.png',
      sound: 'sounds/family_members/mother.wav',
    ),
    FamilyMemberModel(
      enName: 'son',
      jpName: 'Musuko',
      image: 'assets/images/family_members/family_son.png',
      sound: 'sounds/family_members/son.wav',
    ),
    FamilyMemberModel(
      enName: 'daughter',
      jpName: 'Musume',
      image: 'assets/images/family_members/family_daughter.png',
      sound: 'sounds/family_members/daughter.wav',
    ),
    FamilyMemberModel(
      enName: 'grandfather',
      jpName: 'Ojīsan',
      image: 'assets/images/family_members/family_grandfather.png',
      sound: 'sounds/family_members/grand father.wav',
    ),
    FamilyMemberModel(
      enName: 'grandmother',
      jpName: 'Sobo',
      image: 'assets/images/family_members/family_grandmother.png',
      sound: 'sounds/family_members/grand mother.wav',
    ),
    FamilyMemberModel(
      enName: 'older sister',
      jpName: 'Ane',
      image: 'assets/images/family_members/family_older_sister.png',
      sound: 'sounds/family_members/older sister.wav',
    ),
    FamilyMemberModel(
      enName: 'older brother',
      jpName: 'Nīsan',
      image: 'assets/images/family_members/family_older_brother.png',
      sound: 'sounds/family_members/older brother.wav',
    ),
    FamilyMemberModel(
      enName: 'younger sister',
      jpName: 'Imōto',
      image: 'assets/images/family_members/family_younger_sister.png',
      sound: 'sounds/family_members/younger sister.wav',
    ),
    FamilyMemberModel(
      enName: 'younger brother',
      jpName: 'Otōto',
      image: 'assets/images/family_members/family_younger_brother.png',
      sound: 'sounds/family_members/younger brohter.wav',
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
          'Family Members',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: members.length,
        itemBuilder: (context, index) {
          return Container(
            child: Item(
              pageColor: Color(0xff558B37),
              member: members[index],

            ),
            decoration: BoxDecoration(
              border:
                  Border.symmetric(horizontal: BorderSide(color: Colors.white)),
            ),
          );
        },
      ),
    );
  }
}



   
 