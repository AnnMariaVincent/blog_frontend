import 'package:blog_frondend/pages/newlogin.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  String getemail="",getpass="";
  TextEditingController email=new TextEditingController();
  TextEditingController pass=new TextEditingController();
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
                hintText: "Enter Pssword"
            ),

          ),
              SizedBox(height: 30,),

              ElevatedButton(
                  onPressed: (){



              },
                  child: Text("LOGIN")
              ),
              SizedBox(height: 30,),


              ElevatedButton(
                  onPressed: (){

                    Navigator.push(context, MaterialPageRoute(builder: (context)=>newlogin()));



                  },
                  child: Text("NEW USER.......CLICK HERE")
              ),


            ],
          ),
        ),
      ),
    );
  }
}
