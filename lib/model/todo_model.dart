class ToDo {
  String? id;
  String? todotext;
  bool isDone;

  ToDo({
    required this.id,
    required this.todotext,
    this.isDone = false,
  });
  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todotext: 'Morning Exercise', isDone: true),
      ToDo(id: '02', todotext: 'Take bath', isDone: true),
      ToDo(id: '03', todotext: 'check emails'),
      ToDo(id: '04', todotext: 'attend meetings'),
      ToDo(id: '05', todotext: 'code for 2 hrs', isDone: true),
      ToDo(id: '06', todotext: 'dinner with chippu'),
    ];
  }
}
