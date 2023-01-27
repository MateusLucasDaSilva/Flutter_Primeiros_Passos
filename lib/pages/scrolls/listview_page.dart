import 'package:flutter/material.dart';

class ListviewPage extends StatelessWidget {
  const ListviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('List View'),
        ),
        body: ListView.separated(
          itemCount: 100,
          separatorBuilder: (context, index) {
            return const Divider(
              color: Colors.red,
            );
          },
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Indece: $index'),
              subtitle: const Text('Flutter'),
              leading: const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://i.pinimg.com/originals/49/60/32/496032fb38b76e5bc22f8eb1d4a5d9be.jpg'),
              ),
            );
          },
        ));
  }
}
