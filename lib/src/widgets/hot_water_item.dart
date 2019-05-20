import 'package:flutter/material.dart';

class HotWaterItem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(child: Text("Hot water", style: Theme.of(context).textTheme.title,)),
                Text("500", style: Theme.of(context).textTheme.title,),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(child: Text("Delta")),
                Text("10"),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(child: Text("Tax")),
                Text("50"),
              ],
            ),
          ],
        ),
      ),
    );
  }

}