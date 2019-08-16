import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'dart:math' as Math;

void main() => runApp(
      MaterialApp(
        home: MyApp(),
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        debugShowCheckedModeBanner: false,
      ),
    );

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Container(
        margin: EdgeInsets.only(top: 32),
        padding: EdgeInsets.symmetric(horizontal: 32,vertical: 18.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                CircleAvatar(
                  child: Icon(FontAwesomeIcons.user),
                )
              ],
            ),
						SizedBox(
							height: 30.0,
						),
            Text(
              "Range Rover Sports",
              style: TextStyle(
                  fontSize: 45.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              height: 50.0,
            ),
            Image.asset("images/ui/png/car/1.png"),
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      "\$116",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22.0,
                          color: Colors.white),
                    ),
                    Text(
                      "2 days",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Colors.white.withOpacity(0.4)),
                    ),
                  ],
                ),
                RaisedButton(
                  color: Colors.orange,
                  shape: StadiumBorder(),
                  onPressed: () {},
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Book Now",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Icon(
                        FontAwesomeIcons.angleRight,
                        color: Colors.white,
                      )
                    ],
                  ),
                )
              ],
            ),
						SizedBox(
							height: 20.0,
						),
            Expanded(
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                children: <Widget>[
                  getItem(FontAwesomeIcons.car,"car"),
                  getItem(FontAwesomeIcons.mapPin,"map"),
                  getItem(FontAwesomeIcons.landmark,"landmark"),
                  getItem(FontAwesomeIcons.lightbulb,"lightbulb"),
                  getItem(FontAwesomeIcons.biking,"biking"),
                  getItem(FontAwesomeIcons.bug,"bug"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  getItem(icon,text) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          size: 40.0,
          color: Colors.white.withOpacity(0.7),
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          "$text",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white.withOpacity(0.7)),
        )
      ],
    );
  }
}
