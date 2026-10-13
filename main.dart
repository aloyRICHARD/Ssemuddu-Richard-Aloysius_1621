import 'package:flutter/material.dart';

void main(){
  
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(

      appBar: AppBar(
        title: Text("Student Registration System",  
        style: TextStyle(fontFamily: "Tahoma", 
            fontWeight: FontWeight.bold, 
            color: const Color.fromARGB(138, 164, 61, 61)),),
            centerTitle: true,
            backgroundColor: const Color.fromRGBO(38, 128, 158, 1),
              ),


          body: Center(
            
            child: Column(
              children:[ SizedBox(height: 25 ),
              (Text("Welcome to the Student Registration System! Please log in to continue!", 
          style: TextStyle(fontSize: 15, 
                  fontWeight: FontWeight.normal,), 
                  textAlign: TextAlign.center,)),
                  SizedBox(height: 25),
                  Icon(Icons.school, size: 100, color: const Color.fromARGB(137, 30, 114, 129),),

                  SizedBox(height: 40),

              SizedBox(
                width: 300,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person_outline),
                    labelText: "student ID",
                    border: OutlineInputBorder(),
                  ),
              ),),

              SizedBox(height: 20),

              SizedBox(
                width: 300,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_outline),
                    labelText: "Password",
                    border: OutlineInputBorder(),
                  ),
              obscureText: true,
              ),
              ),
              SizedBox(width: 300, height: 20,
            child: Align(alignment: Alignment.centerRight, child: Text("Forgot Password?", style: TextStyle(fontSize: 12, color: const Color.fromARGB(218, 248, 31, 11)),)),),

              SizedBox(height: 20),

              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(child: Text("Login", style: TextStyle(fontWeight: FontWeight.bold,)),
              onPressed: () {    },
            ),
            ),
            ],

    ),

    ),
    ),
    ),
    );
  }