import 'dart:math';

import 'package:flutter/material.dart';

//primary
const Color backgroundColor = Color(0xFFFAFAFA);
const Color background = Color.fromRGBO(246, 246, 246, 1);
const Color backgroundColor2 = Color(0xFFF6F6F6);
const Color backgroundColor3 = Color(0xFFF2F2F2);
const Color backgroundWhite = Color(0xFFFFFFFF);
const Color black = Color(0xFF1E1F20);
const Color goGreen = Color(0xFF0EAD69);
const Color grayBlue = Color(0xFF9393AA);
const Color border = Color(0xFFE0E0E0);
const Color dodgerBlue = Color(0xFF1DA1F2);
const Color blue800 = Color(0xFF1E40AF);
const Color blueCrayola = Color(0xFF2574FF);
const Color orange = Color(0xFFFE9870);
const Color tiffanyBlue = Color(0xFF12B2B3);
const Color yellow500 = Color(0xFFEAB308);
const Color color2 = Color(0xFF56E0E0);
const Color color3 = Color(0xFF38F399);
const Color color4 = Color(0xFF004080);
const Color color5 = Color(0xFF20A085);
const Color neonFuchsia = Color(0xFFFA4169);
const Color isabelline = Color(0xFFF0F0F0);
const Color mediumTurquoise = Color(0xFF53D0EC);
const Color blue100 = Color.fromRGBO(219, 234, 254, 1);
const Color bdazzledBlue = Color(0xFF3B5998);
const Color malachite = Color(0xFF00D65B);
const Color greenDeep = Color.fromRGBO(33, 202, 117, 1);
const Color blueDocument = Color.fromRGBO(32, 140, 233, 1);
const Color blueLight = Color.fromRGBO(29, 161, 242, 1);
const Color yellow100 = Color.fromRGBO(254, 249, 195, 1);
const Color yellow800 = Color.fromRGBO(133, 77, 14, 1);
const Color redLight = Color.fromRGBO(250, 65, 105, 1);
const Color redDeep = Color.fromRGBO(200, 38, 38, 1);
const Color purpleDeep = Color.fromRGBO(79, 70, 229, 1);
const Color bg = Color.fromRGBO(250, 250, 250, 1);
const Color checklist = Color.fromRGBO(222, 232, 243, 1);
const Color slate = Color.fromRGBO(71, 85, 105, 1);
const Color slateSecondary = Color.fromRGBO(100, 116, 139, 1);
const Color green600 = Color.fromRGBO(22, 136, 74, 1);
const Color yellow600 = Color.fromRGBO(202, 138, 4, 1);
const Color yellow400 = Color.fromRGBO(250, 204, 21, 1);

LinearGradient linear = LinearGradient(
  colors: [tiffanyBlue.withOpacity(0.8), color2],
  // begin: FractionalOffset.bottomLeft,
  // end: FractionalOffset.topRight,
  begin: const Alignment(0.71, 0.71),
  end: const Alignment(-0.71, -0.71),
);

LinearGradient linear2 = const LinearGradient(
  colors: [tiffanyBlue, malachite],
  begin: FractionalOffset.bottomLeft,
  end: FractionalOffset.topRight,
);
LinearGradient linear3 = LinearGradient(
  colors: [
    HexColor.fromHex('FA4169'),
    HexColor.fromHex('FA4169'),
  ],
  begin: FractionalOffset.bottomLeft,
  end: FractionalOffset.topRight,
);

final List<Color> groupBackgroundColors = [
  HexColor.fromHex('BCF2C7'),
  HexColor.fromHex('8D96FF'),
  HexColor.fromHex('A5F69C'),
  HexColor.fromHex('FCA3FF')
];
//Grey shade
const Color grey1100 = Color(0xFF1F2933);
const Color grey1000 = Color(0xFF323F4B);
const Color grey900 = Color(0xFF3E4C59);
const Color grey800 = Color(0xFF52606D);
const Color grey700 = Color(0xFF616E7C);
const Color grey600 = Color(0xFF7B8794);
const Color grey500 = Color(0xFF9AA5B1);
const Color grey400 = Color(0xFFCBD2D9);
const Color grey300 = Color(0xFFE4E7EB);
const Color grey200 = Color(0xFFF5F7FA);
const Color grey100 = Color(0xFFFFFFFF);

