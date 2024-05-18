import 'package:flutter/material.dart';

//custom widget
class Category extends StatelessWidget {
  const Category({super.key, this.color, this.text, this.onTap});

  final String? text;
  final Color? color;
  //Function()? onTap;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 24),
        alignment: Alignment.centerLeft,
        height: 65,
        width: double.infinity,
        color: color!,
        child: Text(
          text!,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
