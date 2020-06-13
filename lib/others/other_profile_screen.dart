import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OtherProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _buildProfileDetail("Employer", "CredPal Limited"),
            _buildProfileDetail("Office Address", "75, Olonode Street, A...ba, Lagos"),
            _buildProfileDetail("Job Title", "Android Developer"),
            _buildProfileDetail("Contract type", "Full time"),
            _buildProfileDetail("Salary", "840,000"),
            _buildProfileDetail("Next of kin", "James Bond"),
            _buildProfileDetail("Relationship", "Brother"),
            _buildProfileDetail("Address", "Brother"),
            _buildProfileDetail("Contact Number", "070134567893"),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileDetail(String title, String description) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(title, style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400),),
              Text(description,style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400))
            ],
          ),
        ),
        Divider(height: 10.0, color: Color(0xFFE5E5E5)),
        SizedBox(height: 16.0),
      ],
    );
  }
}
