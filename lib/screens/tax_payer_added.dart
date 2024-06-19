import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TaxPayerAdded extends StatefulWidget {
  const TaxPayerAdded({super.key});

  @override
  State<TaxPayerAdded> createState() => _TaxPayerAddedState();
}

class _TaxPayerAddedState extends State<TaxPayerAdded> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      body: Column(children: [
        SizedBox(
          height: 122.h,
        ),
        Center(
          child: Container(
            height: 224.h,
            width: 236.h,
            child: Image(image: AssetImage("assets/images/addedLogo.png")),
          ),
        ),
        SizedBox(
          height: 127.h,
        ),
        Text(
          "Taxpayer Added",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.w800,
              height: 1.3,
              color: Color(0xFF333333)),
        ),
        Text(
          "Welldone, you have successfully\nadded a new taxpayer",
          style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              height: 1.4,
              color: Color(0xFF444444)),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 66.9.h,
        ),
        Container(
          height: 39.h,
          width: 284.w,
          // color: Colors.pink,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 132.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Color(0xFFF1FAFF)),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        "/dashboard", (route) => false);
                  },
                  child: Center(
                      child: Text(
                    "Go home",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF007EFB)),
                  )),
                ),
              ),
              Container(
                width: 132.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Color(0xFF007EFB)),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        "/dashboard", (route) => false);
                  },
                  child: Center(
                      child: Text(
                    "View Profile",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFFFFFF)),
                  )),
                ),
              )
            ],
          ),
        )
      ]),
    ));
  }
}
