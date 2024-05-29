//import 'package:flutter/material.dart';
//import 'package:get/get.dart';
import 'package:news_app/res/consts/consts.dart';
//import 'package:velocity_x/velocity_x.dart';
//import '../controller/profile_controller.dart';

class NavBarButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function()? onPressed;
  final Color? color;
  const NavBarButton(
      {super.key,
      required this.title,
      required this.icon,
      this.onPressed,
      this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        color: Colors.transparent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: color,
            ),
            Text(
              title,
              style: AppStyles.regular(size: 12, color: color),
            ),
          ],
        ),
      ),
    );
  }
}
