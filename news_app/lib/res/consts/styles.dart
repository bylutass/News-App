import 'package:news_app/res/consts/consts.dart';

class AppStyles {
  static TextStyle regular(
      {Color? color,
      String? fontFamily = AppFonts.regular,
      double? size = 14.0,
      FontWeight? fontWeight = FontWeight.normal,}) {
    return TextStyle(
      color: color,
      fontFamily: fontFamily,
      fontSize: size,
      fontWeight: fontWeight,
    );
  }

  static TextStyle semiBold({Color? color, String? fontFamily = AppFonts.semiBold, double? size = 14.0, FontWeight? fontWeight}) {
    return TextStyle(
      color: color,
      fontFamily: fontFamily,
      fontSize: size,
      fontWeight: fontWeight,
    );
  }

  static TextStyle bold({Color? color, String? fontFamily = AppFonts.bold, double? size = 14.0, FontWeight? fontWeight}) {
    return TextStyle(
      color: color,
      fontFamily: fontFamily,
      fontSize: size,
      fontWeight: fontWeight,
    );
  }
}