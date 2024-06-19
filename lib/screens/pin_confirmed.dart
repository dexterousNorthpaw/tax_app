import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConfirmedPIN extends StatefulWidget {
  const ConfirmedPIN({super.key});

  @override
  State<ConfirmedPIN> createState() => _ConfirmedPINState();
}

class _ConfirmedPINState extends State<ConfirmedPIN> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 121.h,
            ),
            Container(
              height: 235.h,
              width: 253.w,
              child: Image(image: AssetImage("assets/images/PIN.png")),
            ),
            SizedBox(
              height: 60.h,
            ),
            Text(
              'Payment PIN is set',
              style: TextStyle(
                  fontSize: 26.sp,
                  fontWeight: FontWeight.w800,
                  height: 1.3,
                  color: Color(0xFF171717)),
            ),
            SizedBox(
              height: 19.h,
            ),
            Text(
              'You can now perform secured\ntransactions with your PIN ',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  height: 1.4,
                  color: Color(0xFF444444)),
            ),
            SizedBox(
              height: 101.h,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .pushNamedAndRemoveUntil("/dashboard", (route) => true);
              },
              child: Container(
                height: 52.h,
                width: 306.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Color(0xFF007EFB),
                ),
                child: Center(
                  child: Text(
                    "Go Home",
                    style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
