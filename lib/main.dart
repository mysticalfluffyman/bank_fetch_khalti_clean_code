import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isar/isar.dart';
import 'package:khalti_task/src/presentation/features/search/cubit/banks_cubit.dart';
import 'package:khalti_task/src/presentation/features/search/views/banks_state_view.dart';
import 'injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.initLocator();

  runApp(const MyApp());
  const Duration cacheClearInterval = Duration(hours: 1);
  Timer.periodic(cacheClearInterval, (Timer timer) async {
    final isar = Isar.getInstance();
    await isar?.close(deleteFromDisk: true);
  });
}

///
class MyApp extends StatelessWidget {
  ///
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(final BuildContext context) => BlocProvider(
        create: (context) => di.serviceLocator.get<BanksCubit>(),
        child: const MaterialApp(
          title: 'Khalti Task',
          home: BanksStateView(),
        ),
      );
}
