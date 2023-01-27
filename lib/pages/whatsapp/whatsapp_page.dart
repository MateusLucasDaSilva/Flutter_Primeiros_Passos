import 'package:flutter/material.dart';

List<String> titles = <String>[
  'Conversas',
  'Status',
  'Chamadas',
];

class WhatsappPage extends StatelessWidget {
  const WhatsappPage({super.key});

  @override
  Widget build(BuildContext context) {
    const int tabsCount = 3;

    return DefaultTabController(
      initialIndex: 0,
      length: tabsCount,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(120),
          child: AppBar(
            title: const Text(
              'Whatssap',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert_sharp),
              ),
            ],
            backgroundColor: const Color(0XFF075C55),
            notificationPredicate: (ScrollNotification notification) {
              return notification.depth == 1;
            },
            scrolledUnderElevation: 4.0,
            shadowColor: Theme.of(context).primaryColor,
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  child: Row(
                    children: [
                      const Icon(Icons.camera_alt, color: Colors.white38),
                      const Divider(indent: 10),
                      Text(
                        titles[0],
                        style:
                            const TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ],
                  ),
                ),
                Tab(
                  child: Text(
                    titles[1],
                    style: const TextStyle(color: Colors.white38, fontSize: 14),
                  ),
                ),
                Tab(
                  child: Text(
                    titles[2],
                    style: const TextStyle(color: Colors.white38, fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView.separated(
              separatorBuilder: (context, index) {
                return const Divider(
                  color: Colors.red,
                );
              },
              itemCount: 25,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text('Mateus Lucas $index'),
                  subtitle: const Text('Ultima menssagem enviada'),
                  trailing: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text('00:00'),
                    ],
                  ),
                  leading: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://instagram.fssa25-1.fna.fbcdn.net/v/t51.2885-19/276960177_116807367611916_4630971359231483277_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fssa25-1.fna.fbcdn.net&_nc_cat=100&_nc_ohc=xf2IvT0617EAX-WPaoL&edm=ACWDqb8BAAAA&ccb=7-5&oh=00_AfA7S3aal2T5sFLQV8U4nXJJk-Gh1lIXGqT-KBxtGK7Jeg&oe=63D7E01F&_nc_sid=1527a3'),
                      maxRadius: 35),
                );
              },
            ),
            ListView.separated(
              separatorBuilder: (context, index) {
                return const Divider(
                  color: Colors.red,
                );
              },
              itemCount: 25,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text('${titles[1]} $index'),
                );
              },
            ),
            ListView.builder(
              itemCount: 25,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text('${titles[2]} $index'),
                );
              },
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color(0XFF21C65D),
          child: const Icon(Icons.message),
        ),
      ),
    );
  }
}
