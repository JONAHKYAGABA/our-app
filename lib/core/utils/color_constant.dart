import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray51 = fromHex('#f8f8f8');

  static Color gray90033 = fromHex('#332a2a2a');

  static Color redA40026 = fromHex('#26ff1e54');

  static Color bluegray90020 = fromHex('#192e2e2e');

  static Color gray50 = fromHex('#fff8f8');

  static Color gray80020 = fromHex('#19404040');

  static Color black900 = fromHex('#000000');

  static Color gray70019 = fromHex('#19646464');

  static Color redA400 = fromHex('#ff2156');

  static Color gray8003f = fromHex('#3f4c4c4c');

  static Color bluegray9007f = fromHex('#7f263238');

  static Color gray600 = fromHex('#7e7e7e');

  static Color gray700 = fromHex('#595959');

  static Color gray601 = fromHex('#7c7c7c');

  static Color gray301 = fromHex('#e0e0e0');

  static Color gray400 = fromHex('#b1b1b1');

  static Color gray7001e = fromHex('#1e565656');

  static Color gray401 = fromHex('#c8c8c8');

  static Color gray80019 = fromHex('#19414141');

  static Color bluegray90011 = fromHex('#11313131');

  static Color gray80016 = fromHex('#16404040');

  static Color bluegray100 = fromHex('#d5d5d5');

  static Color gray101 = fromHex('#f2f2f2');

  static Color gray200 = fromHex('#e8e8e8');

  static Color gray80033 = fromHex('#33404040');

  static Color bluegray70026 = fromHex('#26525252');

  static Color gray300 = fromHex('#e2e2e2');

  static Color gray100 = fromHex('#f5f5f5');

  static Color bluegray900 = fromHex('#26292e');

  static Color bluegray800 = fromHex('#394250');

  static Color bluegray400 = fromHex('#888888');

  static Color bluegray101 = fromHex('#cdcdcd');

  static Color gray8000c = fromHex('#0c424242');

  static Color redA4000c = fromHex('#0cff2055');

  static Color bluegray90019 = fromHex('#192b2b2b');

  static Color whiteA700 = fromHex('#ffffff');

  static Color bluegray901 = fromHex('#272a2f');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