extension CustomColorTheme on ThemeData {
  //text
  Color get color1 => brightness == Brightness.light ? grey700 : grey500;
  Color get color2 => brightness == Brightness.light ? grey800 : grey400;
  Color get color3 => brightness == Brightness.light ? grey900 : grey300;
  Color get color4 => brightness == Brightness.light ? grey1000 : grey200;
  Color get color5 => brightness == Brightness.light ? grey1100 : grey100;
  Color get color6 => brightness == Brightness.light ? grey100 : grey1100;
  Color get color7 => brightness == Brightness.light ? grey200 : grey1000;
  Color get color8 => brightness == Brightness.light ? grey300 : grey900;
  Color get color9 => brightness == Brightness.light ? grey400 : grey800;
  Color get color10 => brightness == Brightness.light ? grey500 : grey700;
  Color get color11 => brightness == Brightness.light ? black : grey100;
  Color get color12 => brightness == Brightness.light ? grey100 : black;

  //google map
  RadialGradient get colorGoogle => brightness == Brightness.light
      ? const RadialGradient(
          colors: [
            Color.fromRGBO(255, 255, 255, 0.0001),
            Color.fromRGBO(255, 255, 255, 0.2),
            Color.fromRGBO(255, 255, 255, 0.3),
            Color.fromRGBO(255, 255, 255, 0.4),
            Color.fromRGBO(255, 255, 255, 1),
          ],
        )
      : const RadialGradient(
          colors: [
            Color.fromRGBO(31, 41, 51, 0.0001),
            Color.fromRGBO(31, 41, 51, 0.2),
            Color.fromRGBO(31, 41, 51, 0.3),
            Color.fromRGBO(31, 41, 51, 0.4),
            Color.fromRGBO(31, 41, 51, 1),
          ],
        );
}

Color hexToColor(String code) {
  return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}

// List<Color> generateColors(int count) {
//   List<Color> colors = [];

//   for (int i = 0; i < count; i++) {
//     double hue = (i * 360 / count) % 1160;
//     Color color = HSVColor.fromAHSV(1.0, hue, 1, 1).toColor();
//     colors.add(color);
//   }
//   return colors;
// }

Color generateColor() {
  final Random random = Random();
  const int maxRGBValue = 255;
  Color color;

  do {
    color = Color.fromARGB(
      255,
      random.nextInt(maxRGBValue + 1),
      random.nextInt(maxRGBValue + 1),
      random.nextInt(maxRGBValue + 1),
    );
  } while (isBrightAndVivid(color)); // Kiểm tra nếu màu chói mắt

  return color;
}

bool isBrightAndVivid(Color color) {
  // Kiểm tra xem màu có chói mắt hay không
  const double luminanceThreshold = 0.2; // Ngưỡng độ sáng
  const double saturationThreshold = 0.5; // Ngưỡng độ bão hòa

  final HSLColor hslColor = HSLColor.fromColor(color);
  final double luminance = hslColor.lightness;
  final double saturation = hslColor.saturation;

  return luminance > luminanceThreshold && saturation > saturationThreshold;
}

List<Color> generateColors(int count) {
  List<Color> colors = [];

  while (colors.length < count) {
    final Color color = generateColor();
    colors.add(color);
  }

  return colors;
}

// class HexColor extends Color {
//   HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

//   static int _getColorFromHex(String hexColor) {
//     hexColor = hexColor.toUpperCase().replaceAll('#', '');
//     if (hexColor.length == 6) {
//       hexColor = 'FF$hexColor';
//     }
//     return int.parse(hexColor, radix: 16);
//   }
// }

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}
