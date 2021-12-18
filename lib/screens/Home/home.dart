// @dart=2.9

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:practice2/widgets/list_view_widget.dart';

import '../../mockdata.dart';
import 'package:sort/sort.dart';
import 'HomeStore.dart';

class HomePage extends StatefulWidget {
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  var instrumentsI = [];
  var original = [];
  TextEditingController txtQuery = new TextEditingController();

  void search(String query) {
    if (query.isEmpty) {
      instrumentsI = original;
      setState(() {});
      return;
    }
    query = query.toLowerCase();
    List result = [];
    instrumentsI.forEach((p) {
      var name = p["name"].toString().toLowerCase();
      if (name.contains(query)) {
        result.add(p);
      }
    });

    instrumentsI = result;
    setState(() {});
  }

  void sort() {
    print('Low to hight in price: $instruments');

    // List result = [];
    // instrumentsI.forEach((p) {
    //   var name = p["name"].toString().toLowerCase();
    //
    //     result.add(name);
    //
    // });
    // print(result);
    // result.sort();
    // print(result.reversed);
    // // result.sort((a, b) {
    // //   return a.value['name'].toString().toLowerCase().compareTo(b.value['name'].toString().toLowerCase());
    // // });
    // //
    //  instrumentsI = result.reversed;
  }

  @override
  void initState() {
    super.initState();

    instrumentsI = instruments;
    original = instruments;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Практика 2"),
      ),
      body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: txtQuery,
                    onChanged: search,
                    decoration: InputDecoration(
                      hintText: "Search",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0)),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.clear),
                        onPressed: () {
                          txtQuery.text = '';
                          search(txtQuery.text);
                        },
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            instruments.simpleSort(sortBy: 'cost');
                          });
                        },
                        child: Text(
                          'По ценe',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blueAccent,
                      ),
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            instruments.simpleSort(sortBy: 'name');
                          });
                        },
                        child: Text(
                          'По алфавиту',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blueAccent,
                      ),
                    ],
                  )
                ],
              ),
            ),
            MyListView(list: instrumentsI, myContext: context)
          ]),
    );
  }
}
