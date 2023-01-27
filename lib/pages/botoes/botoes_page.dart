import 'package:flutter/material.dart';

class BotoesPage extends StatelessWidget {
  const BotoesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botões'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Row(
            //   children: [
            //     RotatedBox(
            //       quarterTurns: -1,
            //       child: Container(
            //         color: Colors.green,
            //         child: const Text('Botão 1'),
            //       ),
            //     ),
            //     const Icon(Icons.ac_unit),
            //   ],
            // ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Salvar',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.save_alt_sharp),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shadowColor: Colors.blue,
                minimumSize: const Size(60, 40),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              child: const Text('Salvar'),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.save),
              label: const Text('salvar'),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                shadowColor: const MaterialStatePropertyAll(Colors.orange),
                minimumSize: MaterialStateProperty.resolveWith(
                  (states) {
                    if (states.contains(MaterialState.pressed)) {
                      return const Size(150, 60);
                    }
                    return const Size(60, 40);
                  },
                ),
                //MaterialStatePropertyAll(Size(90, 40)),

                backgroundColor: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.red;
                  }
                  return Colors.blue;
                }),
              ),
              child: const Text('Salvar'),
            ),
          ],
        ),
      ),
    );
  }
}
