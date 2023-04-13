import 'package:flutter/material.dart';
import 'package:progress_bar_todo_list_page/app/pages/home_page/store/home_store.dart';

class TaskItem extends StatelessWidget {
  final int uid;
  final String text;
  final bool isCompleted;
  final HomeStore homeStore;

  const TaskItem({
    Key? key,
    required this.uid,
    required this.text,
    required this.isCompleted,
    required this.homeStore,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
        ),
      ),
      value: isCompleted,
      controlAffinity: ListTileControlAffinity.leading,
      onChanged: (bool? value) {
        homeStore.toggleIsCompleted(uid, value!);
      },
    );
  }
}
