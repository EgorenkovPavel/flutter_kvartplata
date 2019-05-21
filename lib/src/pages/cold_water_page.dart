import 'package:flutter/material.dart';

class ColdWaterPage extends StatefulWidget {
  @override
  _ColdWaterPageState createState() => _ColdWaterPageState();
}

class _ColdWaterPageState extends State<ColdWaterPage> {
  final _formKey = GlobalKey<FormState>();

  Widget rowElement(Widget child1, Widget child2){
    return Row(
      children: <Widget>[
        Flexible(
          child: child1,
          flex: 1,
          fit: FlexFit.tight,
        ),
        Flexible(
          child: child2,
          flex: 1,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cold water"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              rowElement(
                  Text("Previous"),
                  Text("12000")),
              rowElement(
                  Text("Value"),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.right,
                    validator: (value) {
                      return 'rewe';
                    },
                  )
              ),
              rowElement(
                  Text("Delta"),
                  Text("100")),
              rowElement(
                  Text("Tax"),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.right,
                    validator: (value) {
                      return 'rewe';
                    },
                  )
              ),
              rowElement(
                  Text("Total"),
                  Text("100")),
              Row(
                children: <Widget>[
                  RaisedButton(
                    child: Text("Save"),
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        _formKey.currentState.save();
                        Navigator.of(context).pop();
                      }
                    },
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
