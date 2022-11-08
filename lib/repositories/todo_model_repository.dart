import 'package:todoloo_list/models/todo_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ToDoModelRepository {
  Future<void> createItem(ToDoModel instance) async {
    // var url = Uri.parse('http://localhost:8080/todolist');
    var url = Uri.parse(
        'https://crudcrud.com/api/75927f54190b4fd39d52edc248721e1d/todolist');

    await http.post(
      (url),
      body: instance.toJson(),
      headers: {
        'content-type': 'application/json',
      },
    );
  }

  Future<List<ToDoModel>> get() async {
    // var url = Uri.parse('http://localhost:8080/todolist');
    var url = Uri.parse(
        'https://crudcrud.com/api/75927f54190b4fd39d52edc248721e1d/todolist');

    final itemResponse = await http.get(url);

    final itemList = jsonDecode(itemResponse.body);

    return itemList.map<ToDoModel>((itemMap) {
      return ToDoModel.fromMap(itemMap);
    }).toList();
  }

  Future<ToDoModel> getById(String _id) async {
    // var url = Uri.parse('http://localhost:8080/todolist/$id');
    var url = Uri.parse(
        'https://crudcrud.com/api/75927f54190b4fd39d52edc248721e1d/todolist/$_id');

    final itemResponse = await http.get(url);
    final itemMap = jsonDecode(itemResponse.body);
    return ToDoModel.fromMap(itemMap);
  }

  Future<http.Response> update(
      String _id, int id, String title, String description, bool status) async {
    var url = Uri.parse(
        'https://crudcrud.com/api/75927f54190b4fd39d52edc248721e1d/todolist/$_id');
    return http.put(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        'id': id,
        'title': title,
        'description': description,
        'status': status,
      }),
    );
  }

  Future<http.Response> delete(String _id) async {
    var url = Uri.parse(
        'https://crudcrud.com/api/75927f54190b4fd39d52edc248721e1d/todolist/$_id');

    final http.Response itemResponse = await http.delete(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    return itemResponse;
  }
}
