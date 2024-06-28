
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musab_demo/constants.dart';
import 'package:musab_demo/screens/products/display.dart';

class Home extends StatefulWidget {
  static String id='home';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: new FloatingActionButton(
        onPressed:(){
          Get.to(DisplayProducts());
        } ,
        child: new Icon(Icons.add,color: Colors.white,),
        backgroundColor: kMainColor,
      ),
    );
  }
}
