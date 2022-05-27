// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:pertemuan_3/dashboard.dart';

class halaman1 extends StatefulWidget {
  const halaman1({Key? key}) : super(key: key);

  @override
  _halaman1State createState() => _halaman1State();
}

class _halaman1State extends State<halaman1> {
  bool _validate = false;
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
          child: Column(
        children: <Widget>[
          Container(
            height: 320,
            child: Image.asset(
              'assets/image/pngegg.png',
              width: 200,
              height: 200,
            ),
          ),
          Container(
              height: 363,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: Colors.white),
              child: Column(children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          width: 1,
                          color: Colors.blue,
                          style: BorderStyle.solid)),
                  child: TextField(
                    controller: userController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "Username = riasgremory",
                      border: InputBorder.none,
                      errorText:
                          _validate ? 'Password or Username is Wrong' : null,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          width: 1,
                          color: Colors.blue,
                          style: BorderStyle.solid)),
                  child: TextField(
                    controller: passwordController,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecoration(
                      hintText: "Password = ptm2021",
                      border: InputBorder.none,
                      errorText:
                          _validate ? 'Password or Username is Wrong' : null,
                    ),
                  ),
                ),
                Container(
                  child: ElevatedButton(
                      child: Text('Login'),
                      onPressed: () {
                        setState(() {
                          passwordController.text.contains('ptm2021') &&
                                  userController.text.contains('riasgremory')
                              ? Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const dashboard(),
                                  ),
                                )
                              : _validate = true;
                        });
                      }),
                ),
              ]))
        ],
      )),
    );
  }
}
