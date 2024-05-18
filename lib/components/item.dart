import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_setup/models/colors_model.dart';

import 'package:toku_setup/models/number_model.dart';
import 'package:toku_setup/models/phrases_model.dart';

import '../models/family_members_model.dart';

// import 'package:toku_setup/models/number.dart';
// import 'package:toku_setup/screens/numbers_page.dart';
class Item extends StatelessWidget {
  const Item({
    this.colors,
    this.member,
    this.phrase,
    super.key,
    this.number,
    required this.pageColor,
  });
  final NumberModel? number;
  final FamilyMemberModel? member;
  final ColorsModel? colors;
  final PhraseModel? phrase;
  final Color pageColor;
  
 
 @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: pageColor,
      child: Row(
        children: [
          if (number?.image != null || member?.image != null || colors?.image != null)
            Container(
              color: const Color(0xffFEF6DB),
              child: Image.asset(
                number?.image ?? member?.image ?? colors?.image ?? 'null',
              ),
            ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  
                  number?.enName ?? member?.enName ?? colors?.enName ?? phrase?.enPhrase ?? 'null',
                  style: const TextStyle(

                    fontSize: 18,
                    color: Colors.white,
                  ),
                  textAlign:TextAlign.start ,
                ),
                Text(
                    
                  number?.jpName ?? member?.jpName ?? colors?.jpName ?? phrase?.jpPhrase ?? 'null',
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(
                  AssetSource(
                    number?.sound ?? member?.sound ?? colors?.sound ?? phrase?.sound ?? 'null',
                  ),
                );
              },
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 28,
              ),
            ),
          )
        ],
      ),
    );
  }
}

