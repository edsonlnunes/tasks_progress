import 'package:flutter/material.dart';

import '../../../../models/task.model.dart';
import '../../store/home_store.dart';

class TaskItem extends StatelessWidget {
  final Task task;
  final HomeStore homeStore;

  const TaskItem({
    Key? key,
    required this.task,
    required this.homeStore,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(
        task.title,
        style: const TextStyle(
          fontSize: 18,
        ),
      ),
      value: task.completed,
      controlAffinity: ListTileControlAffinity.leading,
      onChanged: (bool? value) {
        homeStore.toggleIsCompleted(task.id, value!);
      },
    );
  }
}
