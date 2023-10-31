import 'package:flutter/material.dart';

class Category extends StatelessWidget
{
  Category({this.text,this.color,this.onTap,this.icon,});
  String? text;
  Color? color;
  VoidCallback? onTap;
  IconData? icon;
  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: const EdgeInsets.only(right: 18,left: 18,top: 18),
      child: MaterialButton(
        onPressed: onTap,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
        ),
        color: color,
        height: 65,
        minWidth: double.infinity,
        child: Row(
          children: [
            Text(
              text!,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                fontFamily: 'Pacifico',
              ),
            ),
            const Spacer(),
            Icon(icon,color: Colors.white,)
          ],
        ),
      ),
    );
  }
}