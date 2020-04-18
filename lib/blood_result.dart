import 'package:blood_type/input_data.dart' show InputData;
import 'package:flutter/material.dart';

import 'input_data.dart';


class BloodResult extends StatelessWidget {

  BloodResult({
    @required this.nama_user,
    @required this.jenis_kelamin, kelamin, String nama,
   });

  final String nama_user;
  final String jenis_kelamin;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFFfdcf76),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 100),
              child:
              Image.asset('images/welcome.png',
                fit: BoxFit.fitWidth,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:0,left: 40),
              child: Text(
                'Hi, $nama_user!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
                    margin: EdgeInsets.only(left: 80,right: 80,bottom: 0,top: 60),
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
                          padding: EdgeInsets.only(top: 5, bottom: 5),
                          color: Colors.white,

                          child: Text(
                            'Coba lagi',
                            style:
                            TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                          shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                        ),
                        ),
                      ],
                    ),
            ),
          ],
        ),
      ),

    );
  }
}