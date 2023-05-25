import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:punching_attendance/src/constants/colors/app_theme.dart';
import 'package:sweet_nav_bar/sweet_nav_bar.dart';
import 'package:switch_button/switch_button.dart';

class Punching extends StatefulWidget {
  const Punching({Key? key}) : super(key: key);

  @override
  State<Punching> createState() => _PunchingState();
}

class _PunchingState extends State<Punching> {
  Color color=Colors.yellow;
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff00CECE),
        title: Center(
          child: Center(
              child: Text(
                "Profile",
                style: TextStyle(fontFamily: "Intent", fontWeight: FontWeight.w700),
              )),
        ),
      ),
      bottomNavigationBar: _BottomNavBar(),
      body: Column(children: [
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            height: MediaQuery.of(context).size.height * .2,
            width: MediaQuery.of(context).size.width * 2,
            decoration: BoxDecoration(
              color: (status == false) ? Colors.green : AppTheme.colors.appBule,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20, bottom: 25, top: 25),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1627615608004-f6fba8eca2a1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c2hhZG93JTIwYm95fGVufDB8fDB8fA%3D%3D&w=1000&q=80"),
                    radius: 50,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50, bottom: 50, left: 50),
                  child: FlutterSwitch(
                    width: 100,
                    height: 50,
                    valueFontSize: 20,
                    activeText: "In",
                    activeTextColor: AppTheme.colors.appBule,
                    activeColor: Colors.white,
                    activeTextFontWeight: FontWeight.w700,
                    inactiveText: "Out",
                    inactiveTextFontWeight: FontWeight.w700,
                    inactiveTextColor: AppTheme.colors.appBule,
                    toggleColor: AppTheme.colors.appBule,
                    inactiveColor: Colors.white,
                    toggleSize: 45,
                    value: status,
                    borderRadius: 25,
                    padding: 8.0,
                    showOnOff: true,
                    onToggle: (val) {
                      setState(() {
                        status = val;
                      });
                    },
                  ),
                )
              ],
            ),
          ),
        ),
        ///attendance
        Container(
          width: MediaQuery.of(context).size.width * 50,
          height: MediaQuery.of(context).size.height * .55,
          child: Stack(
            children: [
              _positioned(
                  positionedTop: 18,
                  positionedLeft:  20,
                  positionedRight:  190,
                  positionedText:  'Attendance',
                  positionedColor: Color(0xff95B1B0),
                  positionWidth: MediaQuery.of(context).size.width*.13,
                  positionHeight: MediaQuery.of(context).size.height*.27,
                  textLeft: 35, textTop: 160 ),

              _positioned(
                  positionedTop: 236,
                  positionedLeft:20 ,
                  positionedRight:190 ,
                  positionedText: "Calender",
                  positionedColor:Color(0xffA2B6FF),
                  positionWidth:  MediaQuery.of(context).size.width*.20,
                  positionHeight:  MediaQuery.of(context).size.height*.20,
                  textLeft: 40,
                  textTop: 110),

              _positioned(
                  positionedTop: 186,
                  positionedLeft:190 ,
                  positionedRight:20 ,
                  positionedText: "Leave Manager",
                  positionedColor:Color(0xff6B81CB),
                  positionWidth:  MediaQuery.of(context).size.width*.20,
                  positionHeight:  MediaQuery.of(context).size.height*.27,
                  textLeft: 22,
                  textTop: 160),


              _positioned(
                  positionedTop: 18,
                  positionedLeft:190,
                  positionedRight:20 ,
                  positionedText: "Track Device",
                  positionedColor:Color(0xffA8AABC),
                  positionWidth:  MediaQuery.of(context).size.width*.20,
                  positionHeight:  MediaQuery.of(context).size.height*.20,
                  textLeft: 22,
                  textTop: 110),

            ],
          ),
        ),
      ]),
    );
  }

  Container _BottomNavBar() {
    return Container(
      margin: EdgeInsets.only(right: 30, bottom: 20, left: 30),
      height: 56,
      width: 300,
      decoration: BoxDecoration(
          color: Color(0xffE6F4F1),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.2),
              blurRadius: 30,
              offset: Offset(00, 10),
            ),
          ],
          borderRadius: BorderRadius.circular(50)),
      child: Padding(
        padding: const EdgeInsets.only(top: 8, bottom: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              children: [
                GestureDetector(
                  child: Icon(Icons.home_outlined,
                      color: AppTheme.colors.appGray),
                  onTap: () {
                    setState(() {
                      color = Colors.yellow;
                    });
                  },
                  onDoubleTap: () {
                    setState(() {
                      color = Colors.yellow;
                    });
                  },
                ),
                Text(
                  "Home",
                  style: TextStyle(color: AppTheme.colors.appGray),
                )
              ],
            ),
            Column(
              children: [
                GestureDetector(
                  child: Icon(Icons.person_outline,
                      color: AppTheme.colors.appGray),
                  onTap: () {},
                ),
                Text(
                  "Profile",
                  style: TextStyle(color: AppTheme.colors.appGray),
                )
              ],
            ),
            Column(
              children: [
                GestureDetector(
                  child: Icon(Icons.settings, color: AppTheme.colors.appGray),
                  onTap: () {},
                ),
                Text(
                  "Settings",
                  style: TextStyle(color: AppTheme.colors.appGray),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class _positioned extends StatelessWidget {
  final double positionedTop;
  final double positionedLeft;
  final double positionedRight;
  final String positionedText;
  final Color positionedColor;
  final double positionWidth;
  final double positionHeight;
  final double textLeft;
  final double textTop;

  const _positioned({
    super.key,
    required this.positionedTop,
    required this.positionedLeft,
    required this.positionedRight,
    required this.positionedText,
    required this.positionedColor,
    required this.positionWidth,
    required this.positionHeight,
    required this.textLeft,
    required this.textTop,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: positionedLeft,
      right: positionedRight,
      top:  positionedTop,
      child: Container(
        child: Padding(
          padding:  EdgeInsets.only(
              left: textLeft,
              top: textTop),
          child: Text(positionedText,
              style: TextStyle(
                  fontFamily: "Intent",
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700)),
        ),
        decoration: BoxDecoration(
          color: positionedColor,
          borderRadius: BorderRadius.circular(25),
        ),
        width: positionWidth,
        height: positionHeight,
      ),
    );
  }
}
