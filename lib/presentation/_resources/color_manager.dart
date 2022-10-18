import 'package:flutter/material.dart';

class ColorManager {
  static Color primary = HexColor.fromHex('#074587');
  static Color background = HexColor.fromHex('#e9e9e9');
  static Color primaryDark = HexColor.fromHex('#074587');
  static Color primaryLight = HexColor.fromHex('#074587');
  static Color button = HexColor.fromHex('#5900EB');

  static Color white = HexColor.fromHex('#FFFFFF');
  static Color disabledColor = HexColor.fromHex('#575964');
  static Color grey = HexColor.fromHex('#454849');
  static Color lightGrey = HexColor.fromHex('#bbbbbb');

  static Color primaryText = HexColor.fromHex('#212121');
  static Color hintColor = HexColor.fromHex('#333333');
  static Color largeText = HexColor.fromHex('#222222');
  static Color lightText = HexColor.fromHex('#424242');

  static Color cardBackround = HexColor.fromHex('#F0F0F0');
  static Color errorText = HexColor.fromHex('#C30909');

  static Color appBarBackground = HexColor.fromHex('#e0e0e0');
  static Color titleColor = HexColor.fromHex('#222222');

  static Color topGradient = HexColor.fromHex('#0038F5');
  static Color bottomGradient = HexColor.fromHex('#9F03FF');

  static Color alertColor = HexColor.fromHex('#C30909');

  static Color footerColor = HexColor.fromHex('#141414');


}

extension HexColor on Color {
  static Color fromHex(String hex) {
    String color = hex.replaceAll('#', '');
    if (color.length == 6) {
      color = 'FF$color';
    }

    return Color(int.parse(color, radix: 16));
  }
}
