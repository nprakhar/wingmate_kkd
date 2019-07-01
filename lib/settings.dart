import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return Settings();
  }

}

class Settings extends State<SettingsScreen> {
String _username;
String _description;

  @override
  Widget build(BuildContext context) =>
      Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          centerTitle: true,
          title: Text(
              'Profile',
              style: TextStyle(
                color: Colors.white,
              )
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(40.0),
          child: ListView(
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.person_pin),
                  hintText: "Set your username",
                  labelText: 'Username *',
                ),
                onSaved: (String value){
                  this._username = value;
                }
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.location_on),
                  hintText: "Add your description",
                  labelText: 'Description',
                ),
                  onSaved: (String value){
                    this._description = value;
                  }
              ),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      );
}