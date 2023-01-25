import 'package:flutter/material.dart';

import 'package:sorteio_app/pages/home/view/home_view.dart';
import 'package:sorteio_app/repository/item_repository.dart';

import '../styles/colors_app.dart';

import 'alert_dialog_widget.dart';

class GridViewWidget extends StatefulWidget {
  final HomeView homeView;
  const GridViewWidget(
      {super.key, required this.homeView, required void Function() callback})
      : assert(homeView != null);

  @override
  State<GridViewWidget> createState() => _GridViewWidgetState();
}

class _GridViewWidgetState extends State<GridViewWidget> {
  //late Color _color;

  @override
  void initState() {
    super.initState();
    widget.homeView.addListener(_onColorChanged);
  }

  void _onColorChanged() {
    setState(() {
      //_color = widget.homeView.color;
    });
  }

  void _showDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialogWidget(
            callback: () {
              setState(() {});
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
        itemCount: 100,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 5, mainAxisSpacing: 5, crossAxisCount: 10),
        itemBuilder: (context, index) {
          return InkWell(
              onTap: () {
                _showDialog();
              },
              child:
                  // AnimatedBuilder(
                  //animation: widget.homeView,
                  //builder: (BuildContext context, Widget? child) {
                  // return
                  Container(
                width: 5,
                height: 5,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                  color: widget.homeView.color,
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
  //),
  // ),
  //);

}
