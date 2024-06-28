import 'package:advance_flutter_exam_1/screen/controller/apicalling.dart';
import 'package:advance_flutter_exam_1/screen/modal/modalclass.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

class ApiProvider extends ChangeNotifier {
  Movies movies = Movies();
  bool isLoading = false;

  ApiProvider() {
    getApi('Animal');
  }

  Future<void> getApi(String movie) async {
    isLoading = true;
    notifyListeners();

    String? jsonData = await ApiCalling.apiCalling.apiCall(movie);

    if (jsonData != null) {
      Map dataList = jsonDecode(jsonData);
      movies = Movies.fromJson(dataList);
      print("Called successfully");
      print(jsonData);

      isLoading = false;
      notifyListeners();
    }
  }
}
