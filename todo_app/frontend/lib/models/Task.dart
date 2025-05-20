class TaskModel {
  int? id;
  String titre;
  String contenu;
  bool done;
  String created_at;

  TaskModel({
    this.id,
    required this.contenu,
    required this.titre,
    required this.done,
    required this.created_at,
  });

  //Convert json to TaskModel

  factory TaskModel.fromJson(Map<String, dynamic> json) {
    return TaskModel(
      id: json['id'],
      titre: json['titre'],
      contenu: json['contenu'],
      done: json['done'],
      created_at: json['created_at'],
    );
  }

  //concert TaskModel to Json
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'titre': titre,
      'contenu': contenu,
      'done': done,
      'created_at': created_at,
    };
  }
}
