import 'package:BMI/customwidget.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
  
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(color: Color(0xFF000000),),
        scaffoldBackgroundColor: Color(0xFF1f4068),
        textTheme: TextTheme(bodyText1: TextStyle(color: Color(0xFFFFFFFF),),),
      ),
      home: SafeArea(
        child: Scaffold(
          appBar: customAppBar(),
          body: BackCard(),
        ),
      ),
      
    );
  }
}