import 'package:exercise5_jobsheet1/models/item.dart';
import 'package:flutter/material.dart';
import '../models/item.dart';
class HomePage extends StatelessWidget{
  @override  
  final List<Item> items = [
    Item('Sugar',5000,"seasoning","Refined sugar is sugar that goes through the process of refining crystal sugar. The government strictly regulates the use of sugar because it is risky to health."),
    Item('Salt',2000,"seasoning","Table salt is a type of mineral that can make a salty taste. Usually the commonly available table salt is sodium chloride produced by sea water."),
  ];
  Widget build(BuildContext content){
    // throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index){
            final item = items[index];
            return InkWell(
              onTap: (){
                Navigator.pushNamed(context, '/item', arguments: item );
              },
              child: Container(
                margin: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Expanded(child: Text(item.name)),
                    Expanded(child: Text(" ("+item.Category+")")),
                    Expanded(
                      child: Text(
                        item.price.toString(),
                        textAlign: TextAlign.end,
                      )
                    )
                  ],
                )
              )
            );
          }
        )
      )
    );
  }
}