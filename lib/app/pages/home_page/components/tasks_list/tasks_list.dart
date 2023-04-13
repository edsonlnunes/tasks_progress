import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:progress_bar_todo_list_page/app/pages/home_page/store/home_store.dart';

import 'task_item.dart';

class TasksList extends StatelessWidget {
  final HomeStore homeStore;

  const TasksList({
    Key? key,
    required this.homeStore,
  }) : super(key: key);

  List<TaskItem> _renderTaskItems({String? filter}) {
    if (filter == 'completed') {
      return homeStore.tasks
          .where((task) => task['isCompleted'] == true)
          .map((task) {
        return TaskItem(
          uid: task['uid'],
          text: task['text'],
          isCompleted: task['isCompleted'],
          homeStore: homeStore,
        );
      }).toList();
    }

    if (filter == 'incomplete') {
      return homeStore.tasks
          .where((task) => task['isCompleted'] == false)
          .map((task) {
        return TaskItem(
          uid: task['uid'],
          text: task['text'],
          isCompleted: task['isCompleted'],
          homeStore: homeStore,
        );
      }).toList();
    }

    return homeStore.tasks.map((task) {
      return TaskItem(
        uid: task['uid'],
        text: task['text'],
        isCompleted: task['isCompleted'],
        homeStore: homeStore,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return SingleChildScrollView(
        child: Column(
          children: [..._renderTaskItems(filter: homeStore.appliedFilter)],
        ),
      );
    });
  }
}
