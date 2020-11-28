import 'package:flutter/material.dart';
import 'package:login_app/models/authentication.dart';
import 'package:login_app/screens/database.dart';
import 'package:login_app/screens/login_screen.dart';
import 'package:login_app/screens/student_login.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    _getType();
    super.initState();
  }

  _getType() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      type = prefs.getInt("type");
    });

    print(type);
  }

  int type;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(type == 0
            ? 'Student Home Screen'
            : type == 1
                ? ("Librarian Home Screen")
                : ("Other's Home Screen")),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'This is my home screen',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            _typeButton(),
            RaisedButton(
              child: Text('LOGOUT'),
              onPressed: () {
                if (Provider.of<Authentication>(context, listen: false)
                    .logout())
                  Navigator.pushReplacementNamed(
                      context, LoginScreen.routeName);
              },
            )
          ],
        ),
      ),
    );
  }

  Widget _typeButton() {
    String buttontext = type == 0
        ? "Open Reg Form"
        : type == 1
            ? "Manage data"
            : type == 2
                ? "Manage "
                : "other work";
    return RaisedButton(
      child: Text(buttontext),
      onPressed: (){
        if(type==0){
          Navigator.pushNamed(context, Studentdetail.routeName);
        }
        else if(type==1){
          Navigator.pushNamed(context, DatabasePage.routeName);

        }else{

        }
      },
    );
  }
}
