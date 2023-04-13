// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeStore on _HomeStore, Store {
  Computed<double>? _$completedTasksComputed;

  @override
  double get completedTasks =>
      (_$completedTasksComputed ??= Computed<double>(() => super.completedTasks,
              name: '_HomeStore.completedTasks'))
          .value;

  late final _$tasksAtom = Atom(name: '_HomeStore.tasks', context: context);

  @override
  ObservableList<Map<String, dynamic>> get tasks {
    _$tasksAtom.reportRead();
    return super.tasks;
  }

  @override
  set tasks(ObservableList<Map<String, dynamic>> value) {
    _$tasksAtom.reportWrite(value, super.tasks, () {
      super.tasks = value;
    });
  }

  late final _$filtersSelectionAtom =
      Atom(name: '_HomeStore.filtersSelection', context: context);

  @override
  Map<String, bool> get filtersSelection {
    _$filtersSelectionAtom.reportRead();
    return super.filtersSelection;
  }

  @override
  set filtersSelection(Map<String, bool> value) {
    _$filtersSelectionAtom.reportWrite(value, super.filtersSelection, () {
      super.filtersSelection = value;
    });
  }

  late final _$appliedFilterAtom =
      Atom(name: '_HomeStore.appliedFilter', context: context);

  @override
  String get appliedFilter {
    _$appliedFilterAtom.reportRead();
    return super.appliedFilter;
  }

  @override
  set appliedFilter(String value) {
    _$appliedFilterAtom.reportWrite(value, super.appliedFilter, () {
      super.appliedFilter = value;
    });
  }

  late final _$_HomeStoreActionController =
      ActionController(name: '_HomeStore', context: context);

  @override
  void toggleIsCompleted(int key, bool value) {
    final _$actionInfo = _$_HomeStoreActionController.startAction(
        name: '_HomeStore.toggleIsCompleted');
    try {
      return super.toggleIsCompleted(key, value);
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void manageFiltersSelection(String filter) {
    final _$actionInfo = _$_HomeStoreActionController.startAction(
        name: '_HomeStore.manageFiltersSelection');
    try {
      return super.manageFiltersSelection(filter);
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
tasks: ${tasks},
filtersSelection: ${filtersSelection},
appliedFilter: ${appliedFilter},
completedTasks: ${completedTasks}
    ''';
  }
}
