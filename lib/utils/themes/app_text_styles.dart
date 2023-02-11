import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'named_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static TextStyle appBarTitle = GoogleFonts.roboto(
    fontWeight: FontWeight.w900,
    color: NamedColors.twitterBlue,
  );

  static TextStyle tabBarLabel = GoogleFonts.roboto(
      fontWeight: FontWeight.bold, color: NamedColors.twitterBlack);

  static TextStyle userNameStyle = GoogleFonts.roboto(
      color: NamedColors.twitterBlack,
      fontSize: 16,
      fontWeight: FontWeight.bold);

  static const heading = TextStyle(
    color: Color.fromARGB(255, 93, 52, 168),
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );
}
