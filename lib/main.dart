import 'dart:io';
import 'package:project_1/my_home_page.dart';
import 'package:window_size/window_size.dart';
import 'package:flutter/material.dart';

import 'package:project_1/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows|| Platform.isLinux || Platform.isMacOS){
    setWindowTitle('Menu');
    setWindowMaxSize(Size(1200,800));
    setWindowMinSize(Size(800, 600));
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Меню',

      home: const MyHomePage(),
       theme: appTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}

