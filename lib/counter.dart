import 'package:flutter/material.dart';

class counter_view extends StatefulWidget {
  const counter_view({super.key});

  @override
  State<counter_view> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<counter_view> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "$count",
            style: TextStyle(fontSize: 20),
          ),
          // ElevatedButton(
          //     onPressed: () {
          //       setState(() {
          //         count--;
          //       });
          //     },
          //     child: Icon(Icons.remove))
         
        ]),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
           FloatingActionButton(
          onPressed: () {
            setState(() {
              count++;
            });
          },
          child: Icon(
            Icons.add,
            color: Colors.white,
          )),

           FloatingActionButton(
          onPressed: () {
            setState(() {
              count++;
            });
          },
          child: Icon(
            Icons.remove,
            color: Colors.white,
          )),
        ],
      )
    );
  }
}