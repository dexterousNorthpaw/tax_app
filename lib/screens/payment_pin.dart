import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

class PinSetup extends StatefulWidget {
  const PinSetup({super.key});

  @override
  State<PinSetup> createState() => _PinSetupState();
}

class _PinSetupState extends State<PinSetup> {
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
              'Payment PIN Set-up',
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
              'Please set-up your four digits Payment\nPIN for transactions ',
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
                    .pushNamedAndRemoveUntil("/passcode", (route) => true);
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
                    "Set-up Pin",
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
