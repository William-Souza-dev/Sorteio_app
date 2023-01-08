import 'package:flutter/material.dart';

import 'package:sorteio_app/core/styles/colors_app.dart';

class HomeView extends ChangeNotifier {
  Color _color = ColorsApp.i.primary;

  Color get color => _color;

  set color(Color? newColor) {
    _color = newColor!;
    notifyListeners();
  }
}
