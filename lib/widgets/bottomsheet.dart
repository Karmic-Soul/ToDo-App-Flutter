import 'package:flutter/material.dart';
import 'package:todo_app/model/todo_model.dart';
import 'package:todo_app/screens/home.dart';

class BtmSheet {
  final TextEditingController _addtaskController = TextEditingController();
  final void Function(String) addtask;

  BtmSheet({required this.addtask});

  Future<void> showBottomSheet(BuildContext ctx) async {
    showModalBottomSheet(
        //  isScrollControlled: true,
        backgroundColor: Color.fromARGB(255, 225, 211, 230),
        isDismissible: true,
        context: ctx,
        builder: (ctx1) {
          return Container(
            height: 800,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20, left: 15, right: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(180),
                  ),
                  child: TextField(
                    controller: _addtaskController,
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Add New Task',
                        contentPadding: EdgeInsets.only(left: 20)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 25),
                  height: 50,
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {
                      final newtext = _addtaskController.text;
                      addtask(newtext);
                      Navigator.of(ctx).pop();
                    },
                    child: Text(
                      'Add',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
