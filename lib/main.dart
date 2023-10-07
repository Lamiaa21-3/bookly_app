import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_task/cubits/get_book_cubit.dart';
import 'package:new_task/screens/home_page_screens.dart';
import 'cubits/get_book_state.dart';

void main() {
  runApp(BlocProvider(
    create: (context){
      return BookCubit(StateInitialData())..getBookData();

    },
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp

  ({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageScreen(),
      theme : ThemeData(
        brightness: Brightness.dark
      ),
    );
  }
}