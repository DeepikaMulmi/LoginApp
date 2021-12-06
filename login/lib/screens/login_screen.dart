import 'package:flutter/material.dart';
import 'package:login/screens/home_screen.dart';

TextStyle myStyle = TextStyle(fontSize: 25);

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
    String username = "";
    String password = "";

  @override
  Widget build(BuildContext context) {

    final usernameField = TextField(
      onChanged: (val){
        setState(() {
          username = val;
        });
      },
      style: myStyle,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          hintText: "Username",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32.0)
          )
      ),
    );


    final passwordField = TextField(
      onChanged: (val){
        setState(() {
          password = val;
        });
      },
      obscureText: true,
      style: myStyle,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          hintText: "Password",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32.0)
          )
      ),
    );
    final myLoginButton = Material(
    elevation: 5.0,
    borderRadius: BorderRadius.circular(25.0),
    color: Colors.blue,
    child: MaterialButton(
    minWidth: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(20),
      onPressed: (){
     if(username == "flutter" && password == "hello12"){
       Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen(username)));
     }else{
       print("Login is failed");
     }
      },
      child: Text('Login', style: TextStyle(color: Colors.white, fontSize:20),),
    ),
    );
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
          padding:  EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Icon(Icons.supervised_user_circle,size: 100,),
                SizedBox(height:150),
                usernameField,
              SizedBox(height: 10),
              passwordField,
                SizedBox(height: 10),
                myLoginButton,
            ],
            )
            ),
          ),
        ),
    );
  }
}
