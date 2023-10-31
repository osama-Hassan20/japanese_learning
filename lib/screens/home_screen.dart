import 'package:flutter/material.dart';
import 'package:japanese_learning/components/components.dart';
import 'package:japanese_learning/screens/colors_screen.dart';
import 'package:japanese_learning/screens/phrasas_screen.dart';

import '../components/home_category.dart';
import 'family_members_screen.dart';
import 'numbers_screen.dart';


class HomeScreen extends StatelessWidget
{
   HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xff0a4d55),
        title: const Text(
          'Learn Japanese',
          style: TextStyle(
            fontFamily: 'Pacifico',
          ),
        ),
      ),
      body: Column(
        children:
        [
           Padding(
             padding: const EdgeInsets.symmetric(vertical: 18),
             child: Image(
               image: NetworkImage('https://img.freepik.com/premium-vector/translator-translation-language-illustration-say-hello-different-countries-multilingual_2175-4450.jpg?w=996'),
              // image: const AssetImage('assets/images/colors/Learn-Japanese.png'),
              width: double.infinity,
              height: size.height*.3,
          ),
           ),

          Category(
            onTap: ()
            {
              navigateTo(context, NumbersScreen());
            },
            text: 'Numbers',
            icon: Icons.numbers,
            color: const Color(0xff1360a2),

          ),
          Category(
            onTap: ()
            {
              navigateTo(context, FamilyMemberScreen());

            },
            text: 'Family Members',
            icon: Icons.people,
            color: const Color(0xff1380a2),//Color(0xff817425),
          ),
          Category(
            onTap: ()
            {
              navigateTo(context, ColorsScreen());

            },
            text: 'Colors',
            icon: Icons.color_lens_outlined,
            color: const Color(0xff1392a2),//Color(0xffFB8500),
          ),
          Category(
            onTap: ()
            {
              navigateTo(context, PhrasesScreen());
            },
            text: 'Phrases',
            color: const Color(0xff17b4c8),//Color(0xffFFB703),
            icon: Icons.message,
          ),
        ],
      ),
    );
  }
}



