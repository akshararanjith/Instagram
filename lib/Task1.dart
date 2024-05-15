import 'package:flutter/material.dart';
class Task1 extends StatelessWidget {
  const Task1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Task 1',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 50,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              backgroundColor: Colors.blueAccent,
            ),
            textAlign: TextAlign.center,
          ),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
          toolbarOpacity: 1.0,
          toolbarHeight: 59,
        ),backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 30,
                width: 180,
                color: Colors.red,
              ),
              Container(
                height: 180,
                width: 30,
                color: Colors.blue,
              ),
              Container(
                height: 30,
                width: 180,
                color: Colors.green,
              ),
              Container(
                height: 180,
                width: 30,
                color: Colors.white,
              )

            ],
          ),
        ),
      ),
    );
  }
}

