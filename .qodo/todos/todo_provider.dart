import './todo.dart';

//collection model
class TodoProvider {
  final Map<String, Todo> _todoMap = <String, Todo>{};
  static int _idCounter = 0;

  //true for success adding, false for failure adding
  bool addTodo(String title) {
    //we need only title of todo list
    final trimmedTitle = title.trim();
    if (trimmedTitle.isEmpty) {
      print("Please input title");
      return false;
    }

    try {
      //Generate id
      final id =
          'todo_${++_idCounter}_${DateTime.now().millisecondsSinceEpoch}';

      //Create an todo object
      final newTodo = Todo(id: id, title: title);

      //Add into map
      _todoMap[id] = newTodo;

      return true;
    } catch (e) {
      print("Error: $e");
      return false;
    }
  }
}
