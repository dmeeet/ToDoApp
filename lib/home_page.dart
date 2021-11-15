import 'package:flutter/material.dart';
import 'package:to_do_app_dart/pojo/ToDo.dart';
import 'todo_create_form.dart';
import 'new_row.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ToDo> todos = [];

  void _addNewTodo(String input) {
    ToDo todo = new ToDo(input, "photo url", false);

    setState(() {
      todos.add(todo);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Create Some Task')),
      ),
      body: SafeArea(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: todos.length,
          itemBuilder: (context, index) {
            return TextButton(
              onPressed: () {},
              child: NewRow(
                todos[index].title,
                todos[index].photoUrl,
                todos[index].checked,
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: TodoCreateForm(_addNewTodo),
      ),
    );
  }
}
