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
                padding: EdgeInsets.fromLTRB(80, 200, 80, 80),
                child: ListView(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      child: Text("ISL WIRELESS",style:TextStyle(color:Colors.white)),
                    ),
                    Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(20),
                        child: const Text(
                          'Log in',
                          style: TextStyle(fontSize: 30,color:Colors.white),
                        )),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                      child: TextField(
                        decoration: new InputDecoration(labelText: "Mobile number",labelStyle:TextStyle(color: Colors.white),
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
                        ],),
                    ),
                    Container(
                        height: 50,
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: RaisedButton(
                          textColor: Colors.white,
                          color: Colors.blue,
                          child: Text('Send OTP'),
                          onPressed: () {
                            print("OTP sent");
                          },
                        )),
                  ],
                )),
          )
        ],
      ),
    );
  }
}