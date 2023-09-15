class ToDo {
  String? id;
  String? text;
  bool isDone;

  ToDo({
    required this.id,
    required this.text,
    this.isDone = false,
  });
  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', text: 'Morning Exercise', isDone: true),
      ToDo(id: '02', text: 'Take bath', isDone: true),
      ToDo(id: '03', text: 'check emails'),
      ToDo(id: '04', text: 'attend meetings'),
      ToDo(id: '05', text: 'code for 2 hrs'),
      ToDo(id: '06', text: 'dinner with chippu'),
    ];
  }
}
