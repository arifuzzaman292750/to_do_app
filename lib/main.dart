import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:important_apps/pages/home_page.dart';

void main() async {
  
  await Hive.initFlutter();

  var box = await Hive.openBox('mybox');

  runApp(const ToDoApp());
}

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,
        ),
      ),
    );
  }
}
