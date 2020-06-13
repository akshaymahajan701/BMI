import 'dart:ui';

import 'package:BMI/customwidget.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
      child:Scaffold(
          appBar: customAppBar(),
          body: Text("Hello World",
          style: TextStyle(
              fontSize: 50.0,
              color: Color(0xFFFFFFFF),
           ),
          ),
        ),
      ),
    );
  }
}