import 'package:flutter/material.dart';

class RowsColumnPage extends StatelessWidget {
  const RowsColumnPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rows e Columns'),
      ),
      body: Column(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    height: 200,
                    width: 420,
                    color: Colors.red,
                    child: const Text(
                      'Cont 1',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 60,
                      ),
                    )),
                Container(
                    height: 200,
                    width: 420,
                    color: Colors.yellow,
                    child: const Text(
                      'Cont 1',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 60,
                      ),
                    )),
              ],
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 333.5,
                    width: 205,
                    color: Colors.pink,
                    child: const Text(
                      'Cont 1',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 60,
                      ),
                    )),
                Container(
                    height: 333.5,
                    width: 205,
                    color: Colors.orange,
                    child: const Text(
                      'Cont 1',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 60,
                      ),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
