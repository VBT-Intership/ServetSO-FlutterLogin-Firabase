
import 'dart:ui';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(50.0,150.0, 50.0, 50.0),
            child: Column(
              children: <Widget>[
                const Image(image: NetworkImage('https://iasbh.tmgrup.com.tr/45459e/740/479/0/16/700/470?u=https://isbh.tmgrup.com.tr/sbh/2019/07/31/bilgisayarda-ve-telefonda-tik-isareti-nasil-yapilir-1564561672698.jpg'),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20.0,0.0, 0.0, 0.0),
            child: Text(
                'Sıgn In successful!',
                style: TextStyle(
                    fontSize: 15.0, fontWeight: FontWeight.normal,fontStyle: FontStyle.normal,color: Colors.grey),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20.0,20.0, 0.0, 0.0),
            child: Text(
              'Welcome to Servet',
              style: TextStyle(
                  fontSize: 40.0, fontWeight: FontWeight.normal,fontStyle: FontStyle.normal,color: Colors.black),

            ),
          ),

        ],


      ),


    );

  }
}