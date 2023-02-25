import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state/cubit/fetch_user.dart';

class FetchPage extends StatelessWidget {
  const FetchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<FetchCubit, String?>(
        builder: (context, state) {
          final textButton = TextButton(
              onPressed: () {
                context.read<FetchCubit>().getRandomName();
              },
              child: Text("Fetch Word"));
          if (state != null) {
            return Center(
              child: Column(
                children: [
                  Text(
                    state.toString(),
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  textButton
                ],
              ),
            );
          } else {
            return textButton;
          }
        },
      ),
    );
  }
}
