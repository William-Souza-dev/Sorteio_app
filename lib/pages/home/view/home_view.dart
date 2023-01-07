import 'package:flutter/material.dart';

import 'package:sorteio_app/core/styles/colors_app.dart';

class HomeView extends ChangeNotifier {
  void confirmed() {
    notifyListeners();
    int confirmed = 0;
    if (confirmed == 0) {
      ColorsApp.i.secondary;
    }
  }

  void pending() {
    notifyListeners();
    int pending = 1;
    if (pending == 1) {
      ColorsApp.i.quartuario;
    }
  }

  void gridViewIndex() {}
}
