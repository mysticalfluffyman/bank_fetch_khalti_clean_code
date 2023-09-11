import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:khalti_task/src/presentation/features/search/cubit/banks_cubit.dart';

import '../../../../domain/entities/bank.dart';

class BanksView extends StatelessWidget {
  const BanksView({Key? key, required this.banks}) : super(key: key);
  final List<Bank> banks;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        child: ListView.builder(
          itemCount: banks.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(bottom: 8.0, top: 8.0),
            child: Row(
              children: [
                banks[index].logo == null
                    ? const Icon(
                        CupertinoIcons.money_dollar_circle,
                        size: 35,
                      )
                    : CachedNetworkImage(
                        imageUrl: banks[index].logo ?? '',
                        height: 35,
                        width: 35,
                        placeholder: (_, __) => const Icon(
                          CupertinoIcons.money_dollar_circle,
                          size: 35,
                        ),
                        errorWidget: (_, __, ___) => const Icon(
                          CupertinoIcons.money_dollar_circle,
                          size: 35,
                        ),
                      ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      banks[index].name ?? '',
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 15),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      Align(
          alignment: Alignment.bottomCenter,
          child: TextFormField(
            cursorColor: Colors.deepPurple,
            onChanged: (value) =>
                context.read<BanksCubit>().searchBanks(searchString: value),
            decoration: InputDecoration(
              hintText: 'Search Bank',
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.deepPurple,
              ),
              contentPadding: EdgeInsets.zero,
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      const BorderSide(color: Colors.deepPurple, width: 2)),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.purple)),
            ),
          ))
    ]);
  }
}
