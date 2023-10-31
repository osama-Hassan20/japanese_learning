import 'package:flutter/material.dart';

import '../components/list_item.dart';
import '../model/item_model.dart';

class ColorsScreen extends StatelessWidget {
  const ColorsScreen({Key? key}) : super(key: key);

  final List<ItemModel> numbers = const [
    ItemModel(
      sound: 'sounds/colors/black.wav',
      jpName: 'Burakku',
      enName: 'black',
      image: 'assets/images/colors/color_black.png',
    ),
    ItemModel(
      sound: 'sounds/colors/brown.wav',
      jpName: 'Chairo',
      enName: 'brown',
      image: 'assets/images/colors/color_brown.png',
    ),
    ItemModel(
      sound: 'sounds/colors/dusty_yellow.wav',
      jpName: 'Hokori ppoi kiiro',
      enName: 'dusty yellow',
      image: 'assets/images/colors/color_dusty_yellow.png',
    ),
    ItemModel(
      sound: 'sounds/colors/gray.wav',
      jpName: 'Gurē',
      enName: 'gray',
      image: 'assets/images/colors/color_gray.png',
    ),
    ItemModel(
      sound: 'sounds/colors/green.wav',
      jpName: 'Midori',
      enName: 'green',
      image: 'assets/images/colors/color_green.png',
    ),
    ItemModel(
      sound: 'sounds/colors/red.wav',
      jpName: 'Aka',
      enName: 'red',
      image: 'assets/images/colors/color_red.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Japanese Colors',
          style: TextStyle(
            fontFamily: 'Pacifico',
          ),
        ),
        backgroundColor: const Color(0xff084048),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) =>
            ListItem(
              color: const Color(0xff1392a2),
              item: numbers[index],
            ),
        separatorBuilder: (context,index) =>const Divider(color: Colors.white,height: 2,thickness: 3),
        itemCount: numbers.length,
      ),
    );

  }
}