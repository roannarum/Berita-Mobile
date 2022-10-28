// ignore_for_file: unused_import, prefer_const_constructors_in_immutables, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Belajar Flutter'),
          leading: Icon(Icons.account_tree_outlined),
          backgroundColor: Colors.red,
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                child: Center(
                  child: Row(
                    children: [
                      Icon(
                        Icons.account_tree,
                        color: Colors.blueAccent,
                        size: 80,
                      ),
                      //SizedBox(height: 30,), //mengatur jarak antar komponen
                      Icon(
                        CupertinoIcons.arrow_clockwise_circle,
                        color: Colors.teal,
                        size: 50,
                      ),
                      ClipOval(
                        child: Material(
                          color: Colors.blue,
                          child: InkWell(
                            splashColor: Colors.red,
                            child: SizedBox(
                              width: 56,
                              height: 56,
                              child: Icon(Icons.menu),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ),
                      Text(
                        'Flutter UNJAYA',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Image.asset("assets/images/intranet.png",
                          width: 5.0, height: 5.0, fit: BoxFit.cover),
                      Padding(padding: EdgeInsets.only(bottom: 20.0)),
                      Image.network(
                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg')
                    ],
                  ),
                ),
              ),
              Container(
                  child: Center(
                child: Column(
                  children: [
                    Icon(
                      Icons.account_tree,
                      color: Colors.deepOrange,
                      size: 80,
                    ),
                    //SizedBox(height: 30,), //mengatur jarak antar komponen
                    Icon(
                      CupertinoIcons.arrow_clockwise_circle,
                      color: Colors.teal,
                      size: 100,
                    ),
                    ClipOval(
                      child: Material(
                        color: Colors.blue,
                        child: InkWell(
                          splashColor: Colors.red,
                          child: SizedBox(
                            width: 56,
                            height: 56,
                            child: Icon(Icons.menu),
                          ),
                          onTap: () {},
                        ),
                      ),
                    ),
                    Text(
                      'Flutter UNJAYA',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ))
            ],
          ),
        ));
  }
}
