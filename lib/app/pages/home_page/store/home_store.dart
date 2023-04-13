import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store {
  @observable
  ObservableList<Map<String, dynamic>> tasks = [
    {
      "uid": 1,
      "text": "Instalar o flutter",
      "isCompleted": false,
    },
    {
      "uid": 2,
      "text": "Instalar o Android Studio",
      "isCompleted": false,
    },
    {
      "uid": 3,
      "text": "Adicionar as extensões no Android Studio",
      "isCompleted": false,
    },
    {
      "uid": 4,
      "text": "Instalar o VS Code",
      "isCompleted": false,
    },
    {
      "uid": 5,
      "text": "Adicionar as extensões no VS Code",
      "isCompleted": false,
    },
    {
      "uid": 6,
      "text": "Aceitar as licenças do Android",
      "isCompleted": false,
    },
    {
      "uid": 7,
      "text": "Rodar flutter doctor",
      "isCompleted": false,
    },
    {
      "uid": 8,
      "text": "Criar projeto flutter",
      "isCompleted": false,
    },
    {
      "uid": 9,
      "text": "Abrir emulador android/ios",
      "isCompleted": false,
    },
    {
      "uid": 10,
      "text": "Rodar projeto",
      "isCompleted": false,
    },
  ].asObservable();

  @observable
  Map<String, bool> filtersSelection = {
    "all": true,
    "completed": false,
    "incomplete": false,
  }.asObservable();

  @observable
  String appliedFilter = '';

  @computed
  double get completedTasks => tasks
      .where((task) => task['isCompleted'] == true)
      .toList()
      .length
      .toDouble();

  @action
  void toggleIsCompleted(int key, bool value) {
    final tempList = List<Map<String, dynamic>>.from(tasks);

    for (var task in tempList) {
      if (task['uid'] == key) {
        task['isCompleted'] = value;
      }
    }

    tasks = ObservableList.of(tempList);
  }

  @action
  void manageFiltersSelection(String filter) {
    if (filter == 'completed') {
      filtersSelection["all"] = false;
      filtersSelection["completed"] = true;
      filtersSelection["incomplete"] = false;

      appliedFilter = 'completed';

      return;
    }

    if (filter == 'incomplete') {
      filtersSelection["all"] = false;
      filtersSelection["completed"] = false;
      filtersSelection["incomplete"] = true;

      appliedFilter = 'incomplete';

      return;
    }

    filtersSelection["all"] = true;
    filtersSelection["completed"] = false;
    filtersSelection["incomplete"] = false;

    appliedFilter = '';
  }
}
