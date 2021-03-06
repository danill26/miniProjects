import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:mini_project/theme.dart';
import 'package:responsive_builder/responsive_builder.dart';

class UiRegister extends StatefulWidget {
  const UiRegister({Key key}) : super(key: key);

  @override
  _UiRegisterState createState() => _UiRegisterState();
}

class _UiRegisterState extends State<UiRegister> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
        BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height),
        allowFontScaling: false,
        designSize: Size(375, 812));
    return ScreenTypeLayout(
      breakpoints: ScreenBreakpoints(desktop: 600, tablet: 950, watch: 300),
      mobile: Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 76.w, right: 90.w, left: 117.w),
                child: Text('Sign Up', style: signUp),
              ),
              SizedBox(
                height: 20.w,
              ),
              TextFieldContainer(
                child: TextField(
                  decoration: InputDecoration(hintText: 'Name'),
                ),
              ),
              SizedBox(
                height: 20.w,
              ),
              TextFieldContainer(
                child: TextField(
                  decoration: InputDecoration(hintText: 'E-mail'),
                ),
              ),
              SizedBox(
                height: 20.w,
              ),
              TextFieldContainer(
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(hintText: 'Password'),
                ),
              ),
              SizedBox(
                height: 20.w,
              ),
              TextFieldContainer(
                child: TextField(
                  decoration: InputDecoration(hintText: 'Repeat Password'),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 53, left: 20),
                child: Text(
                  'Sign up with social account',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 45.w,
                      width: 45.w,
                      // decoration: BoxDecoration(
                      //     image: DecorationImage(
                      //         image: AssetImage('assets/icons/gmail.png'),
                      //         fit: BoxFit.cover),
                      //     color: Colors.white),
                    )
                  ],
                ),
              ),
              Container(
                width: 258,
                height: 40.w,
                child: FlatButton(
                  color: Color(0xffFFCA61),
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: Text(
                    'Create Account',
                    style: TextStyle(color: Color(0xffFFFFFF), fontSize: 18.sp),
                  ),
                ),
              ),
              SizedBox(
                height: 17.w,
                width: 190.w,
                child: Row(
                  children: [
                    Text('Already have account? '),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Log In',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({Key key, this.child}) : super(key: key);
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: 53, right: 53),
      padding: EdgeInsets.symmetric(horizontal: 23, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Color(0xffFFCA61),
                blurRadius: 4,
                spreadRadius: 0,
                offset: Offset(0, 4))
          ]),
      child: child,
    );
  }
}
