import 'package:flutter/material.dart';
import '../models/item.dart';
class ItemPage extends StatelessWidget{
  
  @override  
  Widget build(BuildContext context){
    final Item itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
      appBar: AppBar(
        title: Text("List Detail"),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: Column(
          children: [
            Row(children: [
              Expanded(child: Text(itemArgs.name)),
              Expanded(
                child: Text(" ("+
                  itemArgs.price.toString() + ")",
                  textAlign: TextAlign.end,
                )
              )
            ],),
            
            Row(children: [
              Expanded(child: Text(itemArgs.Category,
                      style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),),
            ),
            ],),
            Row(children: [
              Expanded(child: Text(itemArgs.Desc)),
            ],),
          ],
        )
      )
    );
  }
}