import 'package:flutter/material.dart';
import 'package:frontend/models/Task.dart';
import 'package:frontend/providers/task.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    final taskProvider = Provider.of<TaskProvider>(context, listen: false);
    taskProvider.fetchTask(); // récupération initiale des données
  }

  @override
  Widget build(BuildContext context) {
    final taskProvider = Provider.of<TaskProvider>(context);
    TextEditingController titrecontroller = TextEditingController();
    TextEditingController contenucontroller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
          "TodoApp avec API REST",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),

      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              controller: titrecontroller,
              decoration: InputDecoration(
                hintText: "Le titre de votre tâche",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 20),
            child: TextField(
              controller: contenucontroller,
              decoration: InputDecoration(
                hintText: "Le titre de votre tâche",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 10),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                //action
                TaskModel task = TaskModel(
                  contenu: contenucontroller.text,
                  titre: titrecontroller.text,
                  done: false,
                  created_at: "",
                );
                taskProvider.addTask(task);
              },
              child: Text('Ajouter'),
            ),
          ),
          const Divider(),
          Expanded(
            child: Consumer<TaskProvider>(
              builder: (context, provider, child) {
                if (provider.tasks.isEmpty) {
                  return const Center(
                    child: CircularProgressIndicator.adaptive(),
                  );
                } else {
                  return ListView.separated(
                    itemCount: provider.tasks.length,
                    itemBuilder: (context, index) {
                      final task = provider.tasks[index];
                      return ListTile(
                        onLongPress: () {
                          //delete
                          provider.deleteTask(task);
                        },
                        title: Text(
                          task.titre,
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ), // Supposant que TaskModel a une propriété 'titre'

                        subtitle: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              task.contenu,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                            SizedBox(height: 10),
                            Text(
                              // Les formats qu'on peut utilsie
                              //'yyyy-MM-dd' → 2025-05-20
                              // 'dd MMM yyyy' → 20 mai 2025
                              // 'EEEE d MMMM yyyy – HH:mm' → lundi 20 mai 2025 – 14:30
                              DateFormat(
                                'EEEE d MMMM yyyy',
                              ).format(DateTime.parse(task.created_at)),
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ), // Supposant que TaskModel a une propriété 'description'
                        trailing: Checkbox(
                          checkColor: Colors.green,
                          // fillColor: Colors.green,
                          focusColor: Colors.green,

                          // activeColor: Colors.green,
                          value: task.done,
                          onChanged: (value) {
                            task.done = !task.done;
                            provider.updateTask(task);
                          },
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => const Divider(),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
