import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container'),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
          // child: Image.network(
          //   'https://thumbs.dreamstime.com/b/por-do-sol-acima-das-nuvens-87286885.jpg',
          //   fit: BoxFit.cover,
          // ),
        ),
      ),
    );
  }
}
