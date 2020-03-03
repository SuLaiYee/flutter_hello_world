import 'package:flutter/material.dart';
import 'package:flutter_hello_world/category.dart';
import 'package:flutter_hello_world/category_route.dart';
import 'package:flutter_hello_world/udacity_test.dart';



const _categoryName = 'Cake';
const _categoryIcon = Icons.cake;
const _categoryColor = Colors.cyan;

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Unit Converter',
    home: CategoryRoute(),
    /*home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Unit Converter",
            style: TextStyle(fontSize: 30.0),
          ),
        ),
        body: Center(
          child: Category(
            name: _categoryName,
            color: _categoryColor,
            iconLocation: _categoryIcon,
          ),
        ))*/));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(title: 'Hey'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text("Alert Dialog Title"),
          content: new Text("Alert Dialog body"),
          actions: <Widget>[
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.title),
        ),
        body: Center(
            child: GestureDetector(
          onTap: () {
            _showDialog(context);
          },
          child: Text("Hello World"),
        )));
  }
}

/* 2
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo', theme: ThemeData(
        primarySwatch: Colors.blue),
      home: MyHomePage(title: 'Hey'),
    );
  }
}

class MyHomePage extends StatelessWidget{
  final String title;
  MyHomePage({Key key, this.title}):super(key:key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Product Listing")),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(10.0,10.0,10.0,10.0),
        children: <Widget>[
          ProductBox(
            name: "Su Lai",
            description: "Hey",
            price: 100,
            image: "1.png"
          ),
          ProductBox(
              name: "Mg Ma Lai",
              description: "Hey hello",
              price: 200,
              image: "2.png"
          ),
          ProductBox(
              name: "Su Lai Yee",
              description: "Hi",
              price: 10,
              image: "3.png"
          ),
          ProductBox(
              name: "Su Lai",
              description: "world",
              price: 900,
              image: "4.png"
          ),
        ],
      ),
    );
  }

}

class ProductBox extends StatelessWidget{
  final String name;
  final String description;
  final int price;
  final String image;
  ProductBox({Key key, this.name, this.description, this.price, this.image}):super(key:key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(2),height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
            Image.asset("assets/img/"+image),
            Expanded(child: Container(
             padding: EdgeInsets.all(5),child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: <Widget>[
                Text(this.name, style: TextStyle(fontWeight: FontWeight.bold)),
                Text(this.description),
                Text("Price:"+ this.price.toString()),
            ],
            ),
            ),)
        ],
        ),
      ),
    );
  }


}
*/

/* 1
  class MyHomePage extends StatelessWidget{
  final String title;
  MyHomePage({Key key, this.title}): super(key:key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text(this.title),),
      body: Center(child: Text("Hello World"),),
    );
  }

  }
*/
