import 'package:flutter/material.dart';

class ColorsApp {
  static ColorsApp? _instance;
  // Avoid self isntance
  ColorsApp._();
  static ColorsApp get i {
    _instance ??= ColorsApp._();
    return _instance!;
  }

  Color get primary => const Color(0xFFe2f2f7);
  Color get secondary => const Color(0xFF92b43f);
  Color get tertiary => const Color(0xFFcd9f5a);
  Color get quartuario => const Color(0xFFff1616);
  Color get sextuary => const Color(0xFFd9d9d9);
  Color get blackfull => const Color(0xFF000000);
}

extension ColorsAppExtensions on BuildContext {
  ColorsApp get colors => ColorsApp.i;
}
