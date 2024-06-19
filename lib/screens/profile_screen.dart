import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final checkAuth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Profile Set up"),
        titleTextStyle: TextStyle(
          color: Color(0xFF007EFB),
          fontSize: 12.sp,
          fontWeight: FontWeight.w700,
        ),
        centerTitle: true,
        backgroundColor: Color(0xFFFFFFFF),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF007EFB),
            size: 24,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 37.h,
            ),
            Container(
              height: 86.h,
              width: 86.w,
              child: Image.asset("assets/images/Ellipse 3.png"),
            ),
            SizedBox(
              height: 22.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 27.w),
              child: ListTile(
                title: Text("Tobi Oluwabunmi"),
                subtitle: Text("Agent Name"),
                trailing: Icon(Icons.edit_square),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 27.w),
              child: ListTile(
                title: Text("09122345566"),
                subtitle: Text("Agent Number"),
                trailing: Icon(Icons.edit_square),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 27.w),
              child: ListTile(
                title: Text("Tobi Oluwabunmi@gmail.com"),
                subtitle: Text("Agent email"),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 27.w),
              child: ListTile(
                title: Text("23RUZ"),
                subtitle: Text("Agent ID"),
              ),
            ),
            SizedBox(
              height: 149.h,
            ),
            GestureDetector(
              onTap: () {
                checkAuth.signOut();
                Navigator.of(context)
                    .pushNamedAndRemoveUntil("/login", (route) => false);
              },
              child: Text(
                "Log Out",
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
