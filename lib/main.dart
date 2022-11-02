// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'models/todo_model.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: const Text("ToDoLoo App"),
      ),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (BuildContext context, index) {
          return Dismissible(
            key: Key(index.toString()),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: Card(
                elevation: 4,
                child: ListTile(
                  title: const Text('TITLE'),
                  subtitle: const Text('DESCRIPTION'),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.check_box_outline_blank),
                  ),
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                title: const Text("Add item to your ToDoLoo list"),
                content: SizedBox(
                  width: 360,
                  height: 80,
                  child: Column(
                    children: [
                      TextField(
                        onChanged: (value) => null,
                      ),
                    ],
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () {},
                    child: const Text("Add"),
                  ),
                ],
              );
            },
          );
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
