import 'package:flutter/material.dart';

import '../components/list_item.dart';
import '../model/item_model.dart';

class FamilyMemberScreen extends StatelessWidget {
  const FamilyMemberScreen({Key? key}) : super(key: key);

  final List<ItemModel> familyMember = const [
    ItemModel(
      image: 'assets/images/family_members/family_father.png',
      jpName: 'Otōsan',
      enName: 'father',
      sound: 'sounds/family_members/father.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_mother.png',
      jpName: 'Hahaoya',
      enName: 'mother',
      sound: 'sounds/family_members/mother.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_son.png',
      jpName: 'Musuko',
      enName: 'son',
      sound: 'sounds/family_members/son.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_daughter.png',
      jpName: 'Musume',
      enName: 'daughter',
      sound: 'sounds/family_members/daughter.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_grandfather.png',
      jpName: 'Ojīsan',
      enName: 'grand father',
      sound: 'sounds/family_members/grand_father.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_grandmother.png',
      jpName: 'Sobo',
      enName: 'grand mother',
      sound: 'sounds/family_members/grand_mother.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_older_brother.png',
      jpName: 'Nīsan',
      enName: 'older brother',
      sound: 'sounds/family_members/older_bother.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_older_sister.png',
      jpName: 'Onēsan',
      enName: 'older sister',
      sound: 'sounds/family_members/older_sister.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_younger_brother.png',
      jpName: 'Otōto',
      enName: 'younger brother',
      sound: 'sounds/family_members/younger_brohter.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_younger_sister.png',
      jpName: 'Imōto',
      enName: 'younger sister',
      sound: 'sounds/family_members/younger_sister.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Japanese Family Members',
          style: TextStyle(
            fontFamily: 'Pacifico',
          ),
        ),
        backgroundColor: const Color(0xff084048),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) =>
            ListItem(
              color: const Color(0xff1380a2),
              item: familyMember[index],
            ),
        separatorBuilder: (context,index) =>const Divider(color: Colors.white,height: 2,thickness: 3),
        itemCount: familyMember.length,
      ),
    );

  }
}