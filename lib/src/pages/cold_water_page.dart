import 'package:flutter/material.dart';

class ColdWaterPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cold water"),),
      body: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              Flexible(child: Text("Value"), flex: 1, fit: FlexFit.tight,),
              Flexible(child: TextField(keyboardType: TextInputType.number,), flex: 1,)
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(child: Text("Previous")),
              Text("12000"),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(child: Text("Delta")),
              Text("100"),
            ],
          ),
          Row(
            children: <Widget>[
              Flexible(child: Text("Delta"), flex: 1, fit: FlexFit.tight,),
              Flexible(child: TextField(keyboardType: TextInputType.number,), flex: 1,)
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(child: Text("Total")),
              Text("100"),
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(child: Text("Save"),onPressed: (){
                Navigator.of(context).pop();
              },),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          )
        ],
      ),
    );
  }
}