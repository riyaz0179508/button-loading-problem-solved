import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButton extends StatelessWidget {
  String text;
  final Function onAction;
  CustomButton({Key? key, required this.text, required this.onAction})
      : super(key: key);
  RxBool _value = false.obs;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 22, right: 22, top: 40),
        child: Obx(
          () => InkWell(
            onTap: () async {
              _value.value = true;
              await Future.delayed(Duration(seconds: 1));
              onAction();
              _value.value = false;
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(5)),
              height: 45,
              width: double.maxFinite,
              child: _value == false
                  ? Center(
                      child: Text(text, style: TextStyle(color: Colors.white)))
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Please wait",
                            style: TextStyle(color: Colors.white)),
                        SizedBox(width: 10),
                        Transform.scale(
                            scale: 0.4,
                            child: CircularProgressIndicator(
                              color: Colors.white,
                            )),
                      ],
                    ),
            ),
          ),
        ));
  }
}
