import 'package:flutter/material.dart';
import 'package:login_app/screens/login_screen.dart';
import 'package:login_app/screens/request.dart';

class Studentdetail extends StatefulWidget {
  static const routeName = '/registration-page';

  @override
  _StudentdetailState createState() => _StudentdetailState();
}

class _StudentdetailState extends State<Studentdetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Registration form '),
        leading: IconButton(icon: Icon(Icons.arrow_back),onPressed: (){
          Navigator.of(context).pop();
        },
      ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Flexible(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [],
                      ),
                      //  UnderlineInputBorder(),
                      Text('REGISTRATION FORM'),
                      Row(),
                      Row(
                        children: [
                          Text('STUDENT NAME'),
                          SizedBox(width: 10),
                          Flexible(child: TextField())
                        ],
                      ),
                      Row(
                        children: [
                          Text('ROLL NO'),
                          SizedBox(width: 10),
                          Flexible(child: TextField())
                        ],
                      ),
                      Row(
                        children: [
                          Text('REG NO'),
                          SizedBox(width: 10),
                          Flexible(child: TextField())
                        ],
                      ),
                      Row(
                        children: [
                          Text('GENDER'),
                          SizedBox(width: 10),
                          Flexible(child: TextField())
                        ],
                      ),
                      Row(
                        children: [
                          Text('CATEGORY(GEN/OBC/SC/ST)'),
                          SizedBox(width: 10),
                          Flexible(child: TextField())
                        ],
                      ),
                      Row(
                        children: [
                          Text('PWD(Y/N)'),
                          SizedBox(width: 10),
                          Flexible(child: TextField())
                        ],
                      ),
                      Row(
                        children: [
                          Text('DOMICILE'),
                          SizedBox(width: 10),
                          Flexible(child: TextField())
                        ],
                      ),
                      Row(
                        children: [
                          Text('FATHER\'S/MOTHER\'S NAME'),
                          SizedBox(width: 10),
                          Flexible(child: TextField())
                        ],
                      ),
                      Row(
                        children: [
                          Text('HOME ADDRESS'),
                          SizedBox(width: 10),
                          Flexible(child: TextField())
                        ],
                      ),
                      Row(
                        children: [
                          Text('PHONE NUMBER'),
                          SizedBox(width: 10),
                          Flexible(child: TextField())
                        ],
                      ),
                      Row(
                        children: [
                          Text('E-MAIL'),
                          SizedBox(width: 10),
                          Flexible(child: TextField())
                        ],
                      ),
                      Row(
                        children: [
                          Text('HOSTEL/ PG ADDRESS'),
                          SizedBox(width: 10),
                          Flexible(child: TextField())
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'EDUCATION ON(SELF FINANCE/ EDUCATION LOAN/ SCHOLARSHIP',
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(width: 10),
                          Flexible(child: TextField())
                        ],
                      ),
                      Row(
                        children: [
                          Text('DETAILS'),
                          SizedBox(width: 10),
                          Flexible(child: TextField())
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    RaisedButton(
                      child: Text('hostel warden'),
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed(RequestPage.routeName);
                      },
                    ),
                    SizedBox(width: 10),
                    RaisedButton(
                      child: Text('fee admin'),
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed(RequestPage.routeName);
                      },
                    ),
                    SizedBox(width: 10),
                    RaisedButton(
                      child: Text('librarian'),
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed(RequestPage.routeName);
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
