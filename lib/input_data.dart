import 'package:flutter/material.dart';
import 'blood_result.dart';


class InputData extends StatefulWidget {
  @override
  _InputDataState createState() => _InputDataState();
}

class _InputDataState extends State<InputData> {

  String nama='';
  String radioItem = '';
  final focus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Color(0xFFacdabe),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 100,left: 10,right: 10),
                child:
                Image.asset('images/welcome.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top:30,left: 40),
                child: Text(
                  'Hallo, diisi dulu yuk',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 30),
                margin: EdgeInsets.only(left: 45),
                child: Text(
                  'Nama',
                  style: TextStyle(
                    height: 0,
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 0,left: 20,right: 20),
                  padding: EdgeInsets.all(10),
                  // color: Colors.blue[700],
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextFormField(
                          onChanged: (txt) {
                            setState(() {
                              nama=txt;
                            });
                          },
                          textCapitalization: TextCapitalization.sentences,
                          keyboardType: TextInputType.text,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize:14,
                          ),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top:20,bottom:20,left: 30),
                              border: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(15.0),
                                  ),
                                  borderSide: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none
                                  )
                              ),

                              fillColor: Colors.white,
                              filled: true,
                              hintText: 'Nama'
                          ),
                        ),
                      ),
                    ],
                  )),
              Container(
                padding: EdgeInsets.only(top: 10),
                margin: EdgeInsets.only(left: 45),
                child: Text(
                  'Jenis Kelamin',
                  style: TextStyle(
                    height: 0,
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 10,left: 30,right: 30),
                  padding: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: RadioListTile(
                          activeColor: Colors.grey,
                          groupValue: radioItem,
                          title: Text('Laki-laki',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),),
                          value: 'ganteng',
                          onChanged: (val) {
                            setState(() {
                              radioItem = val;
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: RadioListTile(
                          activeColor: Colors.grey,
                          groupValue: radioItem,
                          title: Text('Perempuan',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),),
                          value: 'cantik',
                          onChanged: (val) {
                            setState(() {
                              radioItem = val;
                            });
                          },
                        ),
                      ),
                    ],
                  )),
               Container(
                margin: EdgeInsets.only(left: 40,right: 40,bottom: 20,top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(child:
                      RaisedButton(
                        onPressed: () {
                            Navigator.pop(context);},
                        padding: EdgeInsets.only(top: 5, bottom: 5),
                        color: Colors.redAccent,

                        child: Text(
                          'Kembali',
                          style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                        shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                      ),
                      ),
                      SizedBox(
                        width: 180,
                      ),
                      Expanded(child:
                      RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => BloodResult(nama:nama, kelamin:radioItem, nama_user: null, jenis_kelamin: null,)),
                          );
                        },
                        padding: EdgeInsets.only(top: 5, bottom: 5),
                        color: Colors.lightGreen,

                        child: Text(
                          'Selanjutnya',
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