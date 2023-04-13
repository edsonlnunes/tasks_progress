import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:progress_bar_todo_list_page/app/pages/home_page/store/home_store.dart';

class TasksFilters extends StatelessWidget {
  final HomeStore homeStore;

  const TasksFilters({Key? key, required this.homeStore}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        child: Observer(
          builder: (_) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  width: 50,
                ),
                ChoiceChip(
                  label: const Text(
                    'Todos',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  selected: homeStore.filtersSelection['all']!,
                  onSelected: (value) =>
                      homeStore.manageFiltersSelection('all'),
                ),
                ChoiceChip(
                  label: const Text(
                    'Completados',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  selected: homeStore.filtersSelection['completed']!,
                  onSelected: (value) =>
                      homeStore.manageFiltersSelection('completed'),
                ),
                ChoiceChip(
                  label: const Text(
                    'A fazer',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  selected: homeStore.filtersSelection['incomplete']!,
                  onSelected: (value) =>
                      homeStore.manageFiltersSelection('incomplete'),
                ),
                const SizedBox(
                  width: 50,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
