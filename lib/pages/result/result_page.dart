import 'package:flutter/material.dart';

import '../../core/styles/colors_app.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(top: 150),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // 1°Colocado
                  Container(
                    height: 700,
                    width: 500,
                    decoration: BoxDecoration(
                      color: context.colors.secondary,
                      borderRadius: const BorderRadius.all(Radius.circular(35)),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 40.0),
                          child: Text(
                            "N° 6",
                            style: TextStyle(
                                color: context.colors.sextuary, fontSize: 75),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 80.0,
                          ),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 100,
                            child: Center(
                              child: Text(
                                'Nome da Pessoa',
                                style: TextStyle(
                                    color: context.colors.sextuary,
                                    fontSize: 50),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15.0),
                          child: Text('1° Colocado',
                              style: TextStyle(
                                  color: context.colors.sextuary,
                                  fontSize: 40)),
                        ),
                      ],
                    ),
                  ),
                  // 2° Colocado
                  Container(
                    height: 700,
                    width: 500,
                    decoration: BoxDecoration(
                      color: context.colors.secondary,
                      borderRadius: const BorderRadius.all(Radius.circular(35)),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 40.0),
                          child: Text(
                            "N° 6",
                            style: TextStyle(
                                color: context.colors.sextuary, fontSize: 75),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 80.0,
                          ),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 100,
                            child: Center(
                              child: Text(
                                'Nome da Pessoa',
                                style: TextStyle(
                                    color: context.colors.sextuary,
                                    fontSize: 50),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15.0),
                          child: Text(
                            '2° Colocado',
                            style: TextStyle(
                                color: context.colors.sextuary,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 220,
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 10,
                    backgroundColor: context.colors.secondary,
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/homepage');
                  },
                  child: Center(
                    child: Text(
                      'Voltar para o Inicio',
                      style: TextStyle(
                        color: context.colors.sextuary,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
