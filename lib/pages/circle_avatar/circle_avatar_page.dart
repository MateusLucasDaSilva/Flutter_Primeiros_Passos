import 'package:flutter/material.dart';

class CircleAvatarPage extends StatelessWidget {
  const CircleAvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circle Avatar'),
      ),
      body: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ImageAvatar(
                urlAvatar:
                    'https://s2.glbimg.com/s7nUs5uQUTT-0BsMvR6TbR_TxJQ=/0x0:620x413/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_cf9d035bf26b4646b105bd958f32089d/internal_photos/bs/2020/u/Q/yPsu5tSe6Y5Q8WHAEhow/2016-05-30-ford-ranger-flex-5.jpg',
                nome: 'Ranger'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ImageAvatar(
                urlAvatar:
                    'https://fotos.jornaldocarro.estadao.com.br/wp-content/uploads/2021/10/26152744/s10-z71-01.jpg',
                nome: 'S10'),
          ),
        ],
      ),
    );
  }
}

class ImageAvatar extends StatelessWidget {
  final String urlAvatar;
  final String nome;

  const ImageAvatar({
    Key? key,
    required this.urlAvatar,
    required this.nome,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.red,Color(0XFF5EC8F8)
                ],
              ),
              borderRadius: BorderRadius.circular(100)),
        ),
        Container(
          height: 100,
          width: 100,
          padding: EdgeInsets.all(5),
          child: CircleAvatar(
            backgroundImage: NetworkImage(urlAvatar),
          ),
        ),
        Container(
          height: 100,
          width: 100,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(7),
              ),
              padding: EdgeInsets.all(5),
              child: Text(
                nome,
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
