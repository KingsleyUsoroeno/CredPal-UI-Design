import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PersonalInformationScreen extends StatefulWidget {
  @override
  _PersonalInformationScreenState createState() => _PersonalInformationScreenState();
}

class _PersonalInformationScreenState extends State<PersonalInformationScreen> {
  final _countries = ["Usa", "Nigeria", "Niger", "Australia", "Canada", "Morocco"];
  final _educationLevel = ["Graduate", "HND", "OND", "High School", "PHD"];
  final _maritalStatus = ["Single", "Married"];
  final _employmentStatus = ["Employed", "UnEmployed", "Self Employed", "Freelancing"];
  final _relationShip = ["Brother", "Sister", "Mother", "Son"];
  final String _subTitle = "Tell us even more about yourself and ensure that all details provided herein are valid and up to date.";

  String _country = "Usa";
  String _marriageStatus = "Single";
  String _employment = "Employed";
  String _relationship = "Brother";
  String _education = "Graduate";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Complete Profile', style: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold, color: Color(0xFF274FED))),
          SizedBox(height: 16.0),
          Text(_subTitle, style: TextStyle(fontSize: 14.0)),
          SizedBox(height: 20.0),
          Row(
            children: <Widget>[
              Expanded(
                child: TextFormField(
                  decoration:
                      InputDecoration(labelText: "Date of birth", prefixIcon: _buildPrefixIcon("assets/images/vector_calendar.svg")),
                ),
              ),
              SizedBox(width: 10.0),
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(labelText: "Gender", prefixIcon: _buildPrefixIcon("assets/images/vector_gender.svg")),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          TextFormField(
            decoration: InputDecoration(labelText: "Residential Address", prefixIcon: _buildPrefixIcon("assets/images/vector_home.svg")),
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                  iconEnabledColor: Theme.of(context).primaryColor,
                  iconSize: 22.0,
                  style: TextStyle(fontSize: 18.0),
                  decoration: InputDecoration(
                      labelText: 'Education Level',
                      labelStyle: TextStyle(fontSize: 18.0),
                      prefixIcon: _buildPrefixIcon("assets/images/vector_graduation.svg")),
                  value: _education,
                  onChanged: (String value) {
                    setState(() {
                      _education = value;
                    });
                  },
                ),
              )),
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
                  iconEnabledColor: Theme.of(context).primaryColor,
                  iconSize: 22.0,
                  style: TextStyle(fontSize: 18.0),
                  decoration: InputDecoration(
                      labelText: 'Nationality',
                      labelStyle: TextStyle(fontSize: 18.0),
                      prefixIcon: _buildPrefixIcon("assets/images/vector_nationality.svg")),
                  value: _country,
                  onChanged: (String value) {
                    setState(() {
                      _country = value;
                    });
                  },
                ),
              )),
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
                        priority,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Color(0xFF222222), fontSize: 16.0),
                      ),
                    );
                  }).toList(),
                  icon: Icon(Icons.arrow_drop_down),
                  iconDisabledColor: Color(0xFF222222),
                  iconEnabledColor: Theme.of(context).primaryColor,
                  iconSize: 20.0,
                  style: TextStyle(fontSize: 16.0),
                  decoration: InputDecoration(
                      labelText: 'Employment Status', labelStyle: TextStyle(fontSize: 18.0), prefixIcon: Icon(Icons.people)),
                  value: _employment,
                  onChanged: (String value) {
                    setState(() {
                      _employment = value;
                    });
                  },
                ),
              )),
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
                  iconEnabledColor: Theme.of(context).primaryColor,
                  iconSize: 18.0,
                  style: TextStyle(fontSize: 16.0),
                  decoration: InputDecoration(
                      labelText: 'Marital Status',
                      labelStyle: TextStyle(fontSize: 16.0),
                      prefixIcon: _buildPrefixIcon("assets/images/vector_marital_status.svg")),
                  value: _marriageStatus,
                  onChanged: (String value) {
                    setState(() {
                      _marriageStatus = value;
                    });
                  },
                ),
              )),
            ],
          ),
          SizedBox(height: 20.0),
          Row(
            children: <Widget>[
              Expanded(
                child: TextFormField(
                  decoration:
                      InputDecoration(labelText: "Guarantor's Name", prefixIcon: _buildPrefixIcon("assets/images/vector_person.svg")),
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
                  iconEnabledColor: Theme.of(context).primaryColor,
                  iconSize: 18.0,
                  style: TextStyle(fontSize: 16.0),
                  decoration: InputDecoration(
                      labelText: 'RelationShip',
                      labelStyle: TextStyle(fontSize: 18.0),
                      prefixIcon: _buildPrefixIcon("assets/images/vector_relationship.svg")),
                  value: _relationship,
                  onChanged: (String value) {
                    setState(() {
                      _relationship = value;
                    });
                  },
                ),
              )),
            ],
          ),
          SizedBox(height: 20.0),
          Row(
            children: <Widget>[
              Expanded(
                child: TextFormField(
                  decoration:
                      InputDecoration(labelText: "Guarantor's Address", prefixIcon: _buildPrefixIcon("assets/images/vector_home.svg")),
                ),
              ),
              SizedBox(width: 10.0),
              Expanded(
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: "Guarantor's contact number"),
                ),
              ),
            ],
          ),
          SizedBox(height: 30.0),
          _buildNextButton(),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[Icon(Icons.security, size: 18.0), SizedBox(width: 6.0), Text('Your data is secure')],
          ),
          SizedBox(height: 20.0)
        ],
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
          color: Theme.of(context).primaryColor,
          child: Text('NEXT', style: TextStyle(color: Colors.white)),
          onPressed: () {
            Navigator.pushNamed(context, "/edit_profile");
          },
        ),
      ),
    );
  }

  _buildPrefixIcon(String imagePath) {
    return SvgPicture.asset(imagePath, width: 20.0, height: 20.0, fit: BoxFit.scaleDown);
  }
}
