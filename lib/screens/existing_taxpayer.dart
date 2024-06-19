import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

Map _AllPayers = {};
// bool test = false;

// checkList() {
//   if (_taxPayers.isNotEmpty) {
//     test = false;
//     return false;
//   }
// }

class ExistingTaxPayer extends StatefulWidget {
  const ExistingTaxPayer({super.key});

  @override
  State<ExistingTaxPayer> createState() => _ExistingTaxPayerState();
}

class _ExistingTaxPayerState extends State<ExistingTaxPayer> {
  List _taxPayers = [];

  bool test = true;

  void addTaxPayertoList() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? taxPayername = prefs.getString('taxPayerName');
    // String? taxPayerEmail = prefs.getString("taxPayerEmail");
    // int? taxPayerNumber = prefs.getInt('taxPayerPhoneNumber');
    // String? taxPayerAddress = prefs.getString("taxPauerAddress");
    _taxPayers.add(taxPayername);
    test = false;

    // _taxPayers = _taxPayers
    // _AllPayers.addAll({
    //   'name': taxPayername,
    //   'email': taxPayerEmail,
    //   "address": taxPayerAddress,
    //   "number": taxPayerNumber
    // });
  }

  @override
  void initState() {
    // TODO: implement initState
    // checkList();
    addTaxPayertoList();
    // test = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Existing Taxpayer"),
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
      body: Column(
        children: [
          SizedBox(
            height: 8.h,
          ),
          Container(
            height: 40.h,
            width: 310.w,
            color: Colors.white,
            child: TextField(
              maxLines: 1,
              // obscureText: _isHidden,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  // suffixIcon: Icon(Icons.calendar_month_outlined),
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
            height: 16.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 25.w,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil("/newTaxPayer", (route) => true);
                },
                child: Icon(
                  Icons.add_circle_sharp,
                  color: Color(0xFF007EFB),
                ),
              ),
              SizedBox(
                width: 20.w,
              ),
              Text(
                "Add New Taypayer",
                style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF1E1E1E)),
              )
            ],
          ),
          SizedBox(
            height: 23.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 25.w,
              ),
              Text(
                "All Tax Payers",
                style: TextStyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF77787A)),
              ),
              Spacer(),
              Icon(
                Icons.filter_list_sharp,
                color: Color(0xFF007EFB),
              ),
              SizedBox(
                width: 17.w,
              )
            ],
          ),
          Container(
            child: test
                ? Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 79.h,
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
                  )
                : Text(_taxPayers.toString()),
          )
        ],
      ),
    ));
  }
}
