import 'package:flutter/material.dart';
import 'package:flutter_kvartplata/src/objects/month.dart';

class MonthItem extends StatelessWidget{

  final Month _month;

  const MonthItem(this._month);

  @override
  Widget build(BuildContext context) {
    return Card(
        child:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Expanded(child: Text(_month.title, style: Theme.of(context).textTheme.title,)),
              Text("2000", style: Theme.of(context).textTheme.title,),
            ],
          ),
        ),
    );
  }
}