import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tax_app/screens/new_taxpayer_intl2.dart';

class IntlAuthScreen extends StatefulWidget {
  const IntlAuthScreen({super.key});

  @override
  State<IntlAuthScreen> createState() => _IntlAuthScreenState();
}

class _IntlAuthScreenState extends State<IntlAuthScreen> {
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
                  child: Text("Authentication by International ID")),
            ),
            SizedBox(
              height: 4.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 28.w),
              child: Text("Input Tax payer ID number"),
            ),
            SizedBox(
              height: 19.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 28.w),
              child: Text("ID Number"),
            ),
            Container(
                margin: EdgeInsets.only(left: 28.w),
                height: 52.h,
                width: 306.w,
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
                )),
            SizedBox(
              height: 341.h,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => IntlAuthScreen2()));
              },
              child: Container(
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
            )
          ],
        ),
      ),
    );
  }
}
