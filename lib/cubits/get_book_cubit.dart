import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_task/cubits/get_book_state.dart';

import '../components/api_components.dart';
import '../models/book_model.dart';

class BookCubit extends Cubit<BookState> {
  BookCubit():super(StateInitialData());
  static BookCubit get(context)=>BlocProvider.of(context);
  BookModel? bookModel;
  List<BookModel> bookList = [];
  void getBookData() async
  {
    bookModel=await  Api().get(
        url: 'https://www.googleapis.com/books/v1/volumes',
        query: {'q': 'programming'}).then((value) {
      List<dynamic> data = jsonDecode(value.body);

      for(int i = 0 ; i <data.length ; i++)
      {
        bookList.add(BookModel.fromJson(data[i]));
      }
      print(value.body);
      emit(StateSuccessData());
    }).catchError((error){
      print(error);
      emit(StateLoadingData());
    });
  }

}