import 'package:flutter/material.dart';

class SinglechildscrollviewPage extends StatelessWidget {
  const SinglechildscrollviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SingleChildScrollView'),
      ),
      body: SingleChildScrollView(
        //Pode ser substituido Pelo ListView, se comoporta da mesma forma.
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.red,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.black,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.lightGreenAccent,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.cyan,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.purpleAccent,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.limeAccent,
            ),
          ],
        ),
      ),
    );
  }
}
