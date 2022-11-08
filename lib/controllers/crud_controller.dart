import '../models/todo_model.dart';
import '../repositories/todo_model_repository.dart';

class ToDoController {
  final _itemRepository = ToDoModelRepository();

  Future<void> findAll() async {
    final items = await _itemRepository.findAllItems();
    for (var data in items) {
      print(data);
    }
  }

  Future<void> findById(String _id) async {
    final items = await _itemRepository.findItemById(_id);
    print(items);
  }

  Future<void> create() async {
    final items = ToDoModel(
      id: 0,
      title: 'title',
      description: 'description',
      status: true,
    );
    _itemRepository.createItem(items);
    print(items);
  }
}
