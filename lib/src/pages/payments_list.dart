import 'package:flutter/material.dart';
import 'package:flutter_kvartplata/src/objects/month.dart';
import 'package:flutter_kvartplata/src/pages/cold_water_page.dart';
import 'package:flutter_kvartplata/src/widgets/cold_water_item.dart';
import 'package:flutter_kvartplata/src/widgets/electricity_item.dart';
import 'package:flutter_kvartplata/src/widgets/hot_water_item.dart';
import 'package:flutter_kvartplata/src/widgets/internet_item.dart';

class PaymentsList extends StatelessWidget{

  final Month _month;

  const PaymentsList(this._month);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_month.title),),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(children: <Widget>[
              GestureDetector(child: ColdWaterItem(), onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){return ColdWaterPage();}));
              },),
              HotWaterItem(),
              ElectricityItem(),
              InternetItem()
            ],),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Expanded(child: Text("Total", style: Theme.of(context).textTheme.title,)),
                Text("2000", style: Theme.of(context).textTheme.title,)
              ],
            ),
          )
        ],
      ),
    );
  }
}