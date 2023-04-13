import 'package:flutter/material.dart';

import 'components/tasks_filters/tasks_filters.dart';
import 'components/tasks_list/tasks_list.dart';
import 'components/tasks_progress/tasks_progress.dart';
import 'store/home_store.dart';

class HomePage extends StatelessWidget {
  final HomeStore homeStore = HomeStore();

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(
            10,
          ),
          child: Column(
            children: [
              TasksProgress(
                homeStore: homeStore,
              ),
              TasksFilters(
                homeStore: homeStore,
              ),
              TasksList(
                homeStore: homeStore,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
