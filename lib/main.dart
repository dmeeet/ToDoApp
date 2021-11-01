import 'package:flutter/material.dart';
import 'package:to_do_app_dart/pojo/ToDo.dart';
import 'package:to_do_app_dart/pojo/ToDoBuilder.dart';
import 'new_row.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ToDo> getNewToDo() {
    return ToDoBuilder.buildToDo();
  }

  @override
  Widget build(BuildContext context) {
    List<ToDo> todos = getNewToDo();

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Create Some Task')),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            child: ListView.builder(
              itemCount: todos.length,
              itemBuilder: (context, index) {
                return NewRow(
                  todos[index].title,
                  todos[index].photoUrl,
                  todos[index].checked,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
