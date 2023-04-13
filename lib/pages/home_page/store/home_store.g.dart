// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeStore on _HomeStore, Store {
  Computed<double>? _$progressComputed;

  @override
  double get progress => (_$progressComputed ??=
          Computed<double>(() => super.progress, name: '_HomeStore.progress'))
      .value;
  Computed<List<Task>>? _$filteredTaskComputed;

  @override
  List<Task> get filteredTask =>
      (_$filteredTaskComputed ??= Computed<List<Task>>(() => super.filteredTask,
              name: '_HomeStore.filteredTask'))
          .value;

  late final _$tasksAtom = Atom(name: '_HomeStore.tasks', context: context);

  @override
  ObservableList<Task> get tasks {
    _$tasksAtom.reportRead();
    return super.tasks;
  }

  @override
  set tasks(ObservableList<Task> value) {
    _$tasksAtom.reportWrite(value, super.tasks, () {
      super.tasks = value;
    });
  }

  late final _$filterOptionSelectedAtom =
      Atom(name: '_HomeStore.filterOptionSelected', context: context);

  @override
  FilterOption get filterOptionSelected {
    _$filterOptionSelectedAtom.reportRead();
    return super.filterOptionSelected;
  }

  @override
  set filterOptionSelected(FilterOption value) {
    _$filterOptionSelectedAtom.reportWrite(value, super.filterOptionSelected,
        () {
      super.filterOptionSelected = value;
    });
  }

  late final _$_HomeStoreActionController =
      ActionController(name: '_HomeStore', context: context);

  @override
  void toggleIsCompleted(int taskID, bool value) {
    final _$actionInfo = _$_HomeStoreActionController.startAction(
        name: '_HomeStore.toggleIsCompleted');
    try {
      return super.toggleIsCompleted(taskID, value);
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFilterOption(FilterOption option) {
    final _$actionInfo = _$_HomeStoreActionController.startAction(
        name: '_HomeStore.setFilterOption');
    try {
      return super.setFilterOption(option);
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
tasks: ${tasks},
filterOptionSelected: ${filterOptionSelected},
progress: ${progress},
filteredTask: ${filteredTask}
    ''';
  }
}
