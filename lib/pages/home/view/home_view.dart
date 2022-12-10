import 'package:flutter/material.dart';

import 'package:sorteio_app/core/styles/colors_app.dart';

abstract class HomeView extends ChangeNotifier {
  void confirmed() {
    bool confirmed = false;
    if (confirmed == true) {
      ColorsApp.i.secondary;
    }
  }

  void pending() {
    bool confirmed = false;
    if (confirmed == true) {
      ColorsApp.i.quartuario;
    }
  }

  void gridViewIndex() {}
}
