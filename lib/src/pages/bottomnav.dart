import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../constants/colors/app_theme.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  bool status = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Color(0xff00CECE),
        title: Center(

    child: Center(child: Text("Settings",style: TextStyle(fontFamily: "Intent",
        fontWeight: FontWeight.w700),
    )),),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(30),
        height: 56,
        width: 300,
        decoration: BoxDecoration(
            color: Color(0xffE6F4F1),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.2),
                blurRadius: 30,
                offset: Offset(0, 20),
              ),
            ],
            borderRadius: BorderRadius.circular(50)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              child: Icon(Icons.abc_outlined),
              onTap: () {},
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.home_outlined)),
            ElevatedButton(
              onPressed: () {},
              child: Icon(Icons.home_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
