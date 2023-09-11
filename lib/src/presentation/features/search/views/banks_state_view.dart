import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:khalti_task/src/presentation/features/search/cubit/banks_cubit.dart';
import 'package:khalti_task/src/presentation/features/search/views/banks_view.dart';

class BanksStateView extends StatelessWidget {
  const BanksStateView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: BlocBuilder<BanksCubit, BanksState>(
              builder: (context, state) {
                return state.when(
                    initial: () =>
                        const Center(child: CircularProgressIndicator()),
                    loading: () =>
                        const Center(child: CircularProgressIndicator()),
                    fetched: (banks) => BanksView(
                          banks: banks,
                        ),
                    error: (errorMessage) => Center(child: Text(errorMessage)));
              },
            )),
      ),
    );
  }
}
