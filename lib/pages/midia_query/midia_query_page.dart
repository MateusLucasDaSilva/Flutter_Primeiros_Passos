import 'package:flutter/material.dart';

class MidiaQueryPage extends StatelessWidget {
  const MidiaQueryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final midiaQuery = MediaQuery.of(context);
    var alturaCompleta = midiaQuery.size.height;
    var larguraCompleta = midiaQuery.size.height;
    var tamanhoStatsBar = midiaQuery.padding.top;
    var tamanhoAppBarDefault = kToolbarHeight;

    var comtainerPrincipalCompleto =
        alturaCompleta - tamanhoStatsBar - tamanhoAppBarDefault;

    print('Altura da tela inteira: ${midiaQuery.size.height}');
    print('Largura: ${midiaQuery.size.width}');
    print('Orientacao: ${midiaQuery.size.height}');
    print('Padding TOP: ${midiaQuery.padding.top}');
    print('Tamanho AppBar Default: $kToolbarHeight');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Midia Query'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: comtainerPrincipalCompleto * .33,
              width: larguraCompleta,
              color: Colors.red,
              child: const Center(
                child: Text(
                  'Conatiner 1',
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
              ),
            ),
            Container(
              height: comtainerPrincipalCompleto * .33,
              width: larguraCompleta,
              color: Colors.yellow,
              child: const Center(
                child: Text(
                  'Conatiner 2',
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
              ),
            ),
            Container(
              height: comtainerPrincipalCompleto * .34,
              width: larguraCompleta,
              color: Colors.green,
              child: const Center(
                child: Text(
                  'Conatiner 3',
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
