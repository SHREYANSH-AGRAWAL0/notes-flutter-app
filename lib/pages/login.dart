// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:notes_app/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';
import '../widgets/customContainer.dart';
import '../widgets/customTextFormField.dart';

bool loginOrsignup = false;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

final _loginKey = GlobalKey<FormState>();

void loginUser() {
  if(_loginKey.currentState!.validate()){
   
  }
}


class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(
            children: [
              Image.asset('lib/assets/myimage.jpg'),
              Container(
                padding: EdgeInsets.all(30),
                margin: EdgeInsets.only(top: loginOrsignup ? 300 : 360),
                height: loginOrsignup ? 500 : 440,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                      top: Radius.circular(50), bottom: Radius.zero),
                ),
                child: loginOrsignup
                    ? Column(
                        children: [
                          "Sign-Up"
                              .text
                              .xl4
                              .color(Colors.grey.shade600)
                              .bold
                              .make(),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              customContainer(
                                  text: "Google Account",
                                  prefixIcon: Icons.whatsapp),
                              Spacer(),
                              customContainer(
                                  text: "Facebook Account",
                                  prefixIcon: Icons.facebook),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Spacer(),
                              "Lets get started".text.xl.gray600.make(),
                              Spacer()
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                                hintText: "xyz",
                                labelText: "Name",
                                suffixIcon: Icon(Icons.abc),
                                labelStyle:
                                    TextStyle(fontWeight: FontWeight.bold),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(width: 2)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(width: 2))),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                                hintText: "xyz@gmail.com",
                                labelText: "Email",
                                suffixIcon: Icon(Icons.email),
                                labelStyle:
                                    TextStyle(fontWeight: FontWeight.bold),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(width: 2)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(width: 2))),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                                hintText: "******",
                                labelText: "Password",
                                suffixIcon: Icon(Icons.password),
                                labelStyle:
                                    TextStyle(fontWeight: FontWeight.bold),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(width: 2)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(width: 2))),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Center(
                              child: Container(
                            // ignore: sort_child_properties_last
                            child: "Sign Up"
                                .text
                                .xl
                                .color(Colors.white)
                                .bold
                                .make()
                                .centered(),
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                              color: Colors.blue,
                            ),
                            height: 50,
                            width: 300,
                          )),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Spacer(),
                              Text(
                                "Already have an account? ",
                                style: TextStyle(fontSize: 16),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    loginOrsignup = !loginOrsignup;
                                  });
                                },
                                child: Text(
                                  "LoginIn",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.blue),
                                ),
                              ),
                              Spacer()
                            ],
                          )
                        ],
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "LOGIN".text.xl4.color(Colors.blue).bold.make(),
                          SizedBox(
                            height: 20,
                          ),
                          Form(
                              key: _loginKey,
                              child: Column(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  TextFormField(
                                    validator: ((value) {
                                      if (value == null || value.isEmpty) {
                                        return "Enter Email";
                                      }
                                      final bool emailValid = RegExp(
                                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                          .hasMatch(value.toString());
                                      if (!emailValid) {
                                        return "Email is not in correct format";
                                      }
                                      return null;
                                    }),
                                    cursorColor: Colors.black,
                                    decoration: InputDecoration(
                                        suffixIcon: Icon(Icons.remove_red_eye),
                                        hintText: "abc@gmail.com",
                                        labelText: "Enter Email",
                                        labelStyle: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(width: 2)),
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(width: 2))),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  TextFormField(
                                    validator: ((value) {
                                      if (value!.length < 6) {
                                        return "Length of password is can not be less than 6";
                                      }
                                    }),
                                    cursorColor: Colors.black,
                                    decoration: InputDecoration(
                                        hintText: "********",
                                        labelText: "Enter Password",
                                        suffixIcon: Icon(Icons.lock),
                                        labelStyle: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(width: 2)),
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(width: 2))),
                                  ),
                                ],
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          Center(
                              child: GestureDetector(
                            onTap: (() => loginUser()),
                            child: Container(
                              // ignore: sort_child_properties_last
                              child: "Continue"
                                  .text
                                  .xl
                                  .color(Colors.white)
                                  .bold
                                  .make()
                                  .centered(),
                              decoration: ShapeDecoration(
                                shape: StadiumBorder(),
                                color: Colors.blue,
                              ),
                              height: 50,
                              width: 300,
                            ),
                          )),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Divider(
                                color: Colors.black,
                                endIndent: 10,
                              )),
                              "OR LOGIN USING ".text.xl.make(),
                              Divider(
                                indent: 10,
                                color: Colors.black,
                              ).expand()
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              customContainer(
                                  text: "Google Account",
                                  prefixIcon: Icons.whatsapp),
                              Spacer(),
                              customContainer(
                                  text: "Facebook Account",
                                  prefixIcon: Icons.facebook),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Spacer(),
                              Text(
                                "New User? Create an account ",
                                style: TextStyle(fontSize: 16),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    loginOrsignup = !loginOrsignup;
                                  });
                                },
                                child: Text(
                                  "SignUp",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.blue),
                                ),
                              ),
                              Spacer()
                            ],
                          )
                        ],
                      ),
              ).expand()
            ],
          ),
        ]),
      ),
    );
  }
}
