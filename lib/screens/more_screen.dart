import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tax_app/screens/profile_screen.dart';

class MorePage extends StatefulWidget {
  const MorePage({super.key});

  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("More"),
        titleTextStyle: TextStyle(
          color: Color(0xFF007EFB),
          fontSize: 12.sp,
          fontWeight: FontWeight.w700,
        ),
        centerTitle: true,
        backgroundColor: Color(0xFFFFFFFF),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 27.w),
              child: ListTile(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ProfilePage()));
                },
                leading: Image.asset("assets/images/UserCircle.png"),
                title: Text("Profile Set up"),
                subtitle: Text("Agent Account set up"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 27.w),
              child: ListTile(
                onTap: () {},
                leading: Image.asset("assets/images/FileText.png"),
                title: Text("Statement Request"),
                subtitle: Text("Get monthly statements"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 27.w),
              child: ListTile(
                onTap: () {},
                leading: Image.asset("assets/images/lock-closed.png"),
                title: Text("Login Settings"),
                subtitle: Text("Manage PIN and Passcodes"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 27.w),
              child: ListTile(
                onTap: () {},
                leading: Image.asset("assets/images/Key-f.png"),
                title: Text("Profile Set up"),
                subtitle: Text("Agent Account set up"),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
