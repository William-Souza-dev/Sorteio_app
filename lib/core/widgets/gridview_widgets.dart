import 'package:flutter/material.dart';

class GridviewWidgets extends StatefulWidget {
  const GridviewWidgets({super.key});

  @override
  State<GridviewWidgets> createState() => _GridviewWidgetsState();
}

class _GridviewWidgetsState extends State<GridviewWidgets> {
  int contador = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 830,
          width: 830,
          child: GridView.builder(
              itemCount: 100,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 5, mainAxisSpacing: 5, crossAxisCount: 10),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  child: Container(
                    width: 5,
                    height: 5,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      color: Color(0xFFe2f2f7),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('$index'),
                        ]),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
