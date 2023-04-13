import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:progress_bar_todo_list_page/app/pages/home_page/store/home_store.dart';

class ProgressBar extends StatelessWidget {
  final HomeStore homeStore;

  const ProgressBar({Key? key, required this.homeStore}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 20,
        child: Observer(
          builder: (_) {
            return LinearProgressIndicator(
              value: homeStore.completedTasks / homeStore.tasks.length,
            );
          },
        ));
  }
}
