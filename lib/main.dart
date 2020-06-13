import 'package:credpaluidesign/edit_profile_screen.dart';
import 'package:credpaluidesign/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      theme: ThemeData(primaryColor: Color(0xFF274FED)),
      home: HomeScreen(),
      routes: {
        "/edit_profile": (_) => EditProfileScreen()
      },
    );
  }
}


// Todo create a custom TextFormFieldClass
// Todo export the icons from the figma page
// Todo work on the textInputType that the formField Can collect

// todo Change the TextInputFormField to DropdownButtonFormField

