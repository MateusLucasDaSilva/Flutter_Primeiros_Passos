import 'package:flutter/material.dart';

enum PopupMenuPages {
  container,
  rowsColumn,
  midiaQuery,
  layoutBuilder,
  botoes,
  singleChildScrollView,
  listView,
  dialogs,
  snackbar,
  forms,
  cidades,
  stack,
  stack2,
  bottonNavigatorBar,
  circleAvatar,
  colors,
  materialBanner,
  whatssap
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
          actions: [
            PopupMenuButton<PopupMenuPages>(
              tooltip: 'Selecione um item',
              color: Colors.white,
              initialValue: PopupMenuPages.container,
              onSelected: (PopupMenuPages velueSelected) {
                switch (velueSelected) {
                  case PopupMenuPages.container:
                    Navigator.of(context).pushNamed('/container');
                    break;
                  case PopupMenuPages.rowsColumn:
                    Navigator.of(context).pushNamed('/rows_column');
                    break;
                  case PopupMenuPages.midiaQuery:
                    Navigator.of(context).pushNamed('/midia_query');
                    break;
                  case PopupMenuPages.layoutBuilder:
                    Navigator.of(context).pushNamed('/layout_builder');
                    break;
                  case PopupMenuPages.botoes:
                    Navigator.of(context).pushNamed('/botoes');
                    break;
                  case PopupMenuPages.singleChildScrollView:
                    Navigator.of(context).pushNamed('/scrolls/single_child');
                    break;
                  case PopupMenuPages.listView:
                    Navigator.of(context).pushNamed('/scrolls/list_view');
                    break;
                  case PopupMenuPages.dialogs:
                    Navigator.of(context).pushNamed('/dialogs');
                    break;
                  case PopupMenuPages.snackbar:
                    Navigator.of(context).pushNamed('/snackBar');
                    break;
                  case PopupMenuPages.forms:
                    Navigator.of(context).pushNamed('/forms');
                    break;
                  case PopupMenuPages.cidades:
                    Navigator.of(context).pushNamed('/cidades');
                    break;
                  case PopupMenuPages.stack:
                    Navigator.of(context).pushNamed('/stack');
                    break;
                  case PopupMenuPages.stack2:
                    Navigator.of(context).pushNamed('/stack2');
                    break;
                  case PopupMenuPages.bottonNavigatorBar:
                    Navigator.of(context).pushNamed('/botton_navigator_bar');
                    break;
                  case PopupMenuPages.circleAvatar:
                    Navigator.of(context).pushNamed('/cicle_avatar');
                    break;
                  case PopupMenuPages.colors:
                    Navigator.of(context).pushNamed('/colors');
                    break;
                  case PopupMenuPages.materialBanner:
                    Navigator.of(context).pushNamed('/material_banner');
                    break;
                  case PopupMenuPages.whatssap:
                    Navigator.of(context).pushNamed('/whatsapp');
                    break;
                }
              },
              itemBuilder: (BuildContext context) {
                return const <PopupMenuItem<PopupMenuPages>>[
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.container,
                    child: Text('Container'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.rowsColumn,
                    child: Text('Rows & Columns'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.midiaQuery,
                    child: Text('Midia Query'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.layoutBuilder,
                    child: Text('Layout Builder'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.botoes,
                    child: Text('Botões'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.singleChildScrollView,
                    child: Text('Single Child Scroll'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.listView,
                    child: Text('List View'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.dialogs,
                    child: Text('Dialogs'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.snackbar,
                    child: Text('SnackBar'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.forms,
                    child: Text('Forms'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.cidades,
                    child: Text('Cidades'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.stack,
                    child: Text('Stack'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.stack2,
                    child: Text('Stack Exemplo'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.bottonNavigatorBar,
                    child: Text('Botton Navigator Bar'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.circleAvatar,
                    child: Text('Circle Avatar'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.colors,
                    child: Text('Colors'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.materialBanner,
                    child: Text('Material Banner'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.whatssap,
                    child: Text('Whatsapp'),
                  ),
                ];
              },
            ),
          ],
        ),
        body: Container());
  }
}
