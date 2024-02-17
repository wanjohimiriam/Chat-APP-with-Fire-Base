// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool valuefirst = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Screen_Two(),
          Bottom(),
        ],
      ),
    );
  }

  Widget Screen_Two() {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
              child: Text(
            "Welcome Back !",
            style: TextStyle(
              color: Color.fromARGB(255, 7, 33, 54),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          )),
          SizedBox(
            height: 20,
          ),
          Form(
              child: Column(
            children: [
              Container(
                width: 280,
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(17.0),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          blurRadius: 1.5,
                          spreadRadius: 1,
                          color: Colors.black26,
                          offset: Offset(4, 4))
                    ]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(

                      //controller: TextEditingController(text: "Full Name"),
                      style: TextStyle(fontSize: 15),
                      decoration: InputDecoration(
                          hintText: "Full Name",
                          icon: Icon(
                            Icons.person,
                            color: Color.fromARGB(255, 7, 33, 54),
                          ),
                          // iconColor: Color.fromARGB(255, 22, 1, 59),
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 280,
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(17.0),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          blurRadius: 1.5,
                          spreadRadius: 1,
                          color: Colors.black26,
                          offset: Offset(4, 4))
                    ]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                      //controller: TextEditingController(text: "Full Name"),
                      style: TextStyle(fontSize: 15),
                      decoration: InputDecoration(
                          hintText: "Password",
                          icon: Icon(Icons.lock,
                              color: Color.fromARGB(255, 7, 33, 54)),
                          suffixIcon: Icon(Icons.visibility,
                              color: Color.fromARGB(255, 7, 33, 54)),
                          // iconColor: Color.fromARGB(255, 7, 33, 54),
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none))),
                ),
              ),
            ],
          )),
          ListTile(
            leading: Checkbox(
                activeColor: Colors.black,
                value: valuefirst,
                onChanged: (value) {
                  setState(() {
                    valuefirst = value!;
                  });
                }),
            title: Text(
              "Remember Password",
              style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 7, 33, 54)),
            ),
            trailing: Text(
              "Forgot Password ??",
              style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }

  Widget Bottom() {
    return Column(
      children: [
        SizedBox(
          height: 140,
        ),
        Container(
          height: 81.9,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 7, 33, 54),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0))),
        ),
      ],
    );
  }
}
