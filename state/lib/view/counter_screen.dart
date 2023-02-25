import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state/view/widgets/button.dart';

import '../cubit/counter_cubit.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<CounterCubit, CounterState>(
        builder: (context, state) {
          return Center(
            child: Text(
              state.count.toString(),
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          );
        },
      ),
      floatingActionButton: BlocBuilder<CounterCubit, CounterState>(
        builder: (context, state) {
          return Button(
              iconPlus: Icons.plus_one,
              iconMinus: Icons.exposure_minus_1_sharp);
        },
      ),
    );
  }
}
