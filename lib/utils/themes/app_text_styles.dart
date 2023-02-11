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

  static const SolidInverseButttonTextStyle =
      TextStyle(color: NamedColors.shinyPurple, fontWeight: FontWeight.bold);
  static final detailCardMetaDetaTextStyle = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: NamedColors.codGrey.withOpacity(0.7));

  static const solidButttonTextStyle =
      TextStyle(color: Colors.white, fontWeight: FontWeight.bold);

  static const subHeading = TextStyle(
    color: NamedColors.grey,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static const cautionHeadingTextStyle = TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w600,
      color: NamedColors.shinyPurple);
}
