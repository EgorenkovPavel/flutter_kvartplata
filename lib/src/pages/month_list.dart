import 'package:flutter/material.dart';
import 'package:flutter_kvartplata/src/objects/month.dart';
import 'package:flutter_kvartplata/src/pages/payments_list.dart';
import 'package:flutter_kvartplata/src/pages/settings_page.dart';
import 'package:flutter_kvartplata/src/widgets/month_item.dart';

class MonthList extends StatelessWidget {
  final List<Month> _months = [
    Month("May 2019", 5, 2019),
    Month("June 2019", 6, 2019)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kvartplata"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings, color: Colors.white,),
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return SettingsPage();
              }));
            },
          )
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return GestureDetector(
            child: MonthItem(_months[index]),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return PaymentsList(_months[index]);
              }));
            },
          );
        },
        itemCount: _months.length,
      ),
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.add), onPressed: null),
    );
  }
}
