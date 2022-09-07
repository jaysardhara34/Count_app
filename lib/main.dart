import 'package:add_min/screens/home/provider/homeProvider.dart';
import 'package:add_min/screens/home/view/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => HomeProvider(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Homescreen(),
      },
    ),
  ));
}
