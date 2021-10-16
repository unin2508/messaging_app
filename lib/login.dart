

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({Key? key}) : super(key: key);

  @override
  _LoginscreenState createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 70),
          Center(
            child:
              Text(
                "Login",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
          ),
          SizedBox(height: 40),

          Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                child:TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: "Email or phone number",
                    border: OutlineInputBorder(),
                  ),
                ) ,
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.fromLTRB(20, 30, 20, 10),
                child:TextField(
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(),
                  ),
                ) ,
              ),
              Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(right: 10),
                child: TextButton(
                  onPressed:() =>print("checked"),
                  child: Text(
                      "Forgot Password?",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left:20,right: 20),
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: ()=>print("Login"),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )
                    )
                  ),
                  child:Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  )


                ),

              )
            ],

          )
        ],
      ),

    );
  }
}
