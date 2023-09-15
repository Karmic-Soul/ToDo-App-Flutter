import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: const Color.fromARGB(255, 239, 238, 233),
    elevation: 0,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(
          Icons.keyboard_command_key,
          color: Colors.black,
          size: 40,
        ),
        SizedBox(
          height: 50,
          width: 50,
          child: Image.asset('assets/images/woman.png'),
        )
      ],
    ),
  );
}
