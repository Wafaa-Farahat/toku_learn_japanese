import 'package:flutter/material.dart';
import 'package:toku_setup/components/item.dart';

import 'package:toku_setup/models/phrases_model.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  // final List<PhraseModel> phrases = const [
  //  PhraseModel(enPhrase: 'are you coming', jpPhrase: 'Kimasu ka', sound:''),
  //   PhraseModel(enPhrase: 'don \'t forget to subscribe ' , jpPhrase: 'Kōdoku suru koto o wasurenaide kudasai', sound: ''),
  //   PhraseModel(enPhrase: 'how are you feeling', jpPhrase: 'Go kibun wa ikagadesu ka.', sound: ''),
  //   PhraseModel(enPhrase: 'I love anime', jpPhrase: 'Watashi wa anime ga daisukidesu', sound: ''),
  //   PhraseModel(enPhrase: 'I love programming', jpPhrase: 'Puroguramingu ga daisukidesu', sound: ''),
  //   PhraseModel(enPhrase: ' programming is easy', jpPhrase: 'Puroguramingu wa kantandesu', sound: ''),
  //   PhraseModel(enPhrase: 'what\'s your name', jpPhrase: 'Anata no namae wa nandesuka', sound: ''),
  //   PhraseModel(enPhrase: 'where are you going', jpPhrase: 'Doko ni iku no', sound: ''),
  //   PhraseModel(enPhrase: 'yes I\'m coming', jpPhrase: 'Hai, ikimasu', sound: 'sounds/phrases/yes_im_coming.wav'),


  //  ];
  final List<PhraseModel> phrases = const [
    PhraseModel(
      enPhrase: 'are you coming',
      jpPhrase: 'Kimasu ka',
      sound: 'sounds/phrases/are_you_coming.wav',
    ),
    PhraseModel(
      enPhrase: 'don\'t forget to subscribe',
      jpPhrase: 'Kōdoku suru koto o wasurenaide kudasai',
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
    ),
    PhraseModel(
      enPhrase: 'how are you feeling',
      jpPhrase: 'Go kibun wa ikagadesu ka.',
      sound: 'sounds/phrases/how_are_you_feeling.wav',
    ),
    PhraseModel(
      enPhrase: 'I love anime',
      jpPhrase: 'Watashi wa anime ga daisukidesu',
      sound: 'sounds/phrases/i_love_anime.wav',
    ),
    PhraseModel(
      enPhrase: 'I love programming',
      jpPhrase: 'Puroguramingu ga daisukidesu',
      sound: 'sounds/phrases/i_love_programming.wav',
    ),
    PhraseModel(
      enPhrase: 'programming is easy',
      jpPhrase: 'Puroguramingu wa kantandesu',
      sound: 'sounds/phrases/programming_is_easy.wav',
    ),
    PhraseModel(
      enPhrase: 'what\'s your name',
      jpPhrase: 'Anata no namae wa nandesuka',
      sound: 'sounds/phrases/what_is_your_name.wav',
    ),
    PhraseModel(
      enPhrase: 'where are you going',
      jpPhrase: 'Doko ni iku no',
      sound: 'sounds/phrases/where_are_you_going.wav',
    ),
    PhraseModel(
      enPhrase: 'yes I\'m coming',
      jpPhrase: 'Hai, ikimasu',
      sound: 'sounds/phrases/yes_im_coming.wav',
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
            'Phrases',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: const Color(0xff46322B),
        ),
        body: ListView.builder(
          itemCount: phrases.length,
          itemBuilder: (context, index) {
            return Container(
              
              child: Item(
                
                phrase: phrases[index],
                pageColor: const Color(0xff50ADC7),
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
