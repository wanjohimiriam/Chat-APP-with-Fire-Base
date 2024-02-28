// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:chat_app_f/features/user_auth/presentation/widgets/form_container_widget.dart';
import 'package:chat_app_f/hommy.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool valuefirst = false;
  GlobalKey<FormState> formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Screen_Two(),
          TextButton(
            onPressed: () {
              if (formkey.currentState!.validate()) {
                Navigator.pushNamed(context, '/second');
              }
            },
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SafeHome()));
              },
              child: Container(
                width: 250,
                height: 40,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 7, 33, 54),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          blurRadius: 1.0,
                          spreadRadius: 1,
                          color: Colors.black12,
                          offset: Offset(4, 4))
                    ]),
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Center(
                      child: Text(
                        'Sign In',
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                      ),
                    )),
              ),
            ),
          ),
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
              FormContainerWidget(
                hintText: "Full Name",
                isPasswordField: false,
                validator: (value) {
                  return (value!.isEmpty) ? 'Input Field Required' : null;
                },
                icon: Icon(Icons.person, color: Color.fromARGB(255, 7, 33, 54)),
              ),
              SizedBox(
                height: 20,
              ),
              FormContainerWidget(
                hintText: "password",
                validator: (value) {
                  return (value!.isEmpty) ? 'Input Field Required' : null;
                },
                isPasswordField: false,
                icon: Icon(Icons.lock, color: Color.fromARGB(255, 7, 33, 54)),
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
