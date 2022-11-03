// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "ToDoLoo App",
    theme: ThemeData(
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: Colors.blueGrey,
        onPrimary: Colors.white,
        secondary: Colors.orange,
        onSecondary: Colors.black,
        error: Colors.red,
        onError: Colors.white,
        background: Color.fromARGB(99, 224, 224, 224),
        onBackground: Color.fromARGB(50, 50, 50, 50),
        surface: Color.fromARGB(255, 155, 198, 222),
        onSurface: Color.fromARGB(255, 48, 48, 53),
      ),
    ),
    home: const ToDoLooApp(),
  ));
}

class ToDoLooApp extends StatefulWidget {
  const ToDoLooApp({super.key});

  @override
  State<ToDoLooApp> createState() => _ToDoLooAppState();
}

class _ToDoLooAppState extends State<ToDoLooApp> {
  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}
