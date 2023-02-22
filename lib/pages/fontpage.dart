import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class fontpage extends StatelessWidget {
  const fontpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: null,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Text("Sign in",
                      style: TextStyle(
                          color: Colors.amberAccent,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: Colors.blueAccent,
                            width: 3,
                            style: BorderStyle.solid)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: emailnpass(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: TextButton(
                      onPressed: () {}, child: Text("Forgot Password ")),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "homepage");
                    },
                    child: Container(
                        alignment: Alignment.center,
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.blueAccent),
                        child: Text(
                          "SIGN IN",
                          style: TextStyle(color: Colors.white),
                        ))),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Icon(Icons.check_box_outline_blank),
                      Text(
                        "I agree to all the",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "terms");
                          },
                          child: Text(
                            "Terms and Condition",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }

  Column emailnpass() {
    bool check = false;
    return Column(children: [
      TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            filled: true,
            hintStyle: TextStyle(color: Colors.grey[800]),
            hintText: "Email Address",
            fillColor: Color.fromRGBO(0, 122, 255, 0.107845)),
      ),
      SizedBox(height: 10),
      TextField(
        obscureText: check ? false : true,
        decoration: InputDecoration(
            suffixIcon: GestureDetector(
              child: Icon(Icons.remove_red_eye),
              onLongPress: () {
                check = true;
              },
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            filled: true,
            hintStyle: TextStyle(color: Colors.grey[800]),
            hintText: "Password",
            fillColor: Color.fromRGBO(0, 122, 255, 0.107845)),
      ),
    ]);
  }
}
