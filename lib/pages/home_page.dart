import 'package:flutter/material.dart';
import 'package:todoloo_list/controllers/crud_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ToDoLoo App"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                print(ToDoController().create());
              },
              child: const Text(
                'CREATE',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print(ToDoController().get());
              },
              child: const Text(
                'READ (ALL)',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print(ToDoController().getById('636a719875250203e82f4b0f'));
              },
              child: const Text(
                'READ (BY ID)',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print(ToDoController().update());
              },
              child: const Text(
                'UPDATE',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print(ToDoController().delete('636a719875250203e82f4b0f'));
              },
              child: const Text(
                'DELETE',
              ),
            ),
          ],
        ),
      ),
      // body: FutureBuilder(
      //   future: getToDo(),
      //   builder: (context, snapshot) {
      //     if (snapshot.hasError) {
      //       return const Center(
      //         child: Text('Error ao carregar dados'),
      //       );
      //     } else {
      //       return ListView.builder(
      //         itemCount: snapshot.data!.length,
      //         itemBuilder: (context, index) {
      //           return Dismissible(
      //             key: Key(index.toString()),
      //             child: Padding(
      //               padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      //               child: Card(
      //                 elevation: 4,
      //                 child: ListTile(
      //                   title: Text(snapshot.data![index]),
      //                   subtitle: Text(snapshot.data![index]),
      //                   trailing: IconButton(
      //                     onPressed: () {},
      //                     icon: const Icon(Icons.check_box_outline_blank),
      //                   ),
      //                 ),
      //               ),
      //             ),
      //           );
      //         },
      //       );
      //     }
      //   },
      // ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     showDialog(
      //       context: context,
      //       builder: (BuildContext context) {
      //         return AlertDialog(
      //           shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(20),
      //           ),
      //           title: const Text("Add item to your ToDoLoo list"),
      //           content: SizedBox(
      //             width: 360,
      //             height: 80,
      //             child: Column(
      //               children: [
      //                 TextField(
      //                   onChanged: (value) => null,
      //                 ),
      //               ],
      //             ),
      //           ),
      //           actions: [
      //             TextButton(
      //               onPressed: () {},
      //               child: const Text("Add"),
      //             ),
      //           ],
      //         );
      //       },
      //     );
      //   },
      //   child: const Icon(
      //     Icons.add,
      //     color: Colors.white,
      //   ),
      // ),
    );
  }
}
