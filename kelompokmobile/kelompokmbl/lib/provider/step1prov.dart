import 'package:flutter/material.dart';

class Step1Provider extends ChangeNotifier {
  final data = {
    "data": [
      {
        "title": "Consultation",
        "subtitle": "First visit is free",
        "img": "assets/image1.jpeg"
      },
      {
        "title": "Toothache",
        "subtitle": "You have tooth pain",
        "img": "assets/image2.jpeg"
      },
      {
        "title": "Orthodontics",
        "subtitle": "Braces appointment",
        "img": "assets/image3.jpeg"
      },
      {
        "title": "Prophylaxis",
        "subtitle": "Teeth cleaning",
        "img": "assets/image4.jpeg"
      },
      {
        "title": "Whitening",
        "subtitle": "Teeth Whitening",
        "img": "assets/image5.jpeg"
      },
      {
        "title": "Hyaluronic Fillers",
        "subtitle": "Throbbing tooth pain",
        "img": "assets/image6.jpeg"
      },
    ]
  };
}
