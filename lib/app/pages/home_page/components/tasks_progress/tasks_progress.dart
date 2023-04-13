import 'package:flutter/material.dart';
import 'package:progress_bar_todo_list_page/app/pages/home_page/store/home_store.dart';

import 'progress_bar.dart';

class TasksProgress extends StatelessWidget {
  final HomeStore homeStore;

  const TasksProgress({Key? key, required this.homeStore}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.all(
        10,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.black,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Progresso para finalizar',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ProgressBar(
            homeStore: homeStore,
          ),
        ],
      ),
    );
  }
}
