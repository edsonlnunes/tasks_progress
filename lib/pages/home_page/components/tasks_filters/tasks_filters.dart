import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:progress_bar_todo_list_page/enums/filter_option.enum.dart';

import '../../store/home_store.dart';

class TasksFilters extends StatelessWidget {
  final HomeStore homeStore;

  const TasksFilters({Key? key, required this.homeStore}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Observer(
        builder: (_) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ChoiceChip(
                label: const Text(
                  'Todos',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                selectedColor: Colors.blue[100],
                selected: homeStore.filterOptionSelected == FilterOption.all,
                onSelected: (value) =>
                    homeStore.setFilterOption(FilterOption.all),
              ),
              const SizedBox(
                width: 10,
              ),
              ChoiceChip(
                label: const Text(
                  'Completados',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                selectedColor: Colors.blue[100],
                selected:
                    homeStore.filterOptionSelected == FilterOption.complete,
                onSelected: (value) =>
                    homeStore.setFilterOption(FilterOption.complete),
              ),
              const SizedBox(
                width: 10,
              ),
              ChoiceChip(
                label: const Text(
                  'A fazer',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                selectedColor: Colors.blue[100],
                selected:
                    homeStore.filterOptionSelected == FilterOption.incomplete,
                onSelected: (value) =>
                    homeStore.setFilterOption(FilterOption.incomplete),
              ),
            ],
          );
        },
      ),
    );
  }
}
