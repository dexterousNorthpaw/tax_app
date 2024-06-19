import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum Gender { male, female }

class TaxPayerDetails extends StatefulWidget {
  const TaxPayerDetails({super.key});

  @override
  State<TaxPayerDetails> createState() => _TaxPayerDetailsState();
}

class _TaxPayerDetailsState extends State<TaxPayerDetails> {
  Gender? _gender = null;

  final TextEditingController _firstName = TextEditingController();
  final TextEditingController _lastName = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _phoneNumber = TextEditingController();
  final TextEditingController _address = TextEditingController();
  final TextEditingController _genderController = TextEditingController();

  late TextEditingController _dateController = TextEditingController();

  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1990),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        _dateController.text =
            "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}";
      });
    }
  }

  @override
  void dispose() {
    _genderController.dispose();
    _dateController.dispose();
    super.dispose();
  }

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
        padding: EdgeInsets.only(left: 17.w, right: 19.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 12.h,
                width: 263.w,
                color: Colors.blue,
              ),
              SizedBox(
                height: 34.h,
              ),
              Text(
                "Confirm Taxpayer details",
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF1E1E1E)),
              ),
              Text(
                "New taxpayer NIN or International ID should be added to verify identity",
                style: TextStyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(
                      0xFF707070,
                    )),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 56.h,
                width: 327.w,
                child: TextField(
                  maxLines: 1,
                  // obscureText: _isHidden,
                  keyboardType: TextInputType.name,
                  controller: _firstName,
                  decoration: InputDecoration(
                      hintText: "First Name",
                      hintStyle: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF929292)),
                      contentPadding: EdgeInsets.fromLTRB(21.w, 0, 0, 0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(54.r),
                        // borderSide: BorderSide.none,
                      )),
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                height: 56.h,
                width: 327.w,
                child: TextField(
                  controller: _lastName,
                  maxLines: 1,
                  // obscureText: _isHidden,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: "Last Name",
                      hintStyle: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF929292)),
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
              Container(
                height: 56.h,
                width: 327.w,
                child: TextField(
                  controller: _email,
                  maxLines: 1,
                  // obscureText: _isHidden,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: "Email Address",
                      hintStyle: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF929292)),
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
              Container(
                height: 56.h,
                width: 327.w,
                child: TextField(
                  onTap: () {
                    _selectDate(context);
                  },
                  readOnly: true,
                  showCursor: false,
                  controller: _dateController,
                  maxLines: 1,
                  // obscureText: _isHidden,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.calendar_month_sharp),
                      hintText: "Date of Birth",
                      hintStyle: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF929292)),
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
                              height: 190.h,
                              margin: EdgeInsets.only(left: 20.w, top: 20.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Select Gender",
                                    style: TextStyle(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w700,
                                        height: 1.3),
                                  ),
                                  RadioListTile(
                                      title: const Text("Male"),
                                      value: Gender.male,
                                      groupValue: _gender,
                                      onChanged: (newvalue) {
                                        setState(() {
                                          _gender = newvalue;
                                          _genderController.text = "Male";
                                        });
                                      }),
                                  RadioListTile(
                                      title: const Text("Female"),
                                      value: Gender.female,
                                      groupValue: _gender,
                                      onChanged: (newvalue) {
                                        setState(() {
                                          _gender = newvalue;
                                          _genderController.text = "Female";
                                        });
                                      }),
                                ],
                              ),
                            );
                          });
                        });
                  },
                  readOnly: true,
                  showCursor: false,
                  controller: _genderController,
                  maxLines: 1,
                  // obscureText: _isHidden,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.keyboard_arrow_down_sharp),
                      hintText: "Select Gender",
                      hintStyle: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF929292)),
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
              Container(
                height: 56.h,
                width: 327.w,
                child: TextField(
                  controller: _address,
                  maxLines: 1,
                  // obscureText: _isHidden,
                  // keyboardType: TextInputType.,
                  decoration: InputDecoration(
                      hintText: "Residential Address",
                      hintStyle: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF929292)),
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
              Container(
                height: 56.h,
                width: 327.w,
                child: TextField(
                  controller: _phoneNumber,
                  maxLines: 1,
                  // obscureText: _isHidden,
                  keyboardType: TextInputType.numberWithOptions(),
                  decoration: InputDecoration(
                      hintText: "Phone Number",
                      hintStyle: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF929292)),
                      contentPadding: EdgeInsets.fromLTRB(21.w, 0, 0, 0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(54.r),
                        // borderSide: BorderSide.none,
                      )),
                ),
              ),
              SizedBox(
                height: 47.h,
              ),
              GestureDetector(
                onTap: () async {
                  SharedPreferences prefs =
                      await SharedPreferences.getInstance();

                  Navigator.of(context).pushNamed(
                    "/taxpayerassessment",
                  );
                  prefs.setString("taxPayerName", _firstName.text);
                  prefs.setString("taxPayerEmail", _email.text);
                  prefs.setString("taxPayerPhoneNumber", _phoneNumber.text);
                  prefs.setString("taxPayerAddress", _address.text);
                },
                child: Container(
                  height: 52.h,
                  width: 327.w,
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
}
