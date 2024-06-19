import "dart:io";

import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

class Headshot extends StatefulWidget {
  final String imagePath;
  const Headshot({super.key, required this.imagePath});

  @override
  State<Headshot> createState() => _HeadshotState();
}

class _HeadshotState extends State<Headshot> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 72.h,
            ),
            Text(
              "Confirm Headshot",
              style: TextStyle(
                  color: Color(0xFF171717),
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w800,
                  height: 1.33),
            ),
            SizedBox(
              height: 77.h,
            ),
            Container(
              width: 277.w,
              height: 354.h,
              child: Image.file(
                File(widget.imagePath),
              ),
            ),
            SizedBox(
              height: 78.h,
            ),
            SizedBox(
              width: 283.w,
              child: Row(
                children: [
                  Container(
                    height: 39.h,
                    width: 126.w,
                    decoration: BoxDecoration(
                        color: Color(0xFFF1FAFF),
                        borderRadius: BorderRadius.circular(10.sp)),
                    child: Center(
                      child: Text(
                        "Retry",
                        style: TextStyle(
                            color: Color(0xFF007EFB),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("/taxpayeradded");
                    },
                    child: Container(
                      height: 39.h,
                      width: 105.w,
                      decoration: BoxDecoration(
                          color: Color(0xFF007EFB),
                          borderRadius: BorderRadius.circular(10.sp)),
                      child: Center(
                        child: Text(
                          "Proceed",
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
