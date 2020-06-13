import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeScreen> {
  final String subTitle = "Tell us even more about yourself and ensure that all details provided herein are valid and up to date.";
  final _countries = ["Usa", "Nigeria", "Niger", "Australia", "Canada", "Morocco"];
  final _educationLevel = ["Graduate", "HND", "OND", "High School", "PHD"];
  final _maritalStatus = ["Single", "Married"];
  final _employmentStatus = ["Employed", "UnEmployed", "Self Employed", "Freelancing"];
  final _relationShip = ["Brother", "Sister", "Mother", "Son"];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios), onPressed: () {},
                      color: Color(0xFF555555),
                      iconSize: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Step 1 of 5'),
                    )
                  ],
                ),
                SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Complete Profile', style: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold, color: Color(0xFF274FED))),
                      SizedBox(height: 16.0),
                      Text(subTitle, style: TextStyle(fontSize: 14.0)),
                      SizedBox(height: 20.0),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                  labelText: "Date of birth",
                                  prefixIcon: _buildPrefixIcon("assets/images/vector_calendar.svg")
                              ),
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                  labelText: "Gender",
                                  prefixIcon: _buildPrefixIcon("assets/images/vector_gender.svg")
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: "Residential Address",
                            prefixIcon: _buildPrefixIcon("assets/images/vector_home.svg")
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Row(
                        children: <Widget>[
                          Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 8.0),
                                child: DropdownButtonFormField(
                                  isDense: true,
                                  items: _educationLevel.map((String priority) {
                                    return DropdownMenuItem(
                                      value: priority,
                                      child: Text(
                                        priority,
                                        style: TextStyle(color: Color(0xFF222222), fontSize: 18.0),
                                      ),
                                    );
                                  }).toList(),
                                  icon: Icon(Icons.arrow_drop_down),
                                  iconDisabledColor: Color(0xFF222222),
                                  iconEnabledColor: Theme
                                      .of(context)
                                      .primaryColor,
                                  iconSize: 22.0,
                                  style: TextStyle(fontSize: 18.0),
                                  decoration: InputDecoration(
                                      labelText: 'Education Level',
                                      labelStyle: TextStyle(fontSize: 18.0), prefixIcon: _buildPrefixIcon("assets/images/vector_graduation.svg")),
                                  value: "Graduate",
                                  onChanged: (String value) {},
                                ),
                              )
                          ),
                          SizedBox(width: 8.0),
                          Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 8.0),
                                child: DropdownButtonFormField(
                                  isDense: true,
                                  items: _countries.map((String priority) {
                                    return DropdownMenuItem(
                                      value: priority,
                                      child: Text(
                                        priority,
                                        style: TextStyle(color: Color(0xFF222222), fontSize: 18.0),
                                      ),
                                    );
                                  }).toList(),
                                  icon: Icon(Icons.arrow_drop_down),
                                  iconDisabledColor: Color(0xFF222222),
                                  iconEnabledColor: Theme
                                      .of(context)
                                      .primaryColor,
                                  iconSize: 22.0,
                                  style: TextStyle(fontSize: 18.0),
                                  decoration: InputDecoration(
                                      labelText: 'Nationality',
                                      labelStyle: TextStyle(fontSize: 18.0), prefixIcon: _buildPrefixIcon("assets/images/vector_nationality.svg")),
                                  value: "Nigeria",
                                  onChanged: (String value) {},
                                ),
                              )
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0),
                      Row(
                        children: <Widget>[
                          Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 8.0),
                                child: DropdownButtonFormField(
                                  isDense: true,
                                  items: _employmentStatus.map((String priority) {
                                    return DropdownMenuItem(
                                      value: priority,
                                      child: Text(
                                        priority,overflow: TextOverflow.ellipsis,
                                        style: TextStyle(color: Color(0xFF222222), fontSize: 16.0),
                                      ),
                                    );
                                  }).toList(),
                                  icon: Icon(Icons.arrow_drop_down),
                                  iconDisabledColor: Color(0xFF222222),
                                  iconEnabledColor: Theme
                                      .of(context)
                                      .primaryColor,
                                  iconSize: 20.0,
                                  style: TextStyle(fontSize: 16.0),
                                  decoration: InputDecoration(
                                      labelText: 'Employment Status',
                                      labelStyle: TextStyle(fontSize: 18.0), prefixIcon: Icon(Icons.people)),
                                  value: "Employed",
                                  onChanged: (String value) {},
                                ),
                              )
                          ),
                          SizedBox(width: 4.0),
                          Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 8.0),
                                child: DropdownButtonFormField(
                                  isDense: true,
                                  items: _maritalStatus.map((String priority) {
                                    return DropdownMenuItem(
                                      value: priority,
                                      child: Text(
                                        priority,
                                        style: TextStyle(color: Color(0xFF222222), fontSize: 16.0),
                                      ),
                                    );
                                  }).toList(),
                                  icon: Icon(Icons.arrow_drop_down),
                                  iconDisabledColor: Color(0xFF222222),
                                  iconEnabledColor: Theme
                                      .of(context)
                                      .primaryColor,
                                  iconSize: 18.0,
                                  style: TextStyle(fontSize: 16.0),
                                  decoration: InputDecoration(
                                      labelText: 'Marital Status',
                                      labelStyle: TextStyle(fontSize: 16.0), prefixIcon: _buildPrefixIcon("assets/images/vector_marital_status.svg")),
                                  value: "Single",
                                  onChanged: (String value) {},
                                ),
                              )
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                  labelText: "Guarantor's Name",
                                  prefixIcon: _buildPrefixIcon("assets/images/vector_person.svg")
                              ),
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 8.0),
                                child: DropdownButtonFormField(
                                  isDense: true,
                                  items: _relationShip.map((String priority) {
                                    return DropdownMenuItem(
                                      value: priority,
                                      child: Text(
                                        priority,
                                        style: TextStyle(color: Color(0xFF222222), fontSize: 18.0),
                                      ),
                                    );
                                  }).toList(),
                                  icon: Icon(Icons.arrow_drop_down),
                                  iconDisabledColor: Color(0xFF222222),
                                  iconEnabledColor: Theme
                                      .of(context)
                                      .primaryColor,
                                  iconSize: 18.0,
                                  style: TextStyle(fontSize: 16.0),
                                  decoration: InputDecoration(
                                      labelText: 'RelationShip',
                                      labelStyle: TextStyle(fontSize: 18.0), prefixIcon: _buildPrefixIcon("assets/images/vector_relationship.svg")),
                                  value: "Brother",
                                  onChanged: (String value) {},
                                ),
                              )
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                  labelText: "Guarantor's Address",
                                  prefixIcon: _buildPrefixIcon("assets/images/vector_home.svg")
                              ),
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Expanded(
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  labelText: "Guarantor's contact number"
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30.0),
                      _buildNextButton(),
                      SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.security, size: 18.0),
                          SizedBox(width: 6.0),
                          Text('Your data is secure')
                        ],
                      ),
                      SizedBox(height: 20.0)
                    ],
                  ),
                )
                // Build Stepper here
              ],
            ),
          ),
        ),
      ),
    );
  }
  
  Widget _buildNextButton() {
    return Center(
      child: Container(
        height: 46.0,
        width: 213,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
        child: MaterialButton(
          color: Theme
              .of(context)
              .primaryColor,
          child: Text('NEXT', style: TextStyle(color: Colors.white)),
          onPressed: () {
            Navigator.pushNamed(context, "/edit_profile");
          },
        ),
      ),
    );
  }

  _buildPrefixIcon(String imagePath) {
    return SvgPicture.asset(imagePath,width: 20.0,height: 20.0,fit: BoxFit.scaleDown);
  }
}
