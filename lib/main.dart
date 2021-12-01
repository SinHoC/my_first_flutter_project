import 'package:flutter/material.dart';

import 'EnterPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const appTitle = 'Desserts';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          brightness: Brightness.dark,
          title: const Text(appTitle, style: TextStyle(
              color: Colors.yellowAccent
          )),
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: const MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatelessWidget {
  const MyCustomForm({ Key? key }) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".


  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        new Image.network(
            'https://simply-delicious-food.com/wp-content/uploads/2018/11/holiday-dessert-board-3-500x375.jpg'
        ),
        new Text(
          'Welcome',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            //inbuilt named colors
            color: Colors.green,
            fontSize: 40,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
            'You can follow Ingredients and Directions to make desserts easily.Here you go, please click "Enter", you will see different desserts and show you how to make easily. ',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 25,
            )
        ),
        SizedBox(
          height: 30,
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text("Enter", style: TextStyle(fontSize: 40)),
                color: Colors.blueAccent,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => EnterPage()));
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

