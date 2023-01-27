import 'package:flutter/material.dart';

import 'package:sorteio_app/pages/home/view/home_view.dart';

import '../styles/colors_app.dart';

import 'alert_dialog_widget.dart';

class GridViewWidget extends StatefulWidget {
  final HomeView homeView;
  const GridViewWidget(
      {super.key, required this.homeView, required void Function() callback});

  @override
  State<GridViewWidget> createState() => _GridViewWidgetState();
}

class _GridViewWidgetState extends State<GridViewWidget> {
  final List<int> _selectedIndexList = [];
  final List<Color> _colors = List.generate(100, (_) => ColorsApp.i.primary);

  void _showDialog(int index) {
    setState(() {
      _selectedIndexList.add(index);
    });
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialogWidget(
            callback: () {
              setState(() {
                _colors[index] = widget.homeView.color;
              });
            },
            homeView: widget.homeView,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
      height: 830,
      width: 830,
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: 100,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 5, mainAxisSpacing: 5, crossAxisCount: 10),
        itemBuilder: (context, index) {
          return InkWell(
              onTap: () {
                _showDialog(index);
              },
              child: Container(
                width: 5.0,
                height: 5.0,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                  color: _colors[index],
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('${index + 1}'),
                    ]),
              ));
        },
      ),
    ));
  }
}
