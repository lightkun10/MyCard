import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Color coolGray = Color(0xFF8C92AC);
Color darkBlue = Color(0xFF00008B);

void main() {
  runApp(MyApp());
}

// Separated Material App into a separated widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Column(
              mainAxisAlignment:
              MainAxisAlignment.center, // centering column center
              children: <Widget>[
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/pandu-ava2.jpg'),
                ),
                Text(
                  "fierdy pandu",
                  style: TextStyle(
                    fontFamily: 'Space Mono Regular',
                    fontSize: 35.0,
                    // fontWeight: FontWeight.bold,
                    color: Colors.cyan,
                    // color: darkBlue,
                    // fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  "MOBILE APP DEVELOPER",
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: 16.0,
                    color: Colors.cyan,
                    letterSpacing: 0.5,
                  ),
                ),
                /* Add line between cards and title */
                SizedBox(
                  height: 20.0,
                  width: 230.0,
                  child: Divider(
                    color: Colors.cyan[800],
                  ),
                ),
                Card(
                  margin:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  // padding: EdgeInsets.all(10.0),
                  /* Instead give Padding class widget that added as
                     a parent to other widget
                  */
                  child: ListTile(
                    leading: Icon(Icons.phone, color: Colors.cyan),
                    title: Text(
                      "+62 821 27285152",
                      style: TextStyle(
                          color: Colors.cyan[900],
                          fontFamily: 'Source Sans Pro',
                          fontSize: 18.0),
                    ),
                    subtitle: Text('Phone number',
                        style:
                        TextStyle(color: Colors.cyan[900], fontSize: 12.0)),
                    trailing: Icon(Icons.more_vert),
                  ),
                ),
                Card(
                  margin:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  // padding: EdgeInsets.all(10.0),
                  child: ListTile(
                    leading: Icon(Icons.email, color: Colors.cyan),
                    title: Text(
                      "lifeisubw@gmail.com",
                      style: TextStyle(
                          color: Colors.cyan[900],
                          fontFamily: 'Source Sans Pro',
                          fontSize: 18.0),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}

/** "Manual" way of presenting icon and text in a row without ListTile class
 *
 * Row(
    children: <Widget>[
    Icon(
    Icons.phone,
    color: Colors.cyan,
    ),
    /* SizedBox for adding space between children in rows */
    SizedBox(
    width: 10.0,
    ),
    Text(
    "+62 821 27285152",
    style: TextStyle(
    color: Colors.cyan[900],
    fontFamily: 'Source Sans Pro',
    fontSize: 18.0
    )
    )
    ],
    ),
 *
 * Row(
    children: <Widget>[
    Icon(
    Icons.email,
    color: Colors.cyan
    ),
    SizedBox(
    width: 10.0,
    ),
    Text(
    "lifeisubw@gmail.com",
    style: TextStyle(
    color: Colors.cyan[900],
    fontFamily: 'Source Sans Pro',
    fontSize: 18.0
    ),
    )
    ],
    )
 */

/**
    /* Margin for all side. */
    // margin: EdgeInsets.all(20.0),
    /* Margin for same horizontal and vertical */
    // margin: EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),
    /* Margin different value from each side */
    // margin: EdgeInsets.fromLTRB(30.0, 60.0, 50.0, 20.0),
    /* Margin, specified a specific position value */
    margin: EdgeInsets.only(left: 30.0, top: 90.0),

    /* Padding is the same as Margin */
    // padding: EdgeInsets.all(),
 */
