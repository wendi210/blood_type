import 'package:flutter/material.dart';
import 'input_data.dart';

class Landing extends StatefulWidget {
  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Colors.blue[500],
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 200,left: 5,right: 10),
                child:
                Image.asset('images/welcome.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top:50),
                child: Text(
                  'BLOOD TYPE',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    height: 0,
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 50,right: 50,bottom: 20,top: 80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(child:
                    RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => InputData()),
                        );
                      },
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      color: Colors.green,

                      child: Text(
                        'Mulai',
                        style:
                        TextStyle(color:Colors.white,fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Developed by Wendiana',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ),

            ],
          ),
        ),
      );
  }
}