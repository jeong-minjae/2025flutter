import 'package:button_app/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());//생성자
}

class MyApp extends StatelessWidget {//상속해서 쓸수있음
  const MyApp({super.key});//super는 this의 반대

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Home(),
    );
  }
}

