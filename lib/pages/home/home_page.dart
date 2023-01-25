import 'package:flutter/material.dart';

import 'package:sorteio_app/pages/home/view/home_view.dart';

import '../../core/widgets/elevated_button_widget.dart';
import '../../core/widgets/grid_view_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeView _homeView = HomeView();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          const ElevatedButtonWidget(),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Positioned(
                      top: 0,
                      child: SizedBox(
                        width: 500,
                        height: 140,
                        child: Image.asset(
                          'assets/titulo.png',
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  bottom: 10,
                  right: 150,
                  child: SizedBox(
                    width: 200,
                    height: 350,
                    child: Image.asset(
                      'assets/boy.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 150,
                  child: SizedBox(
                    width: 200,
                    height: 350,
                    child: Image.asset(
                      'assets/lion.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    child: Image.asset(
                      'assets/grama.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                GridViewWidget(
                    homeView: _homeView, callback: () => setState(() {})),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
