import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:progress_bar_todo_list_page/pages/home_page/store/home_store.dart';

import 'pages/home_page/home.page.dart';

void main() {
  GetIt.I.registerSingleton<HomeStore>(HomeStore());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
