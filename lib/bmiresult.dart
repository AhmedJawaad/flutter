import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BmiResultScreen extends StatelessWidget {
  
final int age;
final bool gender;
final int result;
  BmiResultScreen({required this.gender,required this.age,required this.result});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Result"),),
      body: Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Gender : ${gender ? 'Male' :'Female'}", 
            style: TextStyle(
              fontSize: 20
            ),
            ),
            Text("Age : $age", 
            style: TextStyle(
              fontSize: 20
            ),),
            Text("Result : $result", 
            style: TextStyle(
              fontSize: 20
            ),),
           
          ],
        ),
      ),
    ),
    );

  }
}