import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../store/home_store.dart';
import 'task_item.dart';

class TasksList extends StatelessWidget {
  final HomeStore homeStore;
  const TasksList({
    Key? key,
    required this.homeStore,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return ListView.builder(
          itemCount: homeStore.filteredTask.length,
          itemBuilder: (ctx, index) {
            var task = homeStore.filteredTask[index];
            return TaskItem(task: task, homeStore: homeStore);
          },
        );
      },
    );
  }
}
