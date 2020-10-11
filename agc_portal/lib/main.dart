import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:agc_portal/provider/parent.dart';
import 'package:agc_portal/provider/student.dart';
import 'package:agc_portal/provider/teacher.dart';

import 'package:agc_portal/screens/login_page.dart';
import 'package:agc_portal/screens/parent/main_parent_page.dart';
import 'package:agc_portal/screens/teacher/main_teacher_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider( // The providers that we are gonna use at the app
      providers: [
        ChangeNotifierProvider(
          create: (context) => Parent(),   // parentProvier
        ),

           ChangeNotifierProvider(
          create: (context) => Student(),  // studentparentProvier
        ),

              ChangeNotifierProvider(
          create: (context) => Teacher(),  // teacherProvier
        ),
      ],
      child: MaterialApp(
        title: 'AGC-PORTAL',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.lightBlue,
          accentColor: Colors.transparent,
        ),
        home: Login(), // homepage
        routes: { // route names to mainParentPage and mainTeacherPage
          MainParentPage.routeName: (ctx) => MainParentPage(),
          MainTeacherPage.routeName: (ctx) => MainTeacherPage(),
  
        },
      ),
    );
  }
}
