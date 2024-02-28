// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, non_constant_identifier_names

import 'package:chat_app_f/features/user_auth/presentation/widgets/form_container_widget.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  GlobalKey<FormState> formkey = GlobalKey();
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      screen_one(),
      Container(
        child: Column(children: [
          Center(
            child: TextButton(
              onPressed: () {
                if (formkey.currentState!.validate()) {
                  Navigator.pushNamed(context, '/second');
                }
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
                        'Sign Up',
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                      ),
                    )),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  color: Color.fromARGB(255, 7, 33, 54),
                  height: 1.0,
                  width: 70,
                ),
                Text(
                  "Or Sign Up with",
                  style: TextStyle(
                      color: Color.fromARGB(255, 7, 33, 54),
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0),
                ),
                Container(
                  color: Color.fromARGB(255, 7, 33, 54),
                  height: 1.0,
                  width: 70,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
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
                        child: ListTile(
                      leading: Icon(Icons.shopping_bag),
                      title: Text(
                        "Google",
                        style: TextStyle(
                            color: Color.fromARGB(255, 7, 33, 54),
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                    ))),
              ),
              Container(
                  width: 150,
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
                  child: ListTile(
                    leading: Icon(
                      Icons.shopping_bag,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Facebook",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ]),
      ),
      Container(
        height: 83.9,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 7, 33, 54),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0))),
      ),
    ]);
  }

  Widget screen_one() {
    return Column(children: [
      SizedBox(
        height: 20,
      ),
      Center(
        child: Text(
          "Create An Account",
          style: TextStyle(
            color: Color.fromARGB(255, 7, 33, 54),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Form(
        key: formkey,
        child: Column(
          children: [
            FormContainerWidget(
              hintText: "User Name",
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
              hintText: "Email",
              isPasswordField: false,
              validator: (value) {
                return (value!.isEmpty) ? 'Input Field Required' : null;
              },
              icon: Icon(Icons.email, color: Color.fromARGB(255, 7, 33, 54)),
            ),
            SizedBox(
              height: 20,
            ),
            FormContainerWidget(
              hintText: "Password",
              isPasswordField: false,
              validator: (value) {
                return (value!.isEmpty) ? 'Input Field Required' : null;
              },
              icon: Icon(Icons.lock, color: Color.fromARGB(255, 7, 33, 54)),
            ),
            
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    ]);
  }
}
