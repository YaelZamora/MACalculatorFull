import 'dart:io';

import 'package:macalculator/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';

void main() {
  runApp(const MyApp());

  if (Platform.isLinux || Platform.isMacOS || Platform.isWindows) {
    doWhenWindowReady(() {
      final window = appWindow;
      const initialSize = Size(340, 650);
      const minSize = Size(340, 650);
      const maxSize = Size(350, 650);
      window.maxSize = maxSize;
      window.minSize = minSize;
      window.size = initialSize; //default size
      window.show();
    });
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: HomePage(),
    );
  }
}
