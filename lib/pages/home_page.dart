import 'package:flutter/material.dart';

import 'package:sorteio_app/core/styles/colors_app.dart';
import 'package:sorteio_app/core/widgets/elevatedbutton_widgets.dart';
import 'package:sorteio_app/core/widgets/gridview_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          const ElevatedbuttonWidgets(),
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
                const GridviewWidgets(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
