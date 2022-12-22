 import 'package:flutter/material.dart';
import 'package:blog_app_project/welcome.dart';

void main()
{
  runApp((MyApp()));
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WelcomePage() ,
    );
  }
}

