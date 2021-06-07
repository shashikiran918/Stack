import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Widget Demo'),
        centerTitle: true,
      ),
      body: Center(
        child: Stack(
          alignment:  Alignment.bottomLeft,
          fit: StackFit.passthrough,
          children: <Widget>[
            Positioned(
              top: 30,
              right: 20,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.blueAccent,

              ),
            ),
            Positioned(
              top: 30,
              right: 20,
              child: Container(
                height: 150,
                width: 150,
                color: Colors.amberAccent,

              ),
            ),
            Positioned(
              top: 30,
              right: 20,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.redAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
