import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:tax_app/providers/tax_app_provider.dart';
import 'package:tax_app/screens/tax_assessment.dart';

class TaxPayerId extends StatefulWidget {
  const TaxPayerId({super.key});

  @override
  State<TaxPayerId> createState() => _TaxPayerIdState();
}

class _TaxPayerIdState extends State<TaxPayerId> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TaxAppProvider>(context);
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 17.w),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 11.h,
            ),
            Container(
              height: 12.h,
              width: 263.w,
              color: Colors.blue,
            ),
            SizedBox(
              height: 34.h,
            ),
            Text(
              "Tax Payer ID",
              style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF1E1E1E)),
            ),
            Text(
              "New taxpayer NIN or International ID should be added to verify identity",
              style: TextStyle(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(
                    0xFF707070,
                  )),
            ),
            SizedBox(
              height: 24.h,
            ),
            RichText(
              text: const TextSpan(
                  text: "Station ID ",
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                        text: "*", style: TextStyle(color: Color(0xFFF00F00)))
                  ]),
            ),
            // const Text("Business Sector *"),
            SizedBox(
              height: 56.h,
              width: 327.w,
              child: TextField(
                onTap: () {},
                // controller: _businessSectorController,
                maxLines: 1,
                // obscureText: _isHidden,
                keyboardType: TextInputType.number,
                showCursor: false,
                readOnly: true,
                decoration: InputDecoration(
                    hintText: "Enter Station ID",
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
            SizedBox(height: 17.h),
            RichText(
              text: const TextSpan(
                  text: "Consultant ID ",
                  style: TextStyle(color: Color(0xFF1E1E1E)),
                  children: [
                    TextSpan(
                        text: "*", style: TextStyle(color: Color(0xFFF00F00)))
                  ]),
            ),
            SizedBox(
              height: 56.h,
              width: 327.w,
              child: TextField(
                onTap: () {},
                // controller: _businessTypeController,
                showCursor: false,
                readOnly: true,

                maxLines: 1,
                // obscureText: _isHidden,
                // keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: "Enter Consultant ID",
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
                  text: "State ID ",
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
                    hintText: "Enter State ID",
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
                  text: "LGA ID ",
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
                    hintText: "Enter LGA ID",
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
                  text: "Arith Order ",
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
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: "Enter Arith Order",
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
              height: 10.h,
            ),
            GestureDetector(
              onTap: () {
                provider.getTaxPayerID();

                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) => const TaxAssessment()));
              },
              child:
                  //  provider.isLoading
                  //     ? Container()
                  //     :
                  Container(
                height: 52.h,
                width: 327.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: const Color(0xFF007EFB),
                ),
                child: Center(
                  child: Text(
                    "Generate Tax ID",
                    style: TextStyle(
                        color: const Color(0xFFFFFFFF),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
            Container(
              child: provider.isLoading
                  ? Container()
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Tax ID: ${provider.TaxPayerId}"),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const TaxAssessment()));
                          },
                          child:
                              //  provider.isLoading
                              //     ? Container()
                              //     :
                              Container(
                            height: 52.h,
                            width: 50.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: const Color(0xFF007EFB),
                            ),
                            child: Center(
                              child: Text(
                                "Next",
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
            )
          ]),
        ),
      ),
    ));
  }
}
