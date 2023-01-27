import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:segundo_projeto/pages/botoes/botoes_page.dart';
import 'package:segundo_projeto/pages/botton_navigator_bar/botton_navigator_bar_page.dart';
import 'package:segundo_projeto/pages/cidades/cidade_page.dart';
import 'package:segundo_projeto/pages/circle_avatar/circle_avatar_page.dart';
import 'package:segundo_projeto/pages/colors/colors_page.dart';
import 'package:segundo_projeto/pages/container/container_page.dart';
import 'package:segundo_projeto/pages/dialogs/dialogs_page.dart';
import 'package:segundo_projeto/pages/forms/forms_page.dart';
import 'package:segundo_projeto/pages/home/home_page.dart';
import 'package:segundo_projeto/pages/layout_builder/layout_builder_page.dart';
import 'package:segundo_projeto/pages/material_banner/material_banner_page.dart';
import 'package:segundo_projeto/pages/midia_query/midia_query_page.dart';
import 'package:segundo_projeto/pages/rows_columns/rows_column_page.dart';
import 'package:segundo_projeto/pages/scrolls/listview_page.dart';
import 'package:segundo_projeto/pages/scrolls/singlechildscrollview_page.dart';
import 'package:segundo_projeto/pages/snackbar/snackbar_page.dart';
import 'package:segundo_projeto/pages/stack/stack_page.dart';
import 'package:segundo_projeto/pages/stack/stack_page2.dart';
import 'package:segundo_projeto/pages/whatsapp/whatsapp_page.dart';

void main() {
  runApp(DevicePreview(
    //!kReleaseMode
    enabled: false,
    builder: (_) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.amber,
        primarySwatch: Colors.blue,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amber,
          ),
        ),
      ),
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      routes: {
        '/': (_) => const HomePage(),
        '/container': (_) => const ContainerPage(),
        '/rows_column': (_) => const RowsColumnPage(),
        '/midia_query': (_) => const MidiaQueryPage(),
        '/layout_builder': (_) => const LayoutBuilderPage(),
        '/botoes': (_) => const BotoesPage(),
        '/scrolls/single_child': (_) => const SinglechildscrollviewPage(),
        '/scrolls/list_view': (_) => const ListviewPage(),
        '/dialogs': (_) => const DialogsPage(),
        '/snackBar': (_) => const SnackbarPage(),
        '/forms': (_) => const FormsPage(),
        '/cidades': (_) => const CidadePage(),
        '/stack': (_) => const StackPage(),
        '/stack2': (_) => const StackPage2(),
        '/botton_navigator_bar': (_) => const BottonNavigatorBarPage(),
        '/cicle_avatar': (_) => const CircleAvatarPage(),
        '/colors': (_) => const ColorsPage(),
        '/material_banner': (_) => const MaterialBannerPage(),
        '/whatsapp': (_) => const WhatsappPage(),
      },
      


    );
  }
}
