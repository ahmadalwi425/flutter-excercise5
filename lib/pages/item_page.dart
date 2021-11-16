import 'package:flutter/material.dart';
import '../models/item.dart';
class ItemPage extends StatelessWidget{
  
  @override  
  Widget build(BuildContext context){
    final Item itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: Row(
          children: [
            Expanded(child: Text(itemArgs.name)),
            Expanded(
              child: Text(
                itemArgs.price.toString(),
                textAlign: TextAlign.end,
              )
            )
          ],
        )
      )
    );
  }
}