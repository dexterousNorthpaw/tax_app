import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

class TaxPayerProfile extends StatefulWidget {
  const TaxPayerProfile({super.key});

  @override
  State<TaxPayerProfile> createState() => _TaxPayerProfileState();
}

class _TaxPayerProfileState extends State<TaxPayerProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 137.h,
                width: 360.w,
                decoration: BoxDecoration(color: Color(0xFF007EFB)),
              ),
            ],
          ),
          Positioned(
              top: 83.h,
              right: 138.w,
              child: Container(
                height: 86.h,
                width: 84.w,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xFFD9D9D9), Color(0xFF808080)],
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft),
                  borderRadius: BorderRadius.circular(8.r),
                ),
              )),
          Positioned(
              top: 170.h,
              left: 21.w,
              right: 19.w,
              child: Container(
                // height: 100.h,
                width: 360.w,
                // color: Colors.blue,
                child: Column(
                  children: [
                    Container(
                      height: 39.h,
                      width: 320.w,
                      color: Colors.white,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 29.w,
                          ),
                          Text(
                            "Profile Status",
                            style: TextStyle(
                                color: Color(0xFF1E1E1E),
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w600),
                          ),
                          Spacer(),
                          Text("Complete"),
                          Icon(Icons.gpp_good_sharp),
                          SizedBox(
                            width: 22.w,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 11.h,
                    ),
                    Container(
                      height: 39.h,
                      width: 320.w,
                      color: Colors.white,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 29.w,
                          ),
                          Text(
                            "Tax Status",
                            style: TextStyle(
                                color: Color(0xFF1E1E1E),
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w600),
                          ),
                          Spacer(),
                          Text("Paid"),
                          SizedBox(
                            width: 22.w,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Container(
                      height: 39.h,
                      width: 321.w,
                      color: Colors.white,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 27.w,
                          ),
                          Text(
                            "Update Tax Assessment",
                            style: TextStyle(
                                color: Color(0xFF007EFB),
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 11.h,
                    ),
                    Container(
                      height: 39.h,
                      width: 321.w,
                      color: Colors.white,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 27.w,
                          ),
                          Text(
                            "Generate Tax Bill",
                            style: TextStyle(
                                color: Color(0xFF007EFB),
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Container(
                      height: 52.h,
                      width: 320.w,
                      color: Colors.white,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 27.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Pelumi Stark",
                                style: TextStyle(
                                    color: Color(0xFF707070),
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "First Name",
                                style: TextStyle(
                                    color: Color(0xFF707070),
                                    fontSize: 8.sp,
                                    fontWeight: FontWeight.w200),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Container(
                        height: 52.h,
                        width: 320.w,
                        color: Colors.white,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 27.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "1233",
                                  style: TextStyle(
                                      color: Color(0xFF707070),
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "TaxId",
                                  style: TextStyle(
                                      color: Color(0xFF707070),
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.w200),
                                )
                              ],
                            ),
                            Spacer(),
                            Text("Copy"),
                            Icon(Icons.file_copy_sharp)
                          ],
                        )),
                    SizedBox(
                      height: 5.h,
                    ),
                    Container(
                      height: 52.h,
                      width: 320.w,
                      color: Colors.white,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 27.w,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "09908009093",
                                style: TextStyle(
                                    color: Color(0xFF707070),
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "Phone Number",
                                style: TextStyle(
                                    color: Color(0xFF707070),
                                    fontSize: 8.sp,
                                    fontWeight: FontWeight.w200),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Container(
                      height: 52.h,
                      width: 320.w,
                      color: Colors.white,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 27.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "dummny@dummy.com",
                                style: TextStyle(
                                    color: Color(0xFF707070),
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "email address",
                                style: TextStyle(
                                    color: Color(0xFF707070),
                                    fontSize: 8.sp,
                                    fontWeight: FontWeight.w200),
                              )
                            ],
                          ),
                          Spacer(),
                          Text("Edit"),
                          Icon(Icons.edit_document)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Container(
                      height: 52.h,
                      width: 320.w,
                      color: Colors.white,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 27.w,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Male",
                                style: TextStyle(
                                    color: Color(0xFF707070),
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "Gender",
                                style: TextStyle(
                                    color: Color(0xFF707070),
                                    fontSize: 8.sp,
                                    fontWeight: FontWeight.w200),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Container(
                      height: 52.h,
                      width: 320.w,
                      color: Colors.white,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 27.w,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "17th Efab Street,Abuja",
                                style: TextStyle(
                                    color: Color(0xFF707070),
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "Business Address",
                                style: TextStyle(
                                    color: Color(0xFF707070),
                                    fontSize: 8.sp,
                                    fontWeight: FontWeight.w200),
                              )
                            ],
                          ),
                          Spacer(),
                          Text("Edit"),
                          Icon(Icons.edit_document)
                        ],
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    ));
  }
}
