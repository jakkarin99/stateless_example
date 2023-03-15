import 'package:flutter/material.dart';

void main() {
  runApp(OurApp());
}

class OurApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Our App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ACenterClass(),
      ),
    );
  }
}

class ACenterClass extends StatelessWidget {
  var pressRemoteCount = 0;

  void pressRemote() {
    pressRemoteCount = pressRemoteCount + 1;
    print(pressRemoteCount);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        width: 350.00,
        height: 100.00,
        decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(
            color: Colors.deepOrange,
            width: 2.0,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.all(Radius.circular(40.0)),
          boxShadow: [
            BoxShadow(
              color: Colors.black54,
              blurRadius: 20.0,
              spreadRadius: 20.0,
            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Colors.red,
              Colors.white,
            ],
          ),
        ),
        child: Column(
          children: [
            Text(
              '$pressRemoteCount',
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
              child: Text(
                'Press Button',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                ),
              ),
              onPressed: pressRemote,
            ),
          ],
        ),
      ),
    );
  }
}
