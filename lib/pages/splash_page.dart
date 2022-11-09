import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4))
        .then((_) => Navigator.of(context).pushReplacementNamed('/homepage'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 400,
                  child: Image.asset(
                    'assets/galhos.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  right: 10,
                  child: SizedBox(
                    width: 400,
                    height: 400,
                    child: Image.asset(
                      'assets/kong.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Center(
                  child: SizedBox(
                    width: 800,
                    height: 400,
                    child: Image.asset(
                      'assets/text.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: SizedBox(
                    width: 650,
                    height: 600,
                    child: Image.asset(
                      'assets/animals.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    child: Image.asset(
                      'assets/grama.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
