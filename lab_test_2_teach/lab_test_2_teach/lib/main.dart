import 'package:flutter/material.dart';
import 'package:lab_test_2_teach/listviews.dart';
import 'package:lab_test_2_teach/myapp.dart';
import 'package:lab_test_2_teach/provider/cart.dart';
import 'package:lab_test_2_teach/provider/shop.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(ChangeNotifierProvider(
    create: (context) => Cart(),
    child: MaterialApp(
      home: Listviews(),
    ),
  ));
}
