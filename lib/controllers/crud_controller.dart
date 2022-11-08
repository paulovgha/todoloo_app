import '../models/todo_model.dart';
import '../repositories/todo_model_repository.dart';

class ToDoController {
  final _itemRepository = ToDoModelRepository();

  Future<void> create() async {
    final item = ToDoModel(
      id: 0,
      title: 'title',
      description: 'description',
      status: true,
    );
    _itemRepository.createItem(item);
    print(item);
  }

  Future<void> get() async {
    final items = await _itemRepository.get();
    for (var data in items) {
      print(data);
    }
  }

  Future<void> getById(String _id) async {
    final item = await _itemRepository.getById(_id);
    print(item);
  }

  Future<void> update() async {
    final item = ToDoModel(
      id: 99,
      title: 'title updated',
      description: 'description updated',
      status: false,
    );
    _itemRepository.update(
      "636a711a75250203e82f4b0e",
      item.id,
      item.title,
      item.description,
      item.status,
    );
    print(item);
  }

  Future<void> delete(String _id) async {
    await _itemRepository.delete(_id);
    print('deletado');
  }
}
