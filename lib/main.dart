import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'board/it.dart';
//`


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter GridView',
      home: new Home(),
      theme: new ThemeData(primaryColor: Colors.blue),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    var List_item = [
      {
        "name" : "President" ,
        "pic" : "images/head.jpg" ,
      },
      {
        "name" : "Vice President" ,
        "pic" : "images/head.jpg" ,
      },
      {
        "name" : "Technical Supervisor" ,
        "pic" : "images/head.jpg" ,
      },
      {
        "name" : "Operation Supervisor" ,
        "pic" : "images/head.jpg" ,
      },
      {
        "name" : "HR Head" ,
        "pic" : "images/head.jpg" ,
      },
      {
        "name" : "PR Head" ,
        "pic" : "images/head.jpg" ,
      },
      {
        "name" : "Media Head" ,
        "pic" : "images/head.jpg" ,
      },
      {
        "name" : "Logistic Head" ,
        "pic" : "images/head.jpg" ,
      },
      {
        "name" : "Digital Marketing" ,
        "pic" : "images/head.jpg" ,
      },
      {
        "name" : "Developers Head" ,
        "pic" : "images/head.jpg" ,
      },
      {
        "name" : "IT Head" ,
        "pic" : "images/head.jpg" ,
      },

    ];
    var myGridView = new GridView.builder(
      itemCount: List_item.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Head(
          head_name: List_item[index]['name'],
          head_pic: List_item[index]['pic'],
        );
      },
    );



    return new Scaffold(
      appBar: new AppBar(
          centerTitle: true,
          title: new Text("New Board")
      ),
      body: myGridView,
    );
  }
}

class Head extends StatelessWidget {
  final head_name;
  final head_pic;
  Head({ this.head_name, this.head_pic });
  @override
  Widget build(BuildContext context ){
    return Card(
      child: Hero(
        tag: head_name,
        child: Material(
          child: InkWell(
            onTap: () {Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SecondRoute()),);} ,
            child: GridTile(
              footer: Container(
                color: Colors.black38 ,
                child: ListTile(
                  leading: Text(head_name, style: TextStyle(color: Colors.white70,  fontWeight: FontWeight.w500),) ,
                ) ,
              ) ,
              child: Image.asset(head_pic),
            ) ,
          ),
        ),
      ),
    );
  }
}




void main() {
  runApp(new MyApp());
}