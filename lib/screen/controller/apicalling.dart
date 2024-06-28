import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class ApiCalling {
  static final ApiCalling apiCalling = ApiCalling._singleton();
  ApiCalling._singleton();

  Future<String?> apiCall(String movie) async {
    String finalMovie = movie.isNotEmpty == true ? movie : 'Animal';
    String api = 'https://www.omdbapi.com/?t=$finalMovie&apikey=8cb57f05';
    Uri uri = Uri.parse(api);
    Response response = await http.get(uri);

    if (response.statusCode == 200) {
      print('Api Called');
      return response.body;
    }
    return null;
  }
  }