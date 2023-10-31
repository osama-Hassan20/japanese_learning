import 'package:flutter/material.dart';

import '../model/item_model.dart';
import 'item_info.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    Key? key,
    required this.item,
    required this.color,
  }) : super(key: key);
  final ItemModel item;

  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),

      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
              color: const Color(0xff1392a2), child: Image.asset(item.image!)),
          Expanded(child: ItemInfo(item: item)),
        ],
      ),
    );
  }
}