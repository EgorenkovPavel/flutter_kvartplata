import 'package:flutter/material.dart';

class InternetItem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(child: Text("Internet", style: Theme.of(context).textTheme.title,)),
                Text("500", style: Theme.of(context).textTheme.title,),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(child: Text("Tax")),
                Text("500"),
              ],
            ),
          ],
        ),
      ),
    );
  }

}