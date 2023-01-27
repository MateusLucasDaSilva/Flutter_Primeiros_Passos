import 'package:flutter/material.dart';

class SnackbarPage extends StatelessWidget {
  const SnackbarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBar'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              const snackbar = SnackBar(
                  content: Text('SnackBar Funcionando com Sucesso !!'));

              ScaffoldMessenger.of(context).showSnackBar(snackbar);
              ScaffoldMessenger.of(context).removeCurrentSnackBar();
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            },
            child: const Text('Simple SnackBar'),
          ),
          ElevatedButton(
            onPressed: () {
              final snackbar = SnackBar(
                content: const Text('SnackBar Funcionando com Sucesso !!'),
                backgroundColor: Colors.amber,
                action: SnackBarAction(
                  label: 'Desfazer',
                  onPressed: () {},
                ),
              );

              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            },

            
            child: const Text('Action SnackBar'),
          )
        ],
      )),
    );
  }
}
