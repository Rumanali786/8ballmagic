import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Ask Me Anything"),
            backgroundColor: Colors.indigo,
          ),
          body: ballPool(),
          backgroundColor: Colors.blue,
        ),
      ),
    );
// ignore: camel_case_types
class ballPool extends StatefulWidget {
  @override
  _ballPoolState createState() => _ballPoolState();
}

// ignore: camel_case_types
class _ballPoolState extends State<ballPool> {
  int number = 1;
  void incrementOperator(){
      setState(() {
        number++;
        number=number%5+1;
      }
      );

  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(child: FlatButton(
        onPressed: () {

          incrementOperator();
      },
        child: Image(image: AssetImage("images/ball$number.png"),
        ),
      ),
      ),
      );

  }
}


