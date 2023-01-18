



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Global{
  static List<Map<String , dynamic>> product = [
    {
      'image' : "assetas/images/1.jpeg",
      'title' : "Bag",
      'price' : 55,
    },
    {
      'image' : "assetas/images/2.jpeg",
      'title' : "Goggles",
      'price' : 40,
    },
    {
      'image' : "assetas/images/3.jpeg",
      'title' : "Belt",
      'price' : 67,
    },
    {
      'image' : "assetas/images/3.5.jpeg",
      'title' : "Shirt",
      'price' : 45,
    },
    {
      'image' : "assetas/images/4.jpeg",
      'title' : "Jeans",
      'price' : 150,
    },
    {
      'image' : "assetas/images/5.jpeg",
      'title' : "watch",
      'price' : 55,
    },
    {
      'image' : "assetas/images/6.jpeg",
      'title' : "pen",
      'price' : 122,
    },
  ];
  static   List<Map<String , dynamic>> A1 = [];
  static double totals = 0;
  static double tax = 0;
}