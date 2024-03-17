// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  CustomIcon({super.key, required this.icon0, this.onPressed});
  final IconData icon0;
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.grey.withOpacity(.05),
        ),
        child: IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon0,
            size: 30,
          ),
        ));
  }
}
