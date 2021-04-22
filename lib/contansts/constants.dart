import 'package:flutter/material.dart';

const primaryColor = Color(0xFFFFFFFF); //white
const secondaryColor = Color(0xFFFB654D); // orange-pink
const secondaryColor_withOpacity = Color(0x80FB654D); // orange-pink
const tertiaryColor = Color(0xFF0F0F0F); // black
const fourthColor = Color(0xFF689469); // verde
const fourthColor_withOpacity = Color(0x80689469); // verde opacity
const fifthColor = Color(0xFFc4c4c4); // gris

const horizontalPadding = 0.07;
const double customToolbarheight = 55;

double realScreenHeight(BuildContext context, height) {
  return height -
      (MediaQuery.of(context).padding.top +
          kToolbarHeight +
          kBottomNavigationBarHeight);
}
