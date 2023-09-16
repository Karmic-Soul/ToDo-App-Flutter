import 'package:flutter/material.dart';
import 'package:todo_app/model/todo_model.dart';
import 'package:todo_app/widgets/appbar.dart';
import 'package:todo_app/widgets/bottomsheet.dart';
import 'package:todo_app/widgets/searchbox.dart';
import 'package:todo_app/widgets/todo_item.dart';

final todosList = ToDo.todoList();

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 238, 233),
      appBar: buildAppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            searchBox(),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      top: 50,
                      bottom: 20,
                    ),
                    child: const Text(
                      'All ToDos',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                    ),
                  ),
                  for (ToDo todoo in todosList)
                    ToDoItem(
                      todo: todoo,
                      onChangeToDo: changeToDo,
                      onDeleteItem: deleteToDoItem,
                    ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: Container(
        margin: const EdgeInsets.only(top: 235),
        child: FloatingActionButton(
          onPressed: () {
            print('float clicked');
            BtmSheet(addtask: addtask).showBottomSheet(context);
          },
          tooltip: 'Add New ToDo',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }

  void changeToDo(ToDo toDo) {
    setState(() {
      toDo.isDone = !toDo.isDone;
    });
  }

  void deleteToDoItem(String id) {
    setState(() {
      todosList.removeWhere((item) => item.id == id);
    });
  }

  void addtask(String tasktext) {
    setState(() {
      todosList.add(ToDo(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        todotext: tasktext,
      ));
    });
  }
}


// Future<void> showBottomSheet(BuildContext ctx) async {
//   showModalBottomSheet(
//       isDismissible: true,
//       context: ctx,
//       builder: (ctx1) {
//         return Column(
//           children: [
//             Container(
//               width: double.infinity,
//               height: 200,
//               color: const Color.fromARGB(255, 206, 238, 249),
//               child: Container(
//                 margin: const EdgeInsets.all(20),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(23),
//                   color: Colors.white,
//                 ),
//                 child: const TextField(
//                   decoration: InputDecoration(
//                     contentPadding: EdgeInsets.only(left: 20),
//                     hintText: 'Add New Task ',
//                     border: InputBorder.none,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         );
//       });
// }
