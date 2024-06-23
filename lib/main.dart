//import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:loginpageassign/login.dart';
import 'package:loginpageassign/signup.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Homepage(),


  ));
}

class Homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30,vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                       Text(
                         "Welcome",
                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 30,
                         ),
                       ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("We belive in Safety 1st",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,


                  ),)
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height/3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                   image: AssetImage("assets/welcome logo.png")
                  )
                ),
              ),
              Column(
                children: <Widget>[
                  //login button

                     MaterialButton(


                     minWidth: double.infinity,
                      height: 60,
                        onPressed: (){
                     Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginPage()));
                    },
                       shape: RoundedRectangleBorder(
                           side: BorderSide(
                               color: Colors.black
                           ),
                           borderRadius: BorderRadius.circular(50)
                       ),
                       child: Text(
                         "Log in",
                         style: TextStyle(
                           fontWeight: FontWeight.w600,
                           fontSize: 18,
                         ),
                       ),
                     ),
                       // singup button
                  SizedBox(height: 20),
                       MaterialButton(
                         minWidth: double.infinity,
                         height: 60,
                         onPressed: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=> SignupPage()));
                         },

                       color: Color(0xff9500FF),
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(50)
                       ),
                       child: Text(
                         "Sign Up",
                         style: TextStyle(
                           color: Colors.white,
                           fontWeight: FontWeight.w600,
                           fontSize: 18

                         ),
                       ),
                       ),

                ],
              )
            ],
          ),
          
        ),
      ),
    );
  }
}

