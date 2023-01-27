import 'package:flutter/material.dart';

class LayoutBuilderPage extends StatelessWidget {
  const LayoutBuilderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout Builder'),
      ),
      body: Center(child: LayoutBuilder(
        builder: ((context, constraints) {
          return Column(
            children: [
              Container(
                height: constraints.maxHeight / 3,
                width: constraints.maxWidth,
                color: Colors.red,
              ),
              Container(
                height: constraints.maxHeight / 3,
                width: constraints.maxWidth,
                color: Colors.yellow,
              ),
              Container(
                height: constraints.maxHeight / 3,
                width: constraints.maxWidth,
                color: Colors.amber,
              ),
            ],
          );
        }),
      )),
    );
  }
}
