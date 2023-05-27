import 'package:flutter/material.dart';
import 'package:moneyapp/screens/home/screen_home.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: ScreenHome(),
    );
  }
}
