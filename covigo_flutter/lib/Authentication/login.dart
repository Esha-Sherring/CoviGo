import 'package:covigo/Authentication/signup.dart';
import 'package:covigo/Authentication/MainScreen.dart';
import 'package:covigo/ControlScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:covigo/Variables.dart';

import 'package:covigo/WidgetResizing.dart';
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _usernameController;
  TextEditingController _passwordController;
  FocusNode _usernamenode;
  FocusNode _passwordnode;

  @override
  void initState() {
    _usernameController = TextEditingController();
    _usernamenode = FocusNode();
    _passwordController=TextEditingController();
    _passwordnode=FocusNode();

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    boxSizeH = SizeConfig.safeBlockHorizontal;
    boxSizeV = SizeConfig.safeBlockVertical;
    return Scaffold(
        body: Container(
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('LOGIN',
         style: GoogleFonts.poppins(fontSize: 50,
           color: Color(0xff001448),
           fontWeight: FontWeight.w500,
           shadows: [
             Shadow(
               offset: Offset(0,3),
               blurRadius: 3.0,
               color: Colors.grey,
             ),
           ],
         ) ,),
          Container(
            width: 230/3.6*boxSizeH,
            height: 240/6.4*boxSizeV,
            child: Image.asset('images/Login.png'),
          ),
          Container(
            width: 255/3.6*boxSizeH,
            height: 38/6.4*boxSizeV,
            child: TextField(

              focusNode: _usernamenode,
              controller: _usernameController,
              keyboardType: TextInputType.text,
              style: TextStyle(
                color: Color(0xff2C4C75) ,
                fontSize: 23.0,
              ),
              cursorColor: Color(0xff2C4C75) ,
              decoration: InputDecoration(
                hintText: 'Username',
                hintStyle:GoogleFonts.poppins(
                  color: Color(0xff2C4C75) ,
                  fontSize: 23.0,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  borderSide: BorderSide(
                    color: Colors.black54
                  ),

                ),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff2C4C75),
                    )),
              ),

              onChanged: (value) {
                setState(() {

                });
              },
            ),
          ),
          SizedBox(
            height: 15/6.4*boxSizeV,
          ),
          Container(
            width: 255/3.6*boxSizeH,
            height: 38/6.4*boxSizeV,
            child: TextField(
              focusNode: _passwordnode,
              controller: _passwordController,
              maxLines: 1,
              keyboardType: TextInputType.text,
              style: TextStyle(
                  color: Color(0xff2C4C75) ,
                  fontSize: 23.0,
                  textBaseline: TextBaseline.alphabetic
              ),
              cursorColor: Color(0xff2C4C75) ,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle:GoogleFonts.poppins(
                  color: Color(0xff2C4C75) ,
                  fontSize: 23.0,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  borderSide: BorderSide(
                      color: Colors.black54
                  ),

                ),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff2C4C75),
                    )),
              ),

              onChanged: (value) {
                setState(() {

                });
              },
            ),
          ),
          SizedBox(
            height: 15/6.4*boxSizeV,
          ),
          GestureDetector(
            child: Container(
              width: 180/3.6*boxSizeH,
              height: 38/6.4*boxSizeV,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                ),
                borderRadius:
                BorderRadius.all(Radius.circular(25.0) //
                ),
                color: Color(0xff001448),),
              child: Padding(
                padding:  EdgeInsets.only(
                  top: 6/6.4*boxSizeV
                ),
                child: Text(
                  'Login',
                  style: GoogleFonts.poppins(
                    fontSize: 23.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            onTap: (){
              Navigator.push(
                context, MaterialPageRoute(builder: (context)=>ControlScreen(),)
                ,);
            },
          ),
          SizedBox(
            height: 7/6.4*boxSizeV,
          ),
          GestureDetector(
            child: Text(
              'Forgotten password?',
              style: GoogleFonts.poppins(
                fontSize: 17,
                color: Color(0xff2C4C75),
                fontWeight: FontWeight.w400,
              ) ,
            ),
          ),
          SizedBox(
            height: 30/6.4*boxSizeV,
          ),
          Text(
            'Don\'t have an account?',
            style: GoogleFonts.poppins(
              fontSize: 23,
              color: Color(0xff2C4C75),
              fontWeight: FontWeight.w400,
            ) ,
          ),
          SizedBox(
            height: 10/6.4*boxSizeV,
          ),
          GestureDetector(
            child: Container(
              width: 180/3.6*boxSizeH,
              height: 38/6.4*boxSizeV,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                ),
                borderRadius:
                BorderRadius.all(Radius.circular(25.0) //
                ),
                color: Color(0xff001448),),
              child: Padding(
                padding:  EdgeInsets.only(
                    top: 6/6.4*boxSizeV
                ),
                child: Text(
                  'Sign Up',
                  style: GoogleFonts.poppins(
                    fontSize: 23.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            onTap: (){
              Navigator.push(
                context, MaterialPageRoute(builder: (context)=> SignupPage(),)
                ,);
            },
          ),
        ]
        )
    )
    );
  }
}
