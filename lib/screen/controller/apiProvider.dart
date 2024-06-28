import 'package:advance_flutter_exam_1/screen/modal/modalclass.dart';
import 'package:flutter/material.dart';

class ApiProvider extends ChangeNotifier{
  Movies movies = Movies();
  bool isLoding = false;

  void getApi(String movie){
    isLoding = true;
    notifyListeners();


  }
}