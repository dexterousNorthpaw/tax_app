import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewTaxPayer extends StatefulWidget {
  const NewTaxPayer({super.key});

  @override
  State<NewTaxPayer> createState() => _NewTaxPayerState();
}

class _NewTaxPayerState extends State<NewTaxPayer> {
  bool _NINSelected = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFFFFFFFF),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color(0xFF007EFB),
            )),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 25.w, right: 19.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 11.h,
              ),
              Container(
                height: 12.h,
                width: 263.w,
                color: Colors.blue,
              ),
              SizedBox(
                height: 33.h,
              ),
              Text(
                "Taxpayer ID information",
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF1E1E1E)),
              ),
              Text(
                "New taxpayer NIN or International ID should be added to \nverify identity",
                style: TextStyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(
                      0xFF707070,
                    )),
              ),
              SizedBox(
                height: 42.h,
              ),
              Text(
                "ID Type",
                style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w700,
                    color: Color(
                      0xFF1E1E1E,
                    )),
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      _toggleColor();
                    },
                    child: Container(
                      // color: Colors.green,
                      decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          border: Border.all(
                              color: _NINSelected
                                  ? Color(0xFFFFFFFF)
                                  : Color(0xFF007EFB),
                              width: 1)),
                      height: 56.h,
                      width: 148.w,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "NIN",
                              style: TextStyle(
                                  color: Color(0xFF1E1E1E),
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "Registation by NIN",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xFF707070),
                                  fontSize: 8.sp,
                                  fontWeight: FontWeight.w200),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 9.w,
                  ),
                  InkWell(
                    onTap: _toggleColor,
                    child: Container(
                      // color: Colors.green,
                      decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          border: Border.all(
                              color: !_NINSelected
                                  ? Color(0xFFFFFFFF)
                                  : Color(0xFF007EFB),
                              width: 1)),
                      height: 56.h,
                      width: 148.w,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "International ID",
                              style: TextStyle(
                                  color: Color(0xFF1E1E1E),
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "Registation by International ID",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xFF707070),
                                  fontSize: 8.sp,
                                  fontWeight: FontWeight.w200),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 43.h,
              ),
              Text(
                "ID Number",
                style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w700,
                    color: Color(
                      0xFF1E1E1E,
                    )),
              ),
              Container(
                height: 56.h,
                width: 312.w,
                child: TextField(
                  maxLines: 1,
                  // obscureText: _isHidden,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: "Enter ID number",
                      hintStyle: TextStyle(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(112, 112, 112, 0.41)),
                      contentPadding: EdgeInsets.fromLTRB(21.w, 0, 0, 0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(54.r),
                        // borderSide: BorderSide.none,
                      )),
                ),
              ),
              SizedBox(
                height: 43.h,
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      "/taxpayerdetails", (route) => true);
                },
                child: Text(
                  "Don't have an ID?",
                  style: TextStyle(
                      color: Color(0xFF007EFB),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline),
                ),
              ),
              SizedBox(
                height: 104.h,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      "/taxpayerdetails", (route) => true);
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
                      "Next",
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
      ),
    ));
  }

  void _toggleColor() {
    setState(() {
      _NINSelected = !_NINSelected;
    });
  }
}
