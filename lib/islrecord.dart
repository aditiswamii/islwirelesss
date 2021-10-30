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

backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0.0,
          toolbarHeight: 90,
        backgroundColor: Colors.white,
          title: Text("     ISL Wireless",style:TextStyle(color:Colors.black,fontSize:25 ),textAlign:TextAlign.center),
          leading: GestureDetector(
            onTap: () { },
            child:Icon(
              Icons.menu,size: 50,color: Colors.black,
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.notifications,size: 40,color: Colors.black,
                ),
              ),

            ),
          ]
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 40, 20 ,40),
        child: ListView(
          children: <Widget>[

          Container(
            decoration: BoxDecoration(

            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 3,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
             ),
          height: 120,
           child:Card(
              child:ListTile(
                leading: new Image.asset("assets/Attendance.png",width: 60,height: 150,alignment: Alignment.center,),
                  title: Text(''),
                  subtitle: const Text(
                  'Attendance',
                  style: TextStyle(fontSize: 30,color: Colors.black),
                    textAlign:TextAlign.center,
                )
            ),


          margin: EdgeInsets.all(5),
        ),
          ),
        Container(
          decoration: BoxDecoration(

            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 3,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          height: 120,
          child:Card(
    child: ListTile(
        leading: new Image.asset("assets/Leave.png",width: 60,height: 150,alignment: Alignment.center),
        title: Text(''),
        subtitle: Text(
                  'Leaves',
                  style: TextStyle(fontSize: 30,color: Colors.black),
                  textAlign:TextAlign.center,
                )),

      margin: EdgeInsets.all(5),
    ),
        ),
        Container(
          decoration: BoxDecoration(

            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 3,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          height: 120,
          child:Card(
    child: ListTile(
        leading: new Image.asset("assets/Tour.png",width: 60,height: 150,alignment: Alignment.center),
        title: Text(''),
        subtitle: Text(
                  'Tours',
                  style: TextStyle(fontSize: 30,color: Colors.black),
                  textAlign:TextAlign.center,
                )),

      margin: EdgeInsets.all(5),
    ),
        ),
        Container(
          decoration: BoxDecoration(

            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 3,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          height: 120,
          child:Card(
    child:  ListTile(
        leading: new Image.asset("assets/Complaint.png",width: 60,height: 150,alignment: Alignment.center),
                title: Text(''),
                subtitle: Text(
                  'Complaints',
                  style: TextStyle(fontSize: 30,color: Colors.black),
                  textAlign:TextAlign.center,
                )),

      margin: EdgeInsets.all(5),
    ),
        ),
          ],
        ),
      ),
    );
  }
}