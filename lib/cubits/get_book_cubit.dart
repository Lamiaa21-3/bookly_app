import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_task/cubits/get_book_state.dart';

import '../components/api_components.dart';
import '../models/book_model.dart';
import 'package:http/http.dart' as http;
class BookCubit extends Cubit<BookState> {
  BookCubit():super(StateInitialData());
  static BookCubit get(context)=>BlocProvider.of(context);
  Book? bookModel;

  void getBookData() async
  {
    emit(StateLoadingData());
    await  Api().get(
        url: 'https://www.googleapis.com/books/v1/volumes',
        query: {'q': 'programming'}).then((value) {
          final responsbody=json.decode(value.body);

    bookModel=Book.fromJson(value.data);
    print(bookModel?.kind);

      emit(StateSuccessData());
    }).catchError((error){
      print('error.toString()$error');
      emit(StateErrorgData());
    });
  }

}