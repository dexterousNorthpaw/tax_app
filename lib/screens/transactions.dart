import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Transaction extends StatefulWidget {
  const Transaction({super.key});

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Transactions"),
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
            ),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 8.h,
              ),
              Container(
                height: 40.h,
                width: 310.w,
                child: TextField(
                  maxLines: 1,
                  // obscureText: _isHidden,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.calendar_month_outlined),
                      // hintText: "Enter ID number",
                      // hintStyle: TextStyle(
                      //     fontSize: 11.sp,
                      //     fontWeight: FontWeight.w400,
                      //     color: Color.fromRGBO(112, 112, 112, 0.41)),
                      // contentPadding: EdgeInsets.fromLTRB(21.w, 0, 0, 21.h),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(54.r),
                        // borderSide: BorderSide.none,
                      )),
                ),
              ),
              SizedBox(
                height: 50.h,
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
                "To see transactions first make a\n tax payment",
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    height: 1.4,
                    color: Color(0xFF444444)),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
