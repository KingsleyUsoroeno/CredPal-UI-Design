import 'package:credpaluidesign/others/other_profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final Map<int, Widget> logoWidgets = const <int, Widget>{
    0: Text('Personal'),
    1: Text('Security'),
    2: Text('Others'),
  };
  int sharedValue = 0;

  final Map<int, Widget> icons =  <int, Widget>{
    0: Scaffold(
      body: Center(
        child: Text('Personal Page'),
      ),
    ),
    1: Scaffold(
      body: Center(
        child: Text('Security Page'),
      ),
    ),
    2: OtherProfileScreen()
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      IconButton(
                        color: Color(0xFFFE2B5E),
                        icon: Icon(Icons.arrow_back_ios),
                        onPressed: () =>  Navigator.of(context).pop(),
                        iconSize: 20.0,
                      ),
                      Text('Discard', style: TextStyle(color: Color(0xFFFE2B5E)))
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child: OutlineButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      onPressed: () {},
                      child: Text('Save'),
                    ),
                  )
                ],
              ),
              SizedBox(height: 16.0),
              Padding(
                padding: EdgeInsets.only(left: 24.0),
                child: Text('Edit Profile', style: TextStyle(color: Color(0xFF222222), fontSize: 24.0, fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: SizedBox(
                  width: double.infinity,
                  child: CupertinoSegmentedControl<int>(
                    children: logoWidgets,
                    onValueChanged: (int val) {
                      setState(() {
                        sharedValue = val;
                      });
                    },
                    groupValue: sharedValue,
                    selectedColor: Color(0xFF274FED),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Divider(height: 10.0, color: Colors.black12, thickness: 1),
              ),
              SizedBox(height: 10.0),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.0,
                  ),
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.0,
                    ),
                    child: icons[sharedValue],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
