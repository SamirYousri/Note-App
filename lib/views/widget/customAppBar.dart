// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:note/views/widget/customIcon.dart';

class CustomeAppBar extends StatelessWidget {
  CustomeAppBar(
      {super.key, required this.title, required this.icon1, this.onPressed});
  final String title;
  final IconData icon1;
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 30,
            ),
          ),
          const Spacer(),
          CustomIcon(onPressed: onPressed, icon0: icon1),
        ],
      ),
    );
  }
}
