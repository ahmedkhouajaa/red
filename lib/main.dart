import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: Container(
            width: double.infinity,
            color: Colors.blue,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 90),
                Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Login",
                            style:
                                TextStyle(color: Colors.white, fontSize: 50)),
                        SizedBox(height: 10),
                        Text("Welcome Back",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                      ],
                    )),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                    child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Column(
                        children: [
                          const SizedBox(height: 50),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromRGBO(50, 80, 30, 5),
                                    blurRadius: 20,
                                    offset: Offset(0, 10),
                                  )
                                ]),
                            child: Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(15),
                                  decoration: const BoxDecoration(
                                      border: Border(
                                          bottom:
                                              BorderSide(color: Colors.grey))),
                                  child: const TextField(
                                    decoration: InputDecoration(
                                        hintText: "Enter Your Email",
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                        border: InputBorder.none),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: const BoxDecoration(
                                      border: Border(
                                          bottom:
                                              BorderSide(color: Colors.grey))),
                                  child: const TextField(
                                    decoration: InputDecoration(
                                        hintText: "Enter your Password",
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                        border: InputBorder.none),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          const Text(
                            "forgot password ?",
                            style: TextStyle(color: Colors.grey),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Container(
                            height: 50,
                            margin: const EdgeInsets.symmetric(horizontal: 50),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.blue),
                            child: const Center(
                                child: Text(
                              "login",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            )),
                          ),
                          const SizedBox(height: 50),
                          const Text(
                            "continue with social media",
                            style: TextStyle(color: Colors.grey),
                          ),
                          const SizedBox(height: 40),
                          Row(
                            children: [
                              Expanded(
                                  child: Container(
                                height: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: Colors.blue),
                                child: const Center(
                                    child: Text(
                                  "continue With Facbook",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                )),
                              ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ))
              ],
            ),
          ),
        ));
  }
}
