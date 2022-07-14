import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:music_player/screens/Register_Screen/register_screen.dart';
import 'package:music_player/components/components.dart';
import 'package:music_player/const/consts.dart';

import 'package:music_player/screens/Login_Screen/view/login_screen_imports.dart';
import '../Register_Screen/register_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadiusDirectional.all(Radius.circular(30))),
              child: Image(
                image: AssetImage('assets/images/4.png'),
                height: height(context) * .55,
                width: width(context) ,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: Column(
                children: [
                  Text(
                    'What’s Your Mood Now!',
                    style: TextStyle(
                      fontSize: 62,
                      fontFamily: 'Work Sans',
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Container(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        decoration: BoxDecoration(
                          //color: HexColor('#536DFE'),
                          borderRadius: BorderRadiusDirectional.circular(10),
                        ),
                        child: MaterialButton(
                          height: 58,
                          onPressed: () {
                            navigateTo(context, RegisterScreen());
                          },
                          child: Text(
                            'Register',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          color: HexColor('#7D4EFF'),
                          padding: EdgeInsets.symmetric(
                              horizontal: 40, vertical: 16),
                          //  clipBehavior: Clip.antiAliasWithSaveLayer,
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Container(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        decoration: BoxDecoration(
                          //color: HexColor('#536DFE'),
                          borderRadius: BorderRadiusDirectional.circular(10),
                        ),
                        child: MaterialButton(
                          //colorBrightness: Brightness.dark,
                          height: 58,
                          onPressed: () {
                            navigateTo(context, LoginScreen());
                          },
                          child: Text(
                            'Log In',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          color: Colors.white70,
                          padding: EdgeInsets.symmetric(
                              horizontal: 50, vertical: 16),
                          //  clipBehavior: Clip.antiAliasWithSaveLayer,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
