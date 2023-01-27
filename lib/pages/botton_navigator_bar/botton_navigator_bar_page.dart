// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:segundo_projeto/pages/botton_navigator_bar/page1.dart';
import 'package:segundo_projeto/pages/botton_navigator_bar/page2.dart';

class BottonNavigatorBarPage extends StatefulWidget {
  const BottonNavigatorBarPage({Key? key}) : super(key: key);

  @override
  State<BottonNavigatorBarPage> createState() => _BottonNavigatorBarPageState();
}

class _BottonNavigatorBarPageState extends State<BottonNavigatorBarPage> {
  var indice = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botton navigator Bar'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indice,
        onTap: (value) {
          setState(() {
          indice = value;
            
          });
        },
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
            label: 'Página 1',
            icon: Icon(Icons.airline_seat_individual_suite_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Página 2',
            icon: Icon(Icons.lock_clock),
          ),
        ],
      ),
      body: IndexedStack(
        index: indice,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Page1(),
          Page2(),
        ],
      ),
    );
  }
}
