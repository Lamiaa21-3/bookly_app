

import 'package:http/http.dart' as http;

class Api {
   Future<dynamic> get({required String url,required Map<String ,dynamic> query}) async
  {
    var uri = Uri.parse(url);
    var uriWithQuery = uri.replace( queryParameters: query);
    return http.get(uriWithQuery);

   }
  }
