import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tax_app/user_auth/firebase_auth/firebase_auth_implementation.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isHidden = true;
  final FirebaseAuthService _auth = FirebaseAuthService();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 101.h,
            ),
            Text(
              "Log in",
              style: TextStyle(
                  color: Color(0xFF171717),
                  fontSize: 26.sp,
                  fontWeight: FontWeight.w800,
                  height: 1.2),
            ),
            SizedBox(
              height: 21.h,
            ),
            Container(
              width: 243.w,
              height: 45.h,
              child: Text(
                "Welcome, Please input the required details and get started",
                style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 29.h,
            ),
            Container(
              width: 308.w,
              height: 52.h,
              child: TextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    isDense: true,
                    hintText: "Email Address",
                    hintStyle: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(112, 112, 112, 0.41)),
                    contentPadding: EdgeInsets.fromLTRB(21.w, 0, 0, 0),
                    suffixIcon: InkWell(
                        // onTap: _toggleHidden,
                        child: Icon(Icons.info_outline_rounded)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(54.r),
                      // borderSide: BorderSide.none,
                    )),
              ),
            ),
            SizedBox(
              height: 45.h,
            ),
            Container(
              width: 308.w,
              height: 52.h,
              child: TextField(
                maxLines: 1,
                controller: _passwordController,
                obscureText: _isHidden,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(112, 112, 112, 0.41)),
                    contentPadding: EdgeInsets.fromLTRB(21.w, 0, 0, 0),
                    suffixIcon: InkWell(
                        onTap: _toggleHidden,
                        child: Icon(
                          _isHidden ? Icons.visibility : Icons.visibility_off,
                        )),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(54.r),
                      // borderSide: BorderSide.none,
                    )),
              ),
            ),
            SizedBox(
              height: 45.h,
            ),
            GestureDetector(
              onTap: _signIn,
              child: Container(
                height: 52.h,
                width: 306.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Color(0xFF007EFB),
                ),
                child: Center(
                  child: Text(
                    "Log in",
                    style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 21.h,
            ),
            Text(
              "Forgot Password",
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xFF007EFB),
              ),
            )
          ],
        ),
      ),
    ));
  }

  void _toggleHidden() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  void _signIn() async {
    String email = _emailController.text;
    String password = _passwordController.text;

    User? user = await _auth.signInWithEmailAndPassword(email, password);

    if (user != null) {
      print("successful");
      Navigator.of(context).pushNamedAndRemoveUntil(
        "/pinsetup",
        (route) => false,
      );
    } else {
      print("Some error happened");
    }
  }
}
