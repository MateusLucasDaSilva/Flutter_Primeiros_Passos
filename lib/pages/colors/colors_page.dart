import 'package:flutter/material.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final cor = Colors.red,
    // final cor = Color.fromARGB(255, 219, 41, 29);
    //  final cor =Colors.red.withOpacity(0.5);
    final cor = Color(0XFF8D110E);
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cores'),
      ),
      body: Center(
        child: Container(
          height: 400,
          width: 400,
          color: cor,
        ),
      ),
    );
  }
}
