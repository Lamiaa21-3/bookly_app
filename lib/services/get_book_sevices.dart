
import 'dart:convert';

import 'package:http/http.dart' as http ;
import 'package:new_task/components/api_components.dart';
import 'package:new_task/models/book_model.dart';

class GetBookServices {
  Future<BookModel> getBookServices () async
  {
  var queryParameter = {
    'q' : 'programming',
  };



      var url = Uri.https('www.googleapis.com' ,'/books/v1/volumes' ,queryParameter) ;
      http.Response response= await http.get(url);

      Map<String, dynamic> data = jsonDecode(response.body);
      //Map<String,dynamic> bookList ;
      BookModel bookModel = BookModel.fromJson(data);
      print('donnnnnnnnnnnnnnnne');

      return bookModel;

  }
}