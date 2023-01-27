import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:segundo_projeto/pages/cidades/models/cidade.dart';

class CidadePage extends StatefulWidget {
  const CidadePage({super.key});

  @override
  State<CidadePage> createState() => _CidadePageState();
}

class _CidadePageState extends State<CidadePage> {
  var cidades = <Cidade>[];

  @override
  void initState() {
    super.initState();
    _loadCities();
  }

  Future<void> _loadCities() async {
    var cidadesJson = await rootBundle.loadString('assets/cidades.json');

    setState(() {
      var cidadesList = json.decode(cidadesJson);
      cidades = cidadesList.map<Cidade>((city)=> Cidade.fromMap(city)).toList();
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cidades'),
      ),
      body: ListView.builder(
        itemCount: cidades.length,
        itemBuilder: (context, index) {
          var cidade = cidades[index];
          return ListTile(
            title: Text(cidade.cidade),
            subtitle: Text(cidade.estado),
          );
        },
      ),
    );
  }
}
