import 'package:to_do_app_dart/pojo/ToDo.dart';

class ToDoBuilder {
  static var todoItems = [
    'Math',
    'Architecture',
    'Biology',
    'Flutter',
    'Artificial Intelligences',
  ];

  static var photoUrl = "Vstav suda url";

  static List<ToDo> buildToDo() {
    List<ToDo> list = [];

    for (int i = 0; i < todoItems.length; i++) {
      list.add(ToDo(todoItems[i], photoUrl, false));
    }

    return list;
  }
}
