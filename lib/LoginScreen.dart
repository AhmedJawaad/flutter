import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  var emailcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
              "https://img.freepik.com/free-vector/white-abstract-background_23-2148817571.jpg?w=996&t=st=1674251858~exp=1674252458~hmac=08c4bdb8b57bf8852b74e820efcd28adc1f818786accb083c0c33414b4189160"),
        ),
      ),
      child: Column(
        children: [
          Expanded(child: Row()),
          Expanded(
            flex: 2,
            child: SizedBox(
              width: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.black87,
                      decoration: TextDecoration.none,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: emailcontroller,
                    keyboardType: TextInputType.phone,
                    onFieldSubmitted: (value) {
                      print(value);
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      label: Text("UserName"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: passwordcontroller,
                    keyboardType: TextInputType.phone,
                    obscureText: true,
                    onFieldSubmitted: (value) {
                      print(value);
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      label: Text("Password"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    onPressed: () => {
                      print("email is " +
                          emailcontroller.text +
                          " and password is " +
                          passwordcontroller.text)
                    },
                    color: Colors.blueAccent,
                    child: Text(
                      "Login",
                      style:TextStyle(color: Colors.white54)
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            
            child: Row(
            
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              
              Container(
                
               padding:EdgeInsetsDirectional.only(end: 20),
                child: Text("Language is English",
                style: TextStyle(
                  color: Colors.blueAccent[100]
                ),
                ),
              )
            ],

          ))
        ],
      ),
    );
  }
}
