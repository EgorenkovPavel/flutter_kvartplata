import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  bool _enableColdWater = false;
  bool _enableHotWater = false;
  bool _enableElectriciry = false;
  bool _enableInternet = false;

  void switchColdWater(){
    setState(() {
      _enableColdWater = !_enableColdWater;
    });
  }

  void switchHotWater(){
    setState(() {
      _enableHotWater = !_enableHotWater;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text("Cold water"),
            trailing: Checkbox(value: _enableColdWater, onChanged: (_)=>switchColdWater(),),
            onTap: ()=>switchColdWater()
          ),
          Divider(),
          ListTile(
            title: Text("Hot water"),
            trailing: Checkbox(value: _enableHotWater, onChanged: (_)=>switchHotWater(),),
          ),
          Divider(),
          ListTile(
            title: Text("Electricity"),
            trailing: Checkbox(value: _enableElectriciry, onChanged: (_){
              setState(() {
                _enableElectriciry = !_enableElectriciry;
              });
            },),
          ),
          Divider(),
          ListTile(
            title: Text("Internet"),
            trailing: Checkbox(value: _enableInternet, onChanged: (_){
              setState(() {
                _enableInternet = !_enableInternet;
              });
            },),
          ),
          Divider(),
        ],
      ),
    );
  }
}
