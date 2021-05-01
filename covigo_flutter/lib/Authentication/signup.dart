import 'package:covigo/Authentication/MainScreen.dart';
import 'package:covigo/ControlScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:covigo/Variables.dart';
import 'package:covigo/WidgetResizing.dart';
class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController _usernameController;
  TextEditingController _passwordController;
  TextEditingController _phoneController;
  TextEditingController _emailController;
  FocusNode _usernamenode;
  FocusNode _passwordnode;
  FocusNode _emailnode;
  FocusNode _phonenode;

  @override
  void initState() {
    _usernameController = TextEditingController();
    _usernamenode = FocusNode();
    _passwordController=TextEditingController();
    _passwordnode=FocusNode();
    _emailController=TextEditingController();
    _phoneController=TextEditingController();
    _emailnode=FocusNode();
    _phonenode=FocusNode();

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
          child: Container(
          color: Colors.white,
          height: double.infinity,
          width: double.infinity,
          margin: EdgeInsets.only(
            left: 50/3.6*boxSizeH,
            right: 50/3.6*boxSizeH
          ),
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40/6.4*boxSizeV,
            ),
          Align(
            alignment: Alignment.center,
            child: Text('SIGN UP',
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
          ),
            Container(
             width: 248/3.6*boxSizeH,
             height: 200/6.4*boxSizeV,
              child: Image.asset('images/Login.png'),
              ),
            Text('Name',
              style: GoogleFonts.poppins(
                fontSize: 19,
                color: Color(0xff2C4C75),
                fontWeight: FontWeight.w600,
              ) ,
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
              height: 10/6.4*boxSizeV,
            ),
            Text('Email',
              style: GoogleFonts.poppins(
                fontSize: 19,
                color: Color(0xff2C4C75),
                fontWeight: FontWeight.w600,
              ) ,
            ),
            Container(
              width: 255/3.6*boxSizeH,
              height: 38/6.4*boxSizeV,
              child: TextField(
                focusNode: _emailnode,
                controller: _emailController,
                maxLines: 1,
                keyboardType: TextInputType.text,
                style: TextStyle(
                    color: Color(0xff2C4C75) ,
                    fontSize: 23.0,
                    textBaseline: TextBaseline.alphabetic
                ),
                cursorColor: Color(0xff2C4C75) ,

                decoration: InputDecoration(
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
    height: 10/6.4*boxSizeV,
    ),
            Text('Password',
              style: GoogleFonts.poppins(
                fontSize: 19,
                color: Color(0xff2C4C75),
                fontWeight: FontWeight.w600,
              ) ,
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
              height: 10/6.4*boxSizeV,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Phone',
                style: GoogleFonts.poppins(
                  fontSize: 19,
                  color: Color(0xff2C4C75),
                  fontWeight: FontWeight.w600,
                ) ,
              ),
            ),
            Container(
              width: 255/3.6*boxSizeH,
              height: 38/6.4*boxSizeV,
              child: TextField(
                focusNode: _phonenode,
                controller: _phoneController,
                maxLines: 1,
                keyboardType: TextInputType.text,
                style: TextStyle(
                    color: Color(0xff2C4C75) ,
                    fontSize: 23.0,
                    textBaseline: TextBaseline.alphabetic
                ),
                cursorColor: Color(0xff2C4C75) ,

                decoration: InputDecoration(
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
            Align(
              alignment: Alignment.center,
              child: GestureDetector(
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
                onTap:(){
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context)=> ControlScreen(),)
                    ,);
                }
              ),
            ),
            ]
    )
    ),
        )
    );}
}
