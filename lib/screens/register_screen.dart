import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tax_app/user_auth/firebase_auth/firebase_auth_implementation.dart';

late final User loggedinUser;

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  // @override
  // void initState() {
  //   super.initState();
  //   getCurrentUser();
  // }

  // void getCurrentUser() async {
  //   try {
  //     final user = await checkAuth.currentUser;
  //     if (user != null) {
  //       loggedinUser = user!;
  //       Navigator.of(context)
  //           .pushNamedAndRemoveUntil("/dashboard", (route) => false);
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  bool _isHidden = true;
  bool _isHidden1 = true;

  final FirebaseAuthService _auth = FirebaseAuthService();

  final checkAuth = FirebaseAuth.instance;

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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 101.h),
            Text(
              "Sign Up",
              style: TextStyle(
                  fontSize: 26.sp,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF171717)),
            ),
            SizedBox(
              height: 21.h,
            ),
            Container(
              height: 45.h,
              width: 243.w,
              child: Text(
                "Welcome, Please input the required details and get started",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.5.sp),
              ),
            ),
            SizedBox(
              height: 38.h,
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
                controller: _passwordController,
                maxLines: 1,
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
            SizedBox(height: 45.h),
            Container(
              width: 308.w,
              height: 52.h,
              child: TextField(
                obscureText: _isHidden1,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: "Confirm Password",
                    hintStyle: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(112, 112, 112, 0.41)),
                    contentPadding: EdgeInsets.fromLTRB(21.w, 0, 0, 0),
                    suffixIcon: InkWell(
                        onTap: _toggleHidden1,
                        child: Icon(_isHidden1
                            ? Icons.visibility
                            : Icons.visibility_off)),
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
              onTap: _signUp,
              child: Container(
                height: 52.h,
                width: 306.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Color(0xFF007EFB),
                ),
                child: Center(
                  child: Text(
                    "Next",
                    style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            GestureDetector(
              onTap: () => Navigator.of(context)
                  .pushNamedAndRemoveUntil("/login", (route) => false),
              child: Text("Not a new agent, Click to login"),
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

  void _toggleHidden1() {
    setState(() {
      _isHidden1 = !_isHidden1;
    });
  }

  void _signUp() async {
    String email = _emailController.text;
    String password = _passwordController.text;

    User? user = await _auth.signUpWithEmailAndPassword(email, password);

    if (user != null) {
      print("successful");
      Navigator.pushNamed(context, "/login");
    } else {
      print("Some error happened");
    }
  }
}
