import 'package:flutter/material.dart';

import '../components/item_info.dart';
import '../components/list_item.dart';
import '../components/phrases_items.dart';
import '../model/item_model.dart';

class PhrasesScreen extends StatelessWidget {
  const PhrasesScreen({Key? key}) : super(key: key);

  final List<ItemModel> phrasesList = const [
    ItemModel(
      jpName: 'Kimasu ka',
      enName: 'are you coming',
      sound: 'sounds/phrases/are_you_coming.wav',
    ),
    ItemModel(
      jpName: 'Kōdoku suru koto o wasurenaide kudasai',
      enName: 'Don\'t forget to subscribe',
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
    ),
    ItemModel(
      jpName: 'Go kibun wa ikagadesu ka',
      enName: 'how are you feeling',
      sound: 'sounds/phrases/how_are_you_feeling.wav',
    ),
    ItemModel(
      jpName: 'Watashi wa anime ga daisukidesu',
      enName: 'I love anime',
      sound: 'sounds/phrases/i_love_anime.wav',
    ),
    ItemModel(
      jpName: 'Watashi wa puroguramingu ga daisukidesu',
      enName: 'I love programming',
      sound: 'sounds/phrases/i_love_programming.wav',
    ),
    ItemModel(
      jpName: 'Puroguramingu wa kantandesu',
      enName: 'programming is easy',
      sound: 'sounds/phrases/programming_is_easy.wav',
    ),
    ItemModel(
      jpName: 'Namae wa nandesu ka',
      enName: 'what is your name',
      sound: 'sounds/phrases/what_is_your_name.wav',
    ),
    ItemModel(
      jpName: 'Doko ni iku no',
      enName: 'where are you going',
      sound: 'sounds/phrases/where_are_you_going.wav',
    ),
    ItemModel(
      jpName: 'Hai, ikimasu',
      enName: 'yes, I\'m coming',
      sound: 'sounds/phrases/yes_im_coming.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Japanese Phrases',
          style: TextStyle(
            fontFamily: 'Pacifico',
          ),
        ),
        backgroundColor: const Color(0xff17b4c8),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) =>
            PhrasesItem(
              color: const Color(0xff1392a2),
              item: phrasesList[index],
            ),
        separatorBuilder: (context,index) =>const Divider(color: Colors.white,height: 2,thickness: 3),
        itemCount: phrasesList.length,
      ),
    );

  }
}