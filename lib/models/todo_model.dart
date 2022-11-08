import 'dart:convert';

class ToDoModel {
  final int id;
  final String title;
  final String description;
  final bool status;
  ToDoModel({
    required this.id,
    required this.title,
    required this.description,
    required this.status,
  });

  // ToDoModel copyWith({
  //   int? id,
  //   String? title,
  //   String? description,
  //   bool? status,
  // }) {
  //   return ToDoModel(
  //     id: id ?? this.id,
  //     title: title ?? this.title,
  //     description: description ?? this.description,
  //     status: status ?? this.status,
  //   );
  // }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'description': description,
      'status': status,
    };
  }

  factory ToDoModel.fromMap(Map<String, dynamic> map) {
    return ToDoModel(
      id: map['id'].toInt() as int,
      title: map['title'] as String,
      description: map['description'] as String,
      status: map['status'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory ToDoModel.fromJson(String source) =>
      ToDoModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ToDoModel(id: $id, title: $title, description: $description, status: $status)';
  }

  // @override
  // bool operator ==(covariant ToDoModel other) {
  //   if (identical(this, other)) return true;

  //   return other.id == id &&
  //       other.title == title &&
  //       other.description == description &&
  //       other.status == status;
  // }

  // @override
  // int get hashCode {
  //   return id.hashCode ^
  //       title.hashCode ^
  //       description.hashCode ^
  //       status.hashCode;
  // }
}
