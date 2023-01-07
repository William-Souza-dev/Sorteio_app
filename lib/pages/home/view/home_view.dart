import 'package:flutter/material.dart';

import 'package:sorteio_app/core/styles/colors_app.dart';

class HomeView extends ChangeNotifier {
  void confirmed() {
    notifyListeners();
    bool confirmed = false;
    if (confirmed == true) {
      ColorsApp.i.secondary;
    }
  }

  void pending() {
    notifyListeners();
    bool confirmed = false;
    if (confirmed == true) {
      ColorsApp.i.quartuario;
    }
  }

  void gridViewIndex() {}
}
