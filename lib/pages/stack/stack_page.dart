import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack'),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.black,
          ),
          Positioned(
            left: 30,
            top: 50,
            child: Container(
              height: 300,
              width: 200,
              color: Colors.red,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
