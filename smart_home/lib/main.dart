import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.black45));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Smart Home Apps'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // ignore: non_constant_identifier_names
  bool isSwitched_Lamp1 = false;
  // ignore: non_constant_identifier_names
  bool isSwitched_lamp2 = false;
  // ignore: non_constant_identifier_names
  bool isSwitched_lamp3 = false;
  // ignore: non_constant_identifier_names
  bool isSwitched_speaker = false;
  // ignore: non_constant_identifier_names
  bool isSwitched_tv = false;
  // ignore: non_constant_identifier_names
  bool isSwitched_ac = false;
  // ignore: non_constant_identifier_names
  bool isSwitched_wifi = false;

  _ac(status) async {
    // final response = await http
    //     .post("http://192.168.43.181/api_eschool/index.php/api/login", body: {
    //   "devices": "ac",
    //   "status": status,
    // });
    print("post status ac " + status);
  }

  _lamp1(status) async {
    // final response = await http
    //     .post("http://192.168.43.181/api_eschool/index.php/api/login", body: {
    //   "devices": "ac",
    //   "status": status,
    // });
    print("post status lamp1 " + status);
  }

  _lamp2(status) async {
    // final response = await http
    //     .post("http://192.168.43.181/api_eschool/index.php/api/login", body: {
    //   "devices": "ac",
    //   "status": status,
    // });
    print("post status lamp2 " + status);
  }

  _lamp3(status) async {
    // final response = await http
    //     .post("http://192.168.43.181/api_eschool/index.php/api/login", body: {
    //   "devices": "ac",
    //   "status": status,
    // });
    print("post status lamp3 " + status);
  }

  _tv(status) async {
    // final response = await http
    //     .post("http://192.168.43.181/api_eschool/index.php/api/login", body: {
    //   "devices": "ac",
    //   "status": status,
    // });
    print("post status tv " + status);
  }

  _speaker(status) async {
    // final response = await http
    //     .post("http://192.168.43.181/api_eschool/index.php/api/login", body: {
    //   "devices": "ac",
    //   "status": status,
    // });
    print("post status speaker " + status);
  }

  _wifi(status) async {
    // final response = await http
    //     .post("http://192.168.43.181/api_eschool/index.php/api/login", body: {
    //   "devices": "ac",
    //   "status": status,
    // });
    print("post status wifi " + status);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Card(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        color: Colors.white,
                        height: 75,
                        child: Row(
                          children: [
                            Expanded(
                                child: Container(
                              margin: EdgeInsets.all(12),
                              child: Text("Good Morning, Agil.",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                    color: Colors.black87,
                                  )),
                            )),
                            Container(
                              width: 90,
                            ),
                            Container(
                              margin: EdgeInsets.all(8),
                              width: 50,
                              child: CircleAvatar(
                                backgroundImage: AssetImage("image/agil.jpg"),
                                radius: 100,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 60,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 14, top: 14),
                      child: Text(
                        "Devices",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 4),
                      child: Text("5 Devices",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          )),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                height: 250,
                child: Row(
                  children: [
                    Expanded(
                        child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(11))),
                      color: Colors.white,
                      child: Container(
                        margin: EdgeInsets.all(12),
                        color: Colors.white70,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.blueGrey[50],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0))),
                                  width: 50,
                                  child: Icon(
                                    Icons.lightbulb_outline_rounded,
                                    size: 50,
                                  ),
                                ),
                                VerticalDivider(),
                                Expanded(
                                  child: Text(
                                    "Lamp",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18),
                                  ),
                                )
                              ],
                            ),
                            Divider(),
                            Expanded(
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                      left: 5,
                                    ),
                                    child: Text(
                                      "Lamp1",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16),
                                    ),
                                    width: 70,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.only(left: 4),
                                      child: Text("Philips lamp",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey)),
                                    ),
                                  ),
                                  Container(
                                    width: 60,
                                    child: Switch(
                                      value: isSwitched_Lamp1,
                                      onChanged: (value) {
                                        setState(() {
                                          isSwitched_Lamp1 = value;
                                        });
                                        if (isSwitched_Lamp1 == true) {
                                          String status = "1";
                                          _lamp1(status);
                                        } else {
                                          String status = "0";
                                          _lamp1(status);
                                        }
                                      },
                                      activeTrackColor: Colors.blue,
                                      activeColor: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(),
                            Expanded(
                              child: Row(
                                children: [
                                  Container(
                                    width: 80,
                                    margin: EdgeInsets.only(left: 5),
                                    child: Text(
                                      "Lamp2",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.only(left: 4),
                                      child: Text("Philips lamp",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey)),
                                    ),
                                  ),
                                  Container(
                                    width: 60,
                                    child: Switch(
                                      value: isSwitched_lamp2,
                                      onChanged: (value) {
                                        setState(() {
                                          isSwitched_lamp2 = value;
                                        });
                                        if (isSwitched_lamp2 == true) {
                                          String status = "1";
                                          _lamp2(status);
                                        } else {
                                          String status = "0";
                                          _lamp2(status);
                                        }
                                      },
                                      activeTrackColor: Colors.blue,
                                      activeColor: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(),
                            Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.only(left: 5),
                                      child: Text(
                                        "Lamp3",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.only(left: 4),
                                      child: Text("Philips lamp",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey)),
                                    ),
                                  ),
                                  Container(
                                    width: 60,
                                    child: Switch(
                                      value: isSwitched_lamp3,
                                      onChanged: (value) {
                                        setState(() {
                                          isSwitched_lamp3 = value;
                                        });
                                        if (isSwitched_lamp3 == true) {
                                          String status = "1";
                                          _lamp3(status);
                                        } else {
                                          String status = "0";
                                          _lamp3(status);
                                        }
                                      },
                                      activeTrackColor: Colors.blue,
                                      activeColor: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        height: 250,
                      ),
                    )),
                    Expanded(
                        child: Column(
                      children: [
                        Expanded(
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(11))),
                            child: Container(
                              margin: EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 50,
                                        decoration: BoxDecoration(
                                            color: Colors.blueGrey[50],
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10.0))),
                                        child: Icon(
                                          Icons.volume_down,
                                          size: 50,
                                        ),
                                      ),
                                      VerticalDivider(),
                                      Expanded(
                                        child: Text(
                                          "Speaker",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18),
                                        ),
                                      )
                                    ],
                                  ),
                                  Divider(),
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            margin: EdgeInsets.only(left: 4),
                                            child: Text("Simbada 125 ",
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.grey)),
                                          ),
                                        ),
                                        Container(
                                          width: 60,
                                          child: Switch(
                                            value: isSwitched_speaker,
                                            onChanged: (value) {
                                              setState(() {
                                                isSwitched_speaker = value;
                                              });
                                              if (isSwitched_speaker == true) {
                                                String status = "1";
                                                _speaker(status);
                                              } else {
                                                String status = "0";
                                                _speaker(status);
                                              }
                                            },
                                            activeTrackColor: Colors.blue,
                                            activeColor: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(11))),
                            child: Container(
                              margin: EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.blueGrey[50],
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10.0))),
                                        width: 50,
                                        child: Icon(
                                          Icons.tv,
                                          size: 50,
                                        ),
                                      ),
                                      VerticalDivider(),
                                      Expanded(
                                        child: Text(
                                          "TV",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18),
                                        ),
                                      )
                                    ],
                                  ),
                                  Divider(),
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            margin: EdgeInsets.only(left: 4),
                                            child: Text("Samsung Curve ",
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.grey)),
                                          ),
                                        ),
                                        Container(
                                          width: 60,
                                          child: Switch(
                                            value: isSwitched_tv,
                                            onChanged: (value) {
                                              setState(() {
                                                isSwitched_tv = value;
                                              });
                                              if (isSwitched_tv == true) {
                                                String status = "1";
                                                _tv(status);
                                              } else {
                                                String status = "0";
                                                _tv(status);
                                              }
                                            },
                                            activeTrackColor: Colors.blue,
                                            activeColor: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                height: 125,
                child: Row(
                  children: [
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(11))),
                        child: Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.blueGrey[50],
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0))),
                                    width: 50,
                                    child: Icon(
                                      Icons.ac_unit,
                                      size: 50,
                                    ),
                                  ),
                                  VerticalDivider(),
                                  Expanded(
                                    child: Text(
                                      "AC",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18),
                                    ),
                                  )
                                ],
                              ),
                              Divider(),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        margin: EdgeInsets.only(left: 4),
                                        child: Text("AC Toshiba ",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey)),
                                      ),
                                    ),
                                    Container(
                                      width: 60,
                                      child: Switch(
                                        value: isSwitched_ac,
                                        onChanged: (value) {
                                          setState(() {
                                            isSwitched_ac = value;
                                          });
                                          if (isSwitched_ac == true) {
                                            String status = "1";
                                            _ac(status);
                                          } else {
                                            String status = "0";
                                            _ac(status);
                                          }
                                        },
                                        activeTrackColor: Colors.blue,
                                        activeColor: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(11))),
                        child: Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.blueGrey[50],
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0))),
                                    width: 50,
                                    child: Icon(
                                      Icons.wifi,
                                      size: 50,
                                    ),
                                  ),
                                  VerticalDivider(),
                                  Expanded(
                                    child: Text(
                                      "WIFI",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18),
                                    ),
                                  )
                                ],
                              ),
                              Divider(),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        margin: EdgeInsets.only(left: 4),
                                        child: Text("Wifi Indihome ",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey)),
                                      ),
                                    ),
                                    Container(
                                      width: 60,
                                      child: Switch(
                                        value: isSwitched_wifi,
                                        onChanged: (value) {
                                          setState(() {
                                            isSwitched_wifi = value;
                                          });
                                          if (isSwitched_wifi == true) {
                                            String status = "1";
                                            _wifi(status);
                                          } else {
                                            String status = "0";
                                            _wifi(status);
                                          }
                                        },
                                        activeTrackColor: Colors.blue,
                                        activeColor: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
