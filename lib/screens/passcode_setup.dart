import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SetPasscode extends StatefulWidget {
  const SetPasscode({super.key});

  @override
  State<SetPasscode> createState() => _SetPasscodeState();
}

class _SetPasscodeState extends State<SetPasscode> {
  bool _isHidden = true;
  TextEditingController _PINController = TextEditingController();
  TextEditingController _PIN1Controller = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    _PINController.dispose();
    _PIN1Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF9F9F9),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 101.h,
              ),
              Text(
                "Payment PIN Set-up",
                style: TextStyle(
                    height: 1.2307,
                    fontSize: 26.sp,
                    color: const Color(0xFF171717),
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Enter four digit payment pin to be used for all\ntax transactions don\'t share with anyone',
                style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.5.sp,
                    color: Color(0xFF444444),
                    height: 1.4),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 43.h,
              ),
              Container(
                width: 308.w,
                height: 52.h,
                child: TextField(
                  maxLines: 1,
                  controller: _PINController,
                  obscureText: _isHidden,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: "Payment PIN",
                      hintStyle: TextStyle(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(112, 112, 112, 0.41)),
                      contentPadding: EdgeInsets.fromLTRB(21.w, 0, 0, 0),
                      suffixIcon: InkWell(
                          onTap: _toggleHidden,
                          child: Icon(
                            _isHidden ? Icons.visibility : Icons.visibility_off,
                          )),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(54.r),
                        // borderSide: BorderSide.none,
                      )),
                ),
              ),
              SizedBox(
                height: 45.h,
              ),
              Container(
                width: 308.w,
                height: 52.h,
                child: TextField(
                  maxLines: 1,
                  controller: _PIN1Controller,
                  obscureText: _isHidden,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: "Confirm Payment PIN",
                      hintStyle: TextStyle(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(112, 112, 112, 0.41)),
                      contentPadding: EdgeInsets.fromLTRB(21.w, 0, 0, 0),
                      suffixIcon: InkWell(
                          onTap: _toggleHidden,
                          child: Icon(
                            _isHidden ? Icons.visibility : Icons.visibility_off,
                          )),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(54.r),
                        // borderSide: BorderSide.none,
                      )),
                ),
              ),
              SizedBox(
                height: 45.h,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      "/pinconfirmed", (route) => true);
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
                      "Submit",
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
    );
  }

  void _toggleHidden() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}
