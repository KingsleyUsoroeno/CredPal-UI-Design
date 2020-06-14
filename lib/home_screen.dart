import 'package:credpaluidesign/personal_information_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeScreen> {
  final controller = PageController();

  List<Widget> _pages = [Container(), Container(), Container(), PersonalInformationScreen(), Container()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: () {},
                    color: Color(0xFF555555),
                    iconSize: 20.0,
                  ),
                  Text('Step 1 of 5')
                ],
              ),
            ),
            Container(
              child: SmoothPageIndicator(
                controller: controller,
                count: _pages.length,
                effect: ExpandingDotsEffect(
                  dotHeight: 10,
                  dotWidth: 20,
                  expansionFactor: 4,
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: PageView(controller: controller, children: _pages),
              ),
            ),
            // Build Stepper here
          ],
        ),
      ),
    );
  }
}
