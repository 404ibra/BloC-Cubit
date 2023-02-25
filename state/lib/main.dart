import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state/cubit/counter_cubit.dart';
import 'package:state/cubit/fetch_user.dart';
import 'package:state/view/counter_screen.dart';
import 'package:state/view/fetch_name.dart';

void main() {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => FetchCubit(),
      ),
      BlocProvider(
        create: (context) => CounterCubit(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FetchPage(),
    );
  }
}
