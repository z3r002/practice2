import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
 MyListView({required this.list, required this.myContext});

 var list = [];
 BuildContext myContext;


  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: ListView.builder(
          itemCount: list.length,
          itemBuilder: (myContext, index) {
            var person = list[index];
            return ListTile(
              title: Text(person['name']),
              subtitle: Text(person['cost'].toString()+ ' рублей'),

            );
          }),
    );
  }
}
