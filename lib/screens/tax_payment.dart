import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TaxPayment extends StatefulWidget {
  const TaxPayment({super.key});

  @override
  State<TaxPayment> createState() => _TaxPaymentState();
}

class _TaxPaymentState extends State<TaxPayment> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        // title: Text("Existing Taxpayer"),
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
      body: Column(
        children: [
          SizedBox(
            height: 60.h,
          ),
          Container(
            height: 52.h,
            width: 306.w,
            color: Colors.white,
            child: TextField(
              maxLines: 1,
              // obscureText: _isHidden,
              // keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  // prefixIcon: Icon(Icons.search),
                  // suffixIcon: Icon(Icons.calendar_month_outlined),
                  hintText: "Search via ID number/ Name",
                  hintStyle: TextStyle(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(112, 112, 112, 0.41)),
                  contentPadding: EdgeInsets.fromLTRB(21.w, 0, 0, 21.h),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    // borderSide: BorderSide.none,
                  )),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 25.w,
              ),
              Text(
                "Recent",
                style: TextStyle(
                    color: Color(0xFF007EFB),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700),
              ),
              // SizedBox(
              //   width: 20.w,
              // ),
              // Text(
              //   "Add New Taypayer",
              //   style: TextStyle(
              //       fontSize: 13.sp,
              //       fontWeight: FontWeight.w500,
              //       color: Color(0xFF1E1E1E)),
              // )
            ],
          ),
          SizedBox(
            height: 23.h,
          ),
          SizedBox(
            height: 30.h,
          ),
          Image(
            image: AssetImage("assets/images/empty.png"),
          ),
          SizedBox(
            height: 28.h,
          ),
          Text(
            "Nothing to see here",
            style: TextStyle(
                color: Color(0xFF333333),
                fontSize: 24.sp,
                fontWeight: FontWeight.w800,
                height: 1.3),
          ),
          SizedBox(
            height: 7.1.h,
          ),
          Text(
            "You have no recents make your\nfirst transaction to view recents",
            style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                height: 1.4,
                color: Color(0xFF444444)),
            textAlign: TextAlign.center,
          )
        ],
      ),
    ));
    ;
  }
}
