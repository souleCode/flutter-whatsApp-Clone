import 'package:flutter/widgets.dart';
import 'package:frontend/models/Task.dart';
import 'package:frontend/services/api.dart';

class TaskProvider with ChangeNotifier {
  final ApiService _apiService = ApiService();
  List<TaskModel> _tasks = [];

  List<TaskModel> get tasks => _tasks.reversed.toList();

  Future<void> fetchTask() async {
    _tasks = await _apiService.getTask();
    notifyListeners();
  }

  Future<void> addTask(TaskModel task) async {
    await _apiService.addTask(task);
    fetchTask();
  }

  Future<void> updateTask(TaskModel task) async {
    await _apiService.updateTask(task);
    fetchTask();
  }

  Future<void> deleteTask(TaskModel task) async {
    await _apiService.deleteTask(task);
    fetchTask();
  }
}
