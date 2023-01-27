import 'package:flutter/material.dart';

class FormsPage extends StatefulWidget {
  const FormsPage({Key? key}) : super(key: key);

  @override
  State<FormsPage> createState() => _FormsPageState();
}

class _FormsPageState extends State<FormsPage> {
  //String texto = '';
  final formKey = GlobalKey<FormState>();
  final nameEc = TextEditingController();

  @override
  void dispose() {
    nameEc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Forms'),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  // TextField(
                  //   onChanged: (String value) {
                  //     setState(() {
                  //       texto = value;
                  //     });
                  //   },
                  // ),
                  // const SizedBox(
                  //   height: 10,
                  // ),
                  // Text('Texto digitado $texto'),

                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: nameEc,
                    maxLines: null,
                    decoration: InputDecoration(
                        label: Text('Name'),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.green,
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.green,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.green,
                          ),
                        ),
                        isDense: true),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Campo não preenchido';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: nameEc,
                    decoration: InputDecoration(
                        label: Text('Password'),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.green,
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.green,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.green,
                          ),
                        ),
                        isDense: true),
                    obscureText: true,
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Campo não preenchido';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // DropdownButtonFormField(
                  //   value: 'Categoria 1',
                  //   items: const [
                  //     DropdownMenuItem(
                  //       value: 'Categoria 1',
                  //       child: Text('Categoria 1'),
                  //     ),
                  //     DropdownMenuItem(
                  //       value: 'Categoria 1',
                  //       child: Text('Categoria 1'),
                  //     ),
                  //     DropdownMenuItem(
                  //       value: 'Categoria 1',
                  //       child: Text('Categoria 1'),
                  //     ),
                  //   ],
                  //   onChanged: (value) {},
                  // ),

                  ElevatedButton(
                    onPressed: () {
                      var formValid = formKey.currentState?.validate() ?? false;
                      var message = 'Fomulario Inválido!';
                      if (formValid) {
                        message = 'Fomulário Válido! (Name: ${nameEc.text} )';
                      }
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(message),
                        ),
                      );
                    },
                    child: const Text('Salvar'),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
