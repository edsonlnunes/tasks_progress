import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'components/tasks_filters/tasks_filters.dart';
import 'components/tasks_list/tasks_list.dart';
import 'components/tasks_progress/tasks_progress.dart';
import 'store/home_store.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeStore = GetIt.I.get<HomeStore>();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const TasksProgress(),
              TasksFilters(
                homeStore: homeStore,
              ),
              Expanded(
                child: TasksList(
                  homeStore: homeStore,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
