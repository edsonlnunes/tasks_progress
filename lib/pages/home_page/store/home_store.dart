import 'package:mobx/mobx.dart';
import 'package:progress_bar_todo_list_page/models/task.model.dart';

import '../../../enums/filter_option.enum.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store {
  @observable
  ObservableList<Task> tasks = [
    Task(id: 1, title: "Instalar o flutter"),
    Task(id: 2, title: "Instalar o Android Studio"),
    Task(id: 3, title: "Adicionar as extensões no Android Studio"),
    Task(id: 4, title: "Instalar o VS Code"),
    Task(id: 5, title: "Adicionar as extensões no VS Code"),
    Task(id: 6, title: "Aceitar as licenças do Android"),
    Task(id: 7, title: "Rodar flutter doctor"),
    Task(id: 8, title: "Criar projeto flutter"),
    Task(id: 9, title: "Abrir emulador android/ios"),
    Task(id: 10, title: "Rodar projeto"),
  ].asObservable();

  @observable
  FilterOption filterOptionSelected = FilterOption.all;

  @computed
  double get progress {
    return tasks.where((task) => task.completed).length / tasks.length;
  }

  @computed
  List<Task> get filteredTask {
    if (filterOptionSelected == FilterOption.all) {
      return tasks.toList();
    }

    if (filterOptionSelected == FilterOption.complete) {
      return tasks.where((t) => t.completed).toList();
    }

    if (filterOptionSelected == FilterOption.incomplete) {
      return tasks.where((t) => !t.completed).toList();
    }

    return [];
  }

  @action
  void toggleIsCompleted(int taskID, bool value) {
    final tempList = List<Task>.from(tasks);
    var indexTask = tasks.indexWhere((t) => t.id == taskID);
    tempList[indexTask] = tempList[indexTask].copyWith(completed: value);
    tasks = ObservableList.of(tempList);
  }

  @action
  void setFilterOption(FilterOption option) => filterOptionSelected = option;
}
