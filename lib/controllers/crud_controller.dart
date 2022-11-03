import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List> getToDo() async {
  var getUrl = Uri.parse('https://crudcrud.com/api/c3c77f78d79149a2bb006d0fc37798ff');
  var getToDo = await http.get(getUrl);
  if (getToDo.statusCode == 200) {
    return jsonDecode(utf8.decode(getToDo.bodyBytes));
  } else {
    throw Exception('Erro ao carregar dados do Servidor');
  }
}