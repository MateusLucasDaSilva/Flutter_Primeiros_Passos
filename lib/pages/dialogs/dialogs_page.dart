import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:segundo_projeto/pages/dialogs/dialog_custom_page.dart';

class DialogsPage extends StatelessWidget {
  const DialogsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialogs'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      //barrierDismissible: false,
                      context: context,
                      builder: (comtextDialog) {
                        return DialogCustomPage(context);
                      });
                },
                child: const Text('Dialog')),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return SimpleDialog(
                          title: const Text('Título'),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          children: [
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('sair')),
                          ],
                        );
                      });
                },
                child: const Text('Simple Dialog')),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      if (Platform.isIOS) {
                        return CupertinoAlertDialog(
                          title: const Text('Alert Dialog'),
                          content: SingleChildScrollView(
                            child: ListBody(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('Deseja Fechar Dialog ??'),
                                ),
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                                onPressed: () {},
                                child: const Text('Cancelar')),
                            TextButton(
                                onPressed: () {},
                                child: const Text('Confirmar'))
                          ],
                        );
                      }
                      return AlertDialog(
                        title: const Text('Alert Dialog'),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('Deseja Fechar Dialog ??'),
                              ),
                            ],
                          ),
                        ),
                        actions: [
                          TextButton(
                              onPressed: () {}, child: const Text('Cancelar')),
                          TextButton(
                              onPressed: () {}, child: const Text('Confirmar'))
                        ],
                      );
                    },
                  );
                },
                child: const Text('Alert Dialog')),
            ElevatedButton(
                onPressed: () async {
                  final selectedTime = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  );
                  // ignore: avoid_print
                  print('Horário Selecionado $selectedTime');
                },
                child: const Text('Time Picker')),
            ElevatedButton(
                onPressed: () async {
                  final selectedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2025),
                  );
                  // ignore: avoid_print
                  print('Data Selecionada $selectedDate');
                },
                child: const Text('Date Picker')),
          ],
        ),
      ),
    );
  }
}
