import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TaxAssessmentUpdate extends StatefulWidget {
  const TaxAssessmentUpdate({super.key});

  @override
  State<TaxAssessmentUpdate> createState() => _TaxAssessmentUpdateState();
}

class _TaxAssessmentUpdateState extends State<TaxAssessmentUpdate> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFFFFFFFF),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Color(0xFF007EFB),
            )),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 17.5.w, right: 16.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 17.h,
            ),
            Text(
              "Tax Assessment",
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 27.h,
            ),
            RichText(
              text: const TextSpan(
                  text: "Business Type ",
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                        text: "*", style: TextStyle(color: Color(0xFFF00F00)))
                  ]),
            ),
            SizedBox(
              height: 56.h,
              width: 327.w,
              child: TextField(
                maxLines: 1,
                // obscureText: _isHidden,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "Enter Business Type",
                    hintStyle: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(112, 112, 112, 0.41)),
                    contentPadding: EdgeInsets.fromLTRB(21.w, 0, 0, 0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24.r),
                      // borderSide: BorderSide.none,
                    )),
              ),
            ),
            SizedBox(
              height: 17.h,
            ),
            RichText(
              text: const TextSpan(
                text: "Annual Tunrover",
                style: TextStyle(color: Colors.black),
                // children: [
                //   TextSpan(
                //       text: "*", style: TextStyle(color: Color(0xFFF00F00)))
                // ],
              ),
            ),
            SizedBox(
              height: 56.h,
              width: 327.w,
              child: TextField(
                maxLines: 1,
                // obscureText: _isHidden,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "Annual Turnover",
                    hintStyle: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(112, 112, 112, 0.41)),
                    contentPadding: EdgeInsets.fromLTRB(21.w, 0, 0, 0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24.r),
                      // borderSide: BorderSide.none,
                    )),
              ),
            ),
            SizedBox(
              height: 17.h,
            ),
            RichText(
              text: const TextSpan(
                  text: "CAC/Business Reg No ",
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                        text: "*", style: TextStyle(color: Color(0xFFF00F00)))
                  ]),
            ),
            SizedBox(
              height: 56.h,
              width: 327.w,
              child: TextField(
                maxLines: 1,
                // obscureText: _isHidden,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "Enter Reg No",
                    hintStyle: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(112, 112, 112, 0.41)),
                    contentPadding: EdgeInsets.fromLTRB(21.w, 0, 0, 0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24.r),
                      // borderSide: BorderSide.none,
                    )),
              ),
            ),
            SizedBox(
              height: 17.h,
            ),
            RichText(
              text: const TextSpan(
                  text: "CAC/Business Reg No ",
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                        text: "*", style: TextStyle(color: Color(0xFFF00F00)))
                  ]),
            ),
            SizedBox(
              height: 56.h,
              width: 327.w,
              child: TextField(
                maxLines: 1,
                // obscureText: _isHidden,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "Enter Reg No",
                    hintStyle: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(112, 112, 112, 0.41)),
                    contentPadding: EdgeInsets.fromLTRB(21.w, 0, 0, 0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(54.r),
                      // borderSide: BorderSide.none,
                    )),
              ),
            ),
            SizedBox(
              height: 17.h,
            ),
            RichText(
              text: const TextSpan(
                  text: "CAC/Business Reg No ",
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                        text: "*", style: TextStyle(color: Color(0xFFF00F00)))
                  ]),
            ),
            SizedBox(
              height: 56.h,
              width: 327.w,
              child: TextField(
                maxLines: 1,
                // obscureText: _isHidden,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "Enter Reg No",
                    hintStyle: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(112, 112, 112, 0.41)),
                    contentPadding: EdgeInsets.fromLTRB(21.w, 0, 0, 0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(54.r),
                      // borderSide: BorderSide.none,
                    )),
              ),
            ),
            SizedBox(
              height: 75.h,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 52.h,
                width: 327.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: const Color(0xFF007EFB),
                ),
                child: Center(
                  child: Text(
                    "Generate Bill",
                    style: TextStyle(
                        color: const Color(0xFFFFFFFF),
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
