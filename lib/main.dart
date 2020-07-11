import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_screen/signIn.dart';
import 'package:form_screen/signup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new  MaterialApp(
     debugShowCheckedModeBanner: false,
      home: new MyHomePage(),

    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();

}
class _MyHomePageState extends State<MyHomePage> {
  String _email , _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Column(
        key: _formKey,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(40.0,80.0, 0.0, 0.0),
                  child: Text(
                      'Hysys >',
                      style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.bold,color: Colors.blueAccent)
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(40.0,120.0, 0.0, 0.0),
                  child: Text(
                    'Employee Login',
                    style: TextStyle(
                      fontSize: 15.0, fontWeight: FontWeight.normal,color: Colors.black54)
                    ),
                  ),
                Container(
                  padding: EdgeInsets.fromLTRB(40.0,160.0, 0.0, 0.0),
                  child: Text(
                      'Welcome!',
                      style: TextStyle(
                          fontSize: 35.0, fontWeight: FontWeight.normal,fontStyle: FontStyle.normal)
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(40.0,220.0, 0.0, 0.0),
                  child: Text(
                      'Please Sign-in to continue',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.grey)
                  ),
                ),


              ],
            ),
          ),
          Container(
            padding: EdgeInsets .only(top: 35.0,left: 40.0,right: 20.0),
            child: Column(

              children: <Widget>[

                TextFormField(
                  validator: (input){
                    if(input.isEmpty){
                      return 'Please type an email';
                    }
                  },
                  onSaved: (input) => _email = input,
                  decoration: InputDecoration(
                    labelText: 'Email address',
                    labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey

                    ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.lightBlueAccent)
                      )
                  ),
                ),
                SizedBox(height: 20.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextFormField(
                      validator: (input){
                        if(input.length < 6){
                          return 'Your password needs to be atleast 6 characters';
                        }
                      },
                      onSaved: (input) => _password = input,
                      decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey

                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.lightBlueAccent)
                          )
                      ),
                      obscureText: true,
                    ),
                    SizedBox(width: 0.0),

                    Container(
                      alignment: Alignment.topRight,
                      //alignment: Alignment(1.0,1.0),
                      padding: EdgeInsets.fromLTRB(40.0,0.0, 0.0, 0.0),
                      child: InkWell(
                        child: Text('Forgot Password?',
                          style: TextStyle(
                              color: Colors.lightBlue,
                              fontWeight: FontWeight.bold,
                              fontFamily:  'Monstserrat',
                              decoration: TextDecoration.underline

                          ),
                        ),
                      ),
                    ),
                  ],
                ),


               // SizedBox(height: 20.0),



              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  FlatButton(
                    child: Text('Sign In',
                      style: TextStyle (color: Colors.white),

                    ),


                    color: Colors.blue,

                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(200),
                        side: BorderSide(color: Colors.white)),

                    onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomeScreen())),



                  ),
                  FlatButton(
                    child: Text('Sign Up',
                      style: TextStyle (color: Colors.white),

                    ),


                    color: Colors.red,

                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100),
                        side: BorderSide(color: Colors.white)),

                    onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> SignUp())),



                  ),

                ],
              )
//                    FlatButton(
//                    child: Text('Sign In',
//                      style: TextStyle (color: Colors.white),
//
//                    ),
//
//
//                         color: Colors.blue,
//
//                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100),
//                          side: BorderSide(color: Colors.white)),
//
//                      onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomeScreen())),
//
//
//
//                            ),





              ],

            ),
          ),


        ],
      ),

    );
  }
  Future<void> signIn() async{
    final formState = _formKey.currentState;
    if(formState.validate()){
      formState.save();

    
    }
  }
}


