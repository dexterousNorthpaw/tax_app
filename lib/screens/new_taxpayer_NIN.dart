import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tax_app/screens/New_taxpayer_NIN2.dart';

class NinAuthScreen extends StatefulWidget {
  const NinAuthScreen({super.key});

  @override
  State<NinAuthScreen> createState() => _NinAuthScreenState();
}

class _NinAuthScreenState extends State<NinAuthScreen> {
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
              icon: const Icon(Icons.arrow_back_ios)),
          title: Text(
            "New Taxpayer",
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w700,
              color: const Color(
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
                  child: const Text("Authentication by NIN")),
            ),
            SizedBox(
              height: 4.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 28.w),
              child: const Text("Input Tax payer ID number"),
            ),
            SizedBox(
              height: 19.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 28.w),
              child: const Text("ID Number"),
            ),
            Container(
                margin: EdgeInsets.only(left: 28.w),
                height: 52.h,
                width: 306.w,
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: "123-456-789-00",
                      hintStyle: TextStyle(
                          fontSize: 11.sp, color: const Color(0xFF707070)),
                      filled: true,
                      fillColor: const Color(0xFFECF1f4),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10.r))),
                )),
            SizedBox(
              height: 341.h,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const NinAuthScreen2()));
              },
              child: Container(
                margin: EdgeInsets.only(left: 27.w),
                height: 52.h,
                width: 306.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: const Color(0xFFB8D3FF)),
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
