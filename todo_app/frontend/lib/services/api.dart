import 'package:dio/dio.dart';
import 'package:frontend/models/Task.dart';

class ApiService {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl:
          // '172.20.222.105' : pour ensam GIA
          'http://192.168.11.105:8000', // Remplacez par l'URL de votre API on lance le server avec 0.0.0.0:8000
      headers: {'Content-Type': 'application/json'},
    ),
  );

  //get Task
  Future<List<TaskModel>> getTask() async {
    try {
      final response = await _dio.get('/todo/tasks/');
      return (response.data as List)
          .map((task) => TaskModel.fromJson(task))
          .toList();
    } catch (e) {
      return [];
    }
  }

  // add task
  Future<void> addTask(TaskModel task) async {
    try {
      await _dio.post('/todo/tasks/', data: task.toJson());
    } catch (e) {
      //Error
      print(">> Error: $e");
    }
  }

  //Update task
  Future<void> updateTask(TaskModel task) async {
    try {
      await _dio.put('/todo/tasks/${task.id}/', data: task.toJson());
    } catch (e) {
      //Error
      print(">> Error: $e");
    }
  }

  // delete Task
  Future<void> deleteTask(TaskModel task) async {
    try {
      await _dio.delete('/todo/tasks/${task.id}/');
    } catch (e) {
      //Error
      print(">> Error: $e");
    }
  }
}
