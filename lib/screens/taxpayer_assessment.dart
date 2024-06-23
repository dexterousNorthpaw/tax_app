import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tax_app/screens/tax_assessment.dart';
import 'package:tax_app/screens/tax_payer_id.dart';

enum BusinessSector { Transportation, Agriculture, General }

class TaxPayerAssessment extends StatefulWidget {
  const TaxPayerAssessment({super.key});

  @override
  State<TaxPayerAssessment> createState() => _TaxPayerAssessmentState();
}

class _TaxPayerAssessmentState extends State<TaxPayerAssessment> {
  BusinessSector? _sector;
  // SingingCharacter? _character = SingingCharacter.lafayette;

  final TextEditingController _businessSectorController =
      TextEditingController();

  final TextEditingController _businessTypeController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    _businessSectorController.dispose();
    super.dispose();
  }

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
              "Assessment Form",
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
                  text: "Business Sector ",
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
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return StatefulBuilder(builder:
                            (BuildContext context, StateSetter setState) {
                          return Container(
                            margin: EdgeInsets.only(left: 20.w, top: 20.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Select Business Sector",
                                  style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w700,
                                      height: 1.3),
                                ),
                                RadioListTile(
                                    title: const Text("Transportation"),
                                    value: BusinessSector.Transportation,
                                    groupValue: _sector,
                                    onChanged: (newvalue) {
                                      setState(() {
                                        _sector = newvalue;
                                        _businessSectorController.text =
                                            "Transportation";
                                      });
                                    }),
                                RadioListTile(
                                    title: const Text("Agriculture"),
                                    value: BusinessSector.Agriculture,
                                    groupValue: _sector,
                                    onChanged: (value) {
                                      setState(() {
                                        _sector = value!;
                                        _businessSectorController.text =
                                            "Agriculture";
                                      });
                                    }),
                                RadioListTile(
                                    title: const Text(
                                        "General Trading Enterprise"),
                                    value: BusinessSector.General,
                                    groupValue: _sector,
                                    onChanged: (value) {
                                      setState(() {
                                        _sector = value!;
                                        _businessSectorController.text =
                                            "General Trading Enterprise";
                                      });
                                    }),
                              ],
                            ),
                          );
                        });
                      });
                },
                controller: _businessSectorController,
                maxLines: 1,
                // obscureText: _isHidden,
                keyboardType: TextInputType.emailAddress,
                showCursor: false,
                readOnly: true,
                decoration: InputDecoration(
                    suffixIcon: GestureDetector(
                        onTap: () {},
                        child: const Icon(Icons.keyboard_arrow_down_sharp)),
                    hintText: "Enter Business Type",
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
                  text: "Business Type ",
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
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return StatefulBuilder(builder:
                            (BuildContext context, StateSetter setState) {
                          return Container(
                            margin: EdgeInsets.only(left: 20.w, top: 20.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Select Business Type",
                                  style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w700,
                                      height: 1.3),
                                ),
                                RadioListTile(
                                    title: const Text("Logistics"),
                                    value: BusinessSector.Transportation,
                                    groupValue: _sector,
                                    onChanged: (newvalue) {
                                      setState(() {
                                        _sector = newvalue;
                                        _businessTypeController.text =
                                            "Logistics";
                                      });
                                    }),
                                RadioListTile(
                                    title: const Text("Poultry"),
                                    value: BusinessSector.Agriculture,
                                    groupValue: _sector,
                                    onChanged: (value) {
                                      setState(() {
                                        _sector = value!;
                                        _businessTypeController.text =
                                            "Poultry";
                                      });
                                    }),
                              ],
                            ),
                          );
                        });
                      });
                },
                controller: _businessTypeController,
                showCursor: false,
                readOnly: true,

                maxLines: 1,
                // obscureText: _isHidden,
                // keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    suffixIcon: GestureDetector(
                        onTap: () {},
                        child: const Icon(Icons.keyboard_arrow_down_sharp)),
                    hintText: "Business Type",
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
              height: 17.h,
            ),
            RichText(
              text: const TextSpan(
                  text: "Business Location Address ",
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
                    hintText: "Enter Business Location Address",
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
            // const Text("Deduction *"),
            // Container(
            //   height: 56.h,
            //   width: 327.w,
            //   child: TextField(
            //     maxLines: 1,
            //     // obscureText: _isHidden,
            //     keyboardType: TextInputType.number,
            //     decoration: InputDecoration(
            //         hintText: "NGN",
            //         hintStyle: TextStyle(
            //             fontSize: 11.sp,
            //             fontWeight: FontWeight.w400,
            //             color: const Color.fromRGBO(112, 112, 112, 0.41)),
            //         contentPadding: EdgeInsets.fromLTRB(21.w, 0, 0, 0),
            //         border: OutlineInputBorder(
            //           borderRadius: BorderRadius.circular(54.r),
            //           // borderSide: BorderSide.none,
            //         )),
            //   ),
            // ),
            // SizedBox(height: 17.h),

            SizedBox(
              height: 75.h,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const TaxPayerId()));
              },
              child: Container(
                height: 52.h,
                width: 327.w,
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
          ]),
        ),
      ),
    ));
  }

  showBusinessModalSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            child: Column(
              children: [
                RadioListTile(
                    title: const Text("Transportation"),
                    value: BusinessSector.Transportation,
                    groupValue: _sector,
                    onChanged: (value) {
                      setState(() {
                        _sector = value;
                      });
                    }),
                RadioListTile(
                    title: const Text("Agriculture"),
                    value: BusinessSector.Agriculture,
                    groupValue: _sector,
                    onChanged: (value) {
                      setState(() {
                        _sector = value;
                      });
                    }),
              ],
            ),
          );
        });
  }
}
