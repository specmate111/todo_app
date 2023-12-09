import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {


List todoList = [];

  final _myBox = Hive.box('mybox');


// for 1st time
  void createInitialData() {
todoList = [
  ['Do exercise',false],
  ['Do homework',false],
];
  }

  //load data from the database

  void loadData() {
todoList = _myBox.get("TODOLIST");
  }

  //update database

  void updateDataBase() {
_myBox.put("TODOLIST", todoList);
  }

}