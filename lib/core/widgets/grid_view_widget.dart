import 'package:flutter/material.dart';

import 'package:sorteio_app/pages/home/home_page.dart';
import 'package:sorteio_app/pages/home/view/home_view.dart';

import '../styles/colors_app.dart';

import 'alert_dialog_widget.dart';

class GridViewWidget extends StatefulWidget {
  const GridViewWidget({super.key});

  @override
  State<GridViewWidget> createState() => _GridViewWidgetState();
}

class _GridViewWidgetState extends State<GridViewWidget> {
  final homeview = HomeView();

  void _showDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return const AlertDialogWidget();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 830,
        width: 830,
        child: GridView.builder(
            itemCount: 100,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 5, mainAxisSpacing: 5, crossAxisCount: 10),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  _showDialog();
                },
                child: AnimatedBuilder(
                  animation: homeview,
                  builder: (BuildContext context, Widget? child) {
                    //Posteriormente Mudar as cores do Grid
                    return Container(
                      width: 5,
                      height: 5,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16)),
                        color: homeview == 0
                            ? context.colors.quartuario
                            : homeview == 1
                                ? context.colors.secondary
                                : context.colors.primary,
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('${index + 1}'),
                          ]),
                    );
                  },
                ),
              );
            }),
      ),
    );
  }
}
