import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_bloc/ToDoApp/blocs/todo_filter/todo_filter_bloc.dart';
import 'package:learning_bloc/ToDoApp/models/to_do_filter_model.dart';
import 'package:learning_bloc/ToDoApp/screens/home_screen.dart';

import 'blocs/todo_bloc/todo_bloc.dart';

class ToDoMaterialApp extends StatelessWidget {
  const ToDoMaterialApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<TodoBloc>(
            create: (context) {
              return TodoBloc();
            },
          ),
          BlocProvider<TodoFilterBloc>(
            create: (context) {
              return TodoFilterBloc(
                  todoBloc: BlocProvider.of<TodoBloc>(context));
            },
          )
        ],
        child: MaterialApp(
          theme: ThemeData(
              primarySwatch: Colors.blue,
              primaryColor: const Color(0xFF000A1F),
              appBarTheme: const AppBarTheme(
                color: Color(0xFF000A1F),
              )),
          title: 'BloC Pattern - Todos',
          home: const HomeScreen(),
        ));
  }
}
