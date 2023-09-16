import 'package:flutter/material.dart';
import 'package:todo_app/model/todo_model.dart';
//import 'package:todo_app/screens/home.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todo;
  final onDeleteItem;
  final onChangeToDo;
  const ToDoItem(
      {super.key,
      required this.todo,
      required this.onDeleteItem,
      required this.onChangeToDo});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
        onTap: () {
          onChangeToDo(todo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        tileColor: Colors.white,
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: Colors.purple,
        ),
        title: Text(
          todo.todotext!,
          style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              decoration: todo.isDone
                  ? TextDecoration.lineThrough
                  : TextDecoration.none),
        ),
        trailing: Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(8),
          ),
          child: IconButton(
            onPressed: () {
              onDeleteItem(todo.id);
            },
            icon: const Icon(
              Icons.delete,
              color: Colors.white,
              size: 18,
            ),
          ),
        ),
      ),
    );
  }
}
