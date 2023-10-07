import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_task/cubits/get_book_state.dart';

import '../components/api_components.dart';

class BookCubit extends Cubit<BookState> {
  BookCubit(super.initialState);
  void getBookData()
  {
    Api().get(
        url: 'https://www.googleapis.com/books/v1/volumes',
        query: {'q': 'programming'}).then((value) {
      print(value.body);
      emit(StateSuccessData());
    }).catchError((error){
      print(error);
      emit(StateFailureData());
    });
  }

}