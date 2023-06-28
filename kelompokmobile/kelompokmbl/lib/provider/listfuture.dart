// import 'dart:convert';

import 'package:flutter/material.dart';

class ListFutureScreen extends ChangeNotifier {
  final list = {
    "data": [
      {
        "name": "Drg. Jessie Ramsley",
        "type": "Orthodontist",
        "img": "assets/doctorimg1.jpeg",
        "date": "12/07/2023",
        "time": "10:25 AM"
      },
      {
        "name": "Drg. Thalia Smith",
        "type": "Hyaluronic Fillers",
        "img": "assets/doctorimg2.jpeg",
        "date": "10/08/2023",
        "time": "08:05 PM"
      },
      {
        "name": "Drg. Thalia Smith",
        "type": "Prophylaxis",
        "img": "assets/doctorimg2.jpeg",
        "date": "27/011/2022",
        "time": "04:25 PM"
      },
    ]
  };

  // dynamic _data;
  // dynamic get data => _data;
  // set setData(val) {
  //   var tmp = json.encode(val);
  //   _data = json.decode(tmp);

  //   notifyListeners();
  // }
}
