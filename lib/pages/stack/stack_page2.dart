import 'package:flutter/material.dart';

class StackPage2 extends StatelessWidget {
  const StackPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Rio de Janeiro',
          style: TextStyle(
            color: Colors.black45,
          ),
        ),
        backgroundColor: Colors.white38,
      ),
      body: Stack(
        children: [
          
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://i0.wp.com/www.vortexmag.net/wp-content/uploads/2015/04/rj-e1486640234805.jpg?resize=900%2C569'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Colors.white24,
          ),
          Positioned(
            left: 10,
            right: 10,
            bottom: 70,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      'Rio de Janiero',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text(
                        ' O Rio de Janeiro é um estado brasileiro situado na região Sudeste do país. É a quarta menor unidade da federação em área, mas a terceira mais populosa, reunindo 17,3 milhões de habitantes. Sua capital já foi também sede do governo brasileiro, entre 1763 e 1960.'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
