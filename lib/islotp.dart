import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: <Widget>[
      Container(
      decoration: const BoxDecoration(
      image: DecorationImage(
      image: AssetImage("assets/background.jpg"),
      fit: BoxFit.cover,),
    ),
    ),
    Container(
    child: Padding(
            padding: EdgeInsets.fromLTRB(20, 200, 20, 50),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'ISL WIRELESS',
                      style: TextStyle(fontSize:20,color:Colors.white),
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Please Enter the OTP',
                      style: TextStyle(fontSize:20,color:Colors.white),
                    )),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: TextField(
                    decoration: const InputDecoration(labelText: "ENTER OTP HERE",labelStyle:TextStyle(color: Colors.white),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    cursorColor: Colors.white,
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ], ),
                ),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(20),
                    child: const Text(
                      '02.00',
                      style: TextStyle(fontSize: 10,color:Colors.white),
                    )),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.lightGreenAccent,
                      child: Text('Submit'),
                      onPressed: () {
                        print("OTP submitted");
                      },
                    )),
              ],
            )
    )
    )
    ]
    )
    );
  }
}