import 'package:button_problem/custom_button.dart';
import 'package:button_problem/next_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
     home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Button"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Text("Button loading problem Solved"),
          SizedBox(height: 20,),
          CustomButton(text: "Next Page", onAction: (){
            Get.to(NextPage());
          })
        ],
      ),
    );
  }
}
