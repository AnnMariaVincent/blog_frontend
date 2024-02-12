import 'dart:math';

import 'package:blog_frondend/service/postservice.dart';
import 'package:flutter/material.dart';

class newlogin extends StatefulWidget {
  const newlogin({super.key});

  @override
  State<newlogin> createState() => _newloginState();
}

class _newloginState extends State<newlogin> {
  String getname="",getage="",getphno="",getpin="",getemail="",getpass="";
  TextEditingController name=new TextEditingController();
  TextEditingController age=new TextEditingController();
  TextEditingController phno=new TextEditingController();
  TextEditingController pin=new TextEditingController();
  TextEditingController email=new TextEditingController();
  TextEditingController pass=new TextEditingController();
  void sendbutton()async{
    final response=await PostApiService().sendbutton(name.text, age.text, phno.text, pin.text,email.text,pass.text);
    if (response['status'] == 'sucess') {
      print("sucessfully add");
    }
    else {
      print("error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30,),

              TextField(
                controller: name,
                decoration: InputDecoration(
                    labelText: "Name",
                    hintText: "Enter Name"
                ),
              ),
              SizedBox(height: 30,),

              TextField(
                controller: age,
                decoration: InputDecoration(
                    labelText: "Age",
                    hintText: "Enter Age"
                ),
              ),
              SizedBox(height: 30,),

              TextField(
                controller: phno,
                decoration: InputDecoration(
                    labelText: "Phone no",
                    hintText: "Enter Phone no"
                ),
              ),
              SizedBox(height: 30,),

              TextField(
                controller: pin,
                decoration: InputDecoration(
                    labelText: "pin",
                    hintText: "Enter pin"
                ),
              ),
              SizedBox(height: 30,),
              TextField(
                controller: email,
                decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "Enter email id"
                ),
              ),
              SizedBox(height: 30,),

              TextField(
                controller: pass,
                decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Enter Password"
                ),
              ),
              ElevatedButton(
                  onPressed: sendbutton,
                  child: Text("REGISTER")
              ),
              ElevatedButton(
                  onPressed: (){
                    Navigator.pop(context);



                  },
                  child: Text("BACK TO LOGIN")
              ),
            ],
          ),
        ),
      ),
    );
  }
}
