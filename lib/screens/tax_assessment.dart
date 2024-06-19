import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tax_app/screens/pre_capture_screen.dart';

enum AnnualTurnover { Rayhan, Daps, data3 }

enum NoOfEmployees { one, two, three }

class TaxAssessment extends StatefulWidget {
  const TaxAssessment({super.key});

  @override
  State<TaxAssessment> createState() => _TaxAssessmentState();
}

class _TaxAssessmentState extends State<TaxAssessment> {
  AnnualTurnover? _turnover = null;
  NoOfEmployees? _employees;
  NoOfShops? _shops;

  final TextEditingController _annualTurnOverController =
      TextEditingController();
  final TextEditingController _numberOfEmployees = TextEditingController();
  final TextEditingController _numberOfShopsController =
      TextEditingController();

  @override
  dispose() {
    _annualTurnOverController.dispose();
    _numberOfEmployees.dispose();
    _numberOfShopsController.dispose();
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
          padding: EdgeInsets.only(left: 17.0.w),
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
              const Text("Annual Turnover"),
              Container(
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
                              height: 200.h,
                              margin: EdgeInsets.only(left: 20.w, top: 20.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Select your Annual Turnover",
                                    style: TextStyle(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w700,
                                        height: 1.3),
                                  ),
                                  RadioListTile(
                                      title: const Text(
                                          "NGN 100,000 - NGN 500,000"),
                                      value: AnnualTurnover.Rayhan,
                                      groupValue: _turnover,
                                      onChanged: (newvalue) {
                                        print(AnnualTurnover.Rayhan);
                                        print(_turnover);
                                        print(newvalue);
                                        setState(() {
                                          _turnover = newvalue;
                                          _annualTurnOverController.text =
                                              "NGN 100,000 - NGN 500,000";
                                        });
                                      }),
                                  RadioListTile(
                                      title: const Text(
                                          "NGN 500,000 - NGN 1,000,000"),
                                      value: AnnualTurnover.Daps,
                                      groupValue: _turnover,
                                      onChanged: (newvalue) {
                                        print(AnnualTurnover.Daps);
                                        print(_turnover);
                                        print(newvalue);
                                        setState(() {
                                          _turnover = newvalue;
                                          _annualTurnOverController.text =
                                              "NGN 500,000 - NGN 1,000,000";
                                        });
                                      }),
                                  // RadioListTile(
                                  //     title: const Text("Agriculture"),
                                  //     value: BusinessSector.Agriculture,
                                  //     groupValue: _sector,
                                  //     onChanged: (value) {
                                  //       setState(() {
                                  //         _sector = value!;
                                  //         _businessSectorController.text =
                                  //             "Agriculture";
                                  //       });
                                  //     }),
                                  // RadioListTile(
                                  //     title: const Text(
                                  //         "General Trading Enterprise"),
                                  //     value: BusinessSector.General,
                                  //     groupValue: _sector,
                                  //     onChanged: (value) {
                                  //       setState(() {
                                  //         _sector = value!;
                                  //         _businessSectorController.text =
                                  //             "General Trading Enterprise";
                                  //       });
                                  //     }),
                                ],
                              ),
                            );
                          });
                        });
                  },
                  controller: _annualTurnOverController,
                  showCursor: false,
                  readOnly: true,
                  maxLines: 1,
                  // obscureText: _isHidden,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.keyboard_arrow_down_sharp),
                      hintText: "NGN",
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
              const Text("Deduction"),
              Container(
                height: 56.h,
                width: 327.w,
                child: TextField(
                  maxLines: 1,
                  // obscureText: _isHidden,
                  keyboardType: TextInputType.numberWithOptions(),
                  decoration: InputDecoration(
                      hintText: "NGN",
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
              const Text("Number of Employees"),
              Container(
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
                              height: 200.h,
                              margin: EdgeInsets.only(left: 20.w, top: 20.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Select number of employees",
                                    style: TextStyle(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w700,
                                        height: 1.3),
                                  ),
                                  RadioListTile(
                                      title: const Text("0-5 Employees"),
                                      value: NoOfEmployees.one,
                                      groupValue: _employees,
                                      onChanged: (newvalue) {
                                        setState(() {
                                          _employees = newvalue;
                                          _numberOfEmployees.text =
                                              "0-5 Employees";
                                        });
                                      }),
                                  RadioListTile(
                                      title: const Text("5-10 Employees"),
                                      value: NoOfEmployees.two,
                                      groupValue: _employees,
                                      onChanged: (newvalue) {
                                        setState(() {
                                          _employees = newvalue;
                                          _numberOfEmployees.text =
                                              "5-10 Employees";
                                        });
                                      }),
                                  // RadioListTile(
                                  //     title: const Text("Agriculture"),
                                  //     value: BusinessSector.Agriculture,
                                  //     groupValue: _sector,
                                  //     onChanged: (value) {
                                  //       setState(() {
                                  //         _sector = value!;
                                  //         _businessSectorController.text =
                                  //             "Agriculture";
                                  //       });
                                  //     }),
                                  // RadioListTile(
                                  //     title: const Text(
                                  //         "General Trading Enterprise"),
                                  //     value: BusinessSector.General,
                                  //     groupValue: _sector,
                                  //     onChanged: (value) {
                                  //       setState(() {
                                  //         _sector = value!;
                                  //         _businessSectorController.text =
                                  //             "General Trading Enterprise";
                                  //       });
                                  //     }),
                                ],
                              ),
                            );
                          });
                        });
                  },
                  controller: _numberOfEmployees,
                  showCursor: false,
                  readOnly: true,
                  maxLines: 1,
                  // obscureText: _isHidden,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.keyboard_arrow_down_sharp),
                      hintText: "Select number of employees",
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
              const Text("Number of shops"),
              Container(
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
                              height: 200.h,
                              margin: EdgeInsets.only(left: 20.w, top: 20.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Select number of shops",
                                    style: TextStyle(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w700,
                                        height: 1.3),
                                  ),
                                  RadioListTile(
                                      title: const Text("0-5 shops"),
                                      value: NoOfShops.one,
                                      groupValue: _shops,
                                      onChanged: (newvalue) {
                                        setState(() {
                                          _shops = newvalue;
                                          _numberOfShopsController.text =
                                              "0-5 shops";
                                        });
                                      }),
                                  RadioListTile(
                                      title: const Text("5-10 shops"),
                                      value: NoOfShops.two,
                                      groupValue: _shops,
                                      onChanged: (newvalue) {
                                        setState(() {
                                          _shops = newvalue;
                                          _numberOfShopsController.text =
                                              "5-10 shops";
                                        });
                                      }),
                                  // RadioListTile(
                                  //     title: const Text("Agriculture"),
                                  //     value: BusinessSector.Agriculture,
                                  //     groupValue: _sector,
                                  //     onChanged: (value) {
                                  //       setState(() {
                                  //         _sector = value!;
                                  //         _businessSectorController.text =
                                  //             "Agriculture";
                                  //       });
                                  //     }),
                                  // RadioListTile(
                                  //     title: const Text(
                                  //         "General Trading Enterprise"),
                                  //     value: BusinessSector.General,
                                  //     groupValue: _sector,
                                  //     onChanged: (value) {
                                  //       setState(() {
                                  //         _sector = value!;
                                  //         _businessSectorController.text =
                                  //             "General Trading Enterprise";
                                  //       });
                                  //     }),
                                ],
                              ),
                            );
                          });
                        });
                  },
                  showCursor: false,
                  readOnly: true,
                  controller: _numberOfShopsController,
                  maxLines: 1,
                  // obscureText: _isHidden,
                  keyboardType: TextInputType.numberWithOptions(),
                  decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.keyboard_arrow_down_sharp),
                      hintText: "Select number of shops",
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
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => PreCapture()));
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
            ],
          ),
        ),
      ),
    ));
  }
}

enum NoOfShops { one, two, three, four, five }
