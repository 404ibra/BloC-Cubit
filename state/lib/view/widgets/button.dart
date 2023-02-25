import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state/cubit/counter_cubit.dart';

class Button extends StatelessWidget {
  IconData iconPlus;
  IconData iconMinus;

  Button({super.key, required this.iconPlus, required this.iconMinus});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, CounterState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              onPressed: () {
                context.read<CounterCubit>().incrementCount();
              },
              child: Icon(iconPlus),
            ),
            FloatingActionButton(
              onPressed: () {
                context.read<CounterCubit>().decrementCount();
              },
              child: Icon(iconMinus),
            ),
          ],
        );
      },
    );
  }
}
