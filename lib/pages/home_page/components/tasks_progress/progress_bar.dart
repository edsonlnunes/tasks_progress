import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../store/home_store.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeStore = GetIt.I.get<HomeStore>();
    return Observer(
      builder: (_) {
        return LinearProgressIndicator(
          value: homeStore.progress,
          minHeight: 20,
        );
      },
    );
  }
}
