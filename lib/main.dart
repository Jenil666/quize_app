import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quize_app/homepage.dart';
import 'package:quize_app/result.dart';

void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/':(context)=>Homepage(),
      'Seco':(context) => Result(),
    },
  ),);
}