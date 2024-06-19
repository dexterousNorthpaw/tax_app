import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NinAuthScreen2 extends StatefulWidget {
  const NinAuthScreen2({super.key});

  @override
  State<NinAuthScreen2> createState() => _NinAuthScreen2State();
}

class _NinAuthScreen2State extends State<NinAuthScreen2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          // backgroundColor: Color(0xFFF1FAFF),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios)),
          title: Text(
            "New Taxpayer",
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w700,
              color: Color(
                0xFF3469E9,
              ),
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 31.h,
              width: 360.w,
              child: Container(
                  margin: EdgeInsets.only(left: 28.w),
                  child: Text("Authentication by NIN")),
            ),
            SizedBox(
              height: 3.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 28.w),
              child: Text(
                  "Complete in the KYC form with taxpayer details\nThis might take time."),
            ),
            SizedBox(
              height: 19.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 28.w),
              child: Text("Name", style: TextStyle(fontSize: 11.sp)),
            ),
            Container(
              margin: EdgeInsets.only(left: 25.w),
              height: 52.h,
              width: 308.w,
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "123-456-789-00",
                    hintStyle:
                        TextStyle(fontSize: 11.sp, color: Color(0xFF707070)),
                    filled: true,
                    fillColor: Color(0xFFECF1f4),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10.r))),
              ),
            ),
            SizedBox(
              height: 11.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 28.w),
              child: Text("Phone Number", style: TextStyle(fontSize: 11.sp)),
            ),
            Container(
              margin: EdgeInsets.only(left: 25.w),
              height: 52.h,
              width: 308.w,
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "123-456-789-00",
                    hintStyle:
                        TextStyle(fontSize: 11.sp, color: Color(0xFF707070)),
                    filled: true,
                    fillColor: Color(0xFFECF1f4),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10.r))),
              ),
            ),
            SizedBox(
              height: 11.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 28.w),
              child: Text("Residential Address",
                  style: TextStyle(fontSize: 11.sp)),
            ),
            Container(
              margin: EdgeInsets.only(left: 25.w),
              height: 52.h,
              width: 308.w,
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "123-456-789-00",
                    hintStyle:
                        TextStyle(fontSize: 11.sp, color: Color(0xFF707070)),
                    filled: true,
                    fillColor: Color(0xFFECF1f4),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10.r))),
              ),
            ),
            SizedBox(
              height: 11.sp,
            ),
            Container(
              margin: EdgeInsets.only(left: 28.w),
              child: Text("Gender", style: TextStyle(fontSize: 11.sp)),
            ),
            Container(
              margin: EdgeInsets.only(left: 25.w),
              height: 52.h,
              width: 308.w,
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "123-456-789-00",
                    hintStyle:
                        TextStyle(fontSize: 11.sp, color: Color(0xFF707070)),
                    filled: true,
                    fillColor: Color(0xFFECF1f4),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10.r))),
              ),
            ),
            SizedBox(
              height: 103.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 27.w),
              height: 52.h,
              width: 306.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Color(0xFFB8D3FF)),
              child: Center(
                child: Text(
                  "Next",
                  style: TextStyle(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
