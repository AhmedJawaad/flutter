import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'bmiresult.dart';

class StateApp extends StatefulWidget {
  const StateApp({super.key});

  @override
  State<StateApp> createState() => _StateAppState();
}

class _StateAppState extends State<StateApp> {
  bool isMale = true;
  int height = 120;
  int weight=50;
  int age=25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [],
          backgroundColor: Colors.black,
          title: const Text("Calc App"),
          centerTitle: true),
      body: Container(
        color: Colors.black87,
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => {
                        setState(
                          () => {this.isMale = true},
                        )
                      },
                      child: Container(
                          margin: EdgeInsets.all(20),
                          //padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: this.isMale
                                ? Colors.pinkAccent
                                : Colors.black54,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.male,
                                size: 75,
                                color: Colors.white,
                              ),
                              Text(
                                "Male",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          )),
                    ),
                  ),
                  Expanded(
                      child: GestureDetector(
                    onTap: () => setState(
                      () => {this.isMale = false},
                    ),
                    child: Container(
                        margin: EdgeInsets.all(20),
                        //padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color:
                              !this.isMale ? Colors.pinkAccent : Colors.black54,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female_outlined,
                              size: 75,
                              color: Colors.white,
                            ),
                            Text(
                              "Female",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "Female",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        )),
                  )),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black38,
                  borderRadius: BorderRadius.circular(20),
                ),
                width: double.infinity,
                margin: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Height",
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                    Text(
                      "${this.height}",
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                    Slider(
                        value: this.height.toDouble(),
                        min: 85.0,
                        max: 185.0,
                        onChanged: (value) {
                          this.height = value.toInt();
                          setState(() {});
                        })
                  ],
                ),
              ),
            ),
            Expanded(child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black45,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Weight",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        Text(
                          "${this.weight}",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        Row(
                          
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              mini: true,
                              onPressed: () {
                                  if(this.weight!=120){
                                  this.weight++;
                                  setState(() {
                                    
                                  });

                                }
                              },
                              child: Icon(
                                Icons.add,
                                size: 15,
                              ),
                            ),
                            SizedBox(width: 10,),
                            FloatingActionButton(
                              mini: true,
                              onPressed: () {
                                  if(this.weight!=25){
                                  this.weight--;
                                  setState(() {
                                    
                                  });

                                }

                              },
                              child: Icon(
                                Icons.remove,
                                size: 15,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.black45,
                    borderRadius: BorderRadius.circular(20),
                  ),
                child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Age",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        Text(
                          "${this.age}",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              mini: true,
                              onPressed: () {
                                if(this.age!=120){
                                  this.age++;
                                  setState(() {
                                    
                                  });

                                }
                              },
                              child: Icon(
                                Icons.add,
                                size: 15,
                              ),
                            ),
                            SizedBox(width: 10,),
                            FloatingActionButton(
                              mini: true,
                              onPressed: () {
                                if(this.age!=15){
                                  this.age--;
                                  setState(() {
                                    
                                  });

                                }
                              },
                              child: Icon(
                                Icons.remove,
                                size: 15,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                ),),
              ],
            ),),
            
         GestureDetector(
          onTap: () {
            int res=(weight/pow(height/100,2)).round();
          
            Navigator.push(context, MaterialPageRoute(builder: (context)=>BmiResultScreen(gender:this.isMale,age:this.age,result:res))); 
          },
           child: Container(
            
            width: double.infinity,
            margin: EdgeInsetsDirectional.all(10),
            decoration: BoxDecoration(
            color: Colors.pinkAccent,
            borderRadius: BorderRadius.all(Radius.circular(25))
            ),
            child: Center(
              heightFactor: 2,
              child: Text("Calculate",style: TextStyle(color: Colors.white,fontSize: 20,),))),
         )
         
          ],
        ),
      ),
    );
  }
}
