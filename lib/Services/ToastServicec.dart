import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Toastservicec {

  void onSuccessToast(String title){
    Fluttertoast.showToast(
        msg: title,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.green,
      textColor: Colors.black,
      toastLength: Toast.LENGTH_LONG,
      webPosition: ToastGravity.BOTTOM
    );
  }
}
