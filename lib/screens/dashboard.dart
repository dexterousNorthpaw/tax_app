import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tax_app/screens/existing_taxpayer.dart';
import 'package:tax_app/screens/more_screen.dart';
import 'package:tax_app/screens/new_taxpayer.dart';
import 'package:tax_app/screens/tax_assessment.dart';
import 'package:tax_app/screens/tax_payment.dart';

bool _transactions = true;
double initAcctBal = 0.00;

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  void _updateAcct() {
    setState(() {
      _acctBalance = !_acctBalance;
      initAcctBal += 100000;
    });
    print(_acctBalance);
  }

  final checkAuth = FirebaseAuth.instance;

  bool _acctBalance = !true;
  double initAcctBal = 0.00;

  @override
  void initState() {
    super.initState();
    // initAcctBal = 0.0;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        // (index) {
        //   if (index == 1) {
        //     Navigator.of(context).push(
        //         MaterialPageRoute(builder: (context) => ExistingTaxPayer()));
        //   } else if (index == 2) {
        //     Navigator.of(context)
        //         .push(MaterialPageRoute(builder: (context) => MorePage()));
        //   }
        // },
        // backgroundColor: Colors.green,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/home.png")),
              label: 'Home'),
          // BottomNavigationBarItem(
          //     icon: ImageIcon(AssetImage("assets/images/ClipboardText-r.png")),
          //     label: "Report"),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/user-group.png")),
              label: "TaxPayers"),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/view-grid.png")),
              label: "More"),
        ],
      ),
    ));
  }

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    HomeScreen(),
    ExistingTaxPayer(),
    MorePage(),
  ];
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void _updateAcct() {
    setState(() {
      _acctBalance = !_acctBalance;
      initAcctBal += 100000;
    });
    print(_acctBalance);
  }

  final checkAuth = FirebaseAuth.instance;

  bool _acctBalance = !true;
  double initAcctBal = 0.00;

  @override
  void initState() {
    super.initState();
    // initAcctBal = 0.0;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 18.h,
        ),
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 27.5.w,
            ),
            CircleAvatar(
              child: Image.asset("assets/images/pfp.png"),
            ),
            SizedBox(
              width: 10.w,
            ),
            Text(
              "Hi, Agent",
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                // checkAuth.signOut();
                // Navigator.of(context)
                //     .pushNamedAndRemoveUntil("/login", (route) => false);
              },
              child: const Icon(
                Icons.notifications,
                color: Colors.blue,
              ),
            ),
            SizedBox(
              width: 20.w,
            )
            // Spacer(),
          ],
        ),
        SizedBox(
          height: 18.h,
        ),
        Container(
          height: 100.h,
          width: 310.w,
          decoration: BoxDecoration(
              color: Color(0xFF007EFB),
              borderRadius: BorderRadius.circular(10.r)),
          child: Column(
            children: [
              SizedBox(
                height: 18.h,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 14.w,
                  ),
                  Text(
                    "Tax Wallet Balance",
                    style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFFFFFFF)),
                  ),
                  Spacer(),
                  Text(
                    "27, March 2024",
                    style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFFFFFFF)),
                  ),
                  SizedBox(
                    width: 20.w,
                  )
                ],
              ),
              SizedBox(
                height: 18.9.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 14.w,
                  ),
                  Text(
                    "₦ $initAcctBal",
                    // "₦ 345,687.0",
                    style: TextStyle(
                        fontSize: 15.sp,
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.w700),
                  ),
                  Icon(
                    Icons.visibility_off,
                    color: Color(0xFFFFFFFF),
                  ),
                  // SizedBox(
                  //   width: 81.w,
                  // ),
                  Spacer(),
                  GestureDetector(
                    onTap: _updateAcct,
                    child: Container(
                      height: 20.h,
                      width: 85.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.r),
                          color: Color(0xFFFFFFFF)),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 8.w,
                          ),
                          Icon(
                            Icons.add_circle_outline_outlined,
                            size: 15,
                            color: Color(0xFF007EFB),
                          ),
                          SizedBox(
                            width: 6.w,
                          ),
                          Text(
                            "Request Fund",
                            style: TextStyle(
                              color: Color(0xFF007EFB),
                              fontSize: 8.sp,
                              fontWeight: FontWeight.w500,
                              letterSpacing: -0.5,
                              // height: 2.5
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 18.h,
        ),
        Container(
          width: 310.w,
          height: 38.h,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 37.h,
                width: 140.w,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: -2,
                        blurRadius: 0.5,
                        offset: Offset(0, 3),
                      )
                    ],
                    borderRadius: BorderRadius.circular(5.r),
                    color: Color(0xFFF1FAFF)),
                child: Center(
                    child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => TaxPayment()));
                  },
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 12.w,
                      ),
                      const Icon(
                        Icons.telegram,
                        color: Color(0xFF4E72D1),
                      ),
                      Text(
                        "Tax Payment",
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF4E72D1)),
                      ),
                    ],
                  ),
                )),
              ),
              SizedBox(
                width: 30.w,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const NewTaxPayer()));
                },
                child: Container(
                  height: 37.h,
                  width: 140.w,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            spreadRadius: -2,
                            blurRadius: 0.5,
                            offset: Offset(0, 3))
                      ],
                      borderRadius: BorderRadius.circular(5.r),
                      color: const Color(0xFFF1FAFF)),
                  child: Center(
                      child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 20.w,
                      ),
                      const Icon(
                        Icons.add_circle_outline,
                        color: Color(0xFF4E72D1),
                      ),
                      Text(
                        "New Taxpayer",
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF4E72D1)),
                      ),
                    ],
                  )),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 18.h,
        ),
        CarouselSlider(
          items: [
            Container(
              height: 94.h,
              width: 310.w,
              decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(10.r)),
              child: Row(
                children: [
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Pay your tax seamlessly",
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF4E72D1)),
                      ),
                      Text(
                        "You can easily make tax payment through\n the NTS app",
                        style: TextStyle(
                            color: Color(0xFF747474),
                            fontSize: 9.sp,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  Spacer(),
                  // SizedBox(
                  //   width: 10.w,
                  // ),
                  Image(image: AssetImage("assets/images/handLogo.png")),
                  // SizedBox(
                  //   width: 15.w,
                  // )
                ],
              ),
            ),
          ],
          options: CarouselOptions(
            height: 94.0,
            enlargeCenterPage: true,
            autoPlay: true,
            // aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 1500),
            viewportFraction: 0.8,
          ),
        ),
        SizedBox(
          height: 41.h,
        ),
        Container(
          width: 318,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Transactions",
                style: TextStyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(0, 0, 0, 0.9),
                    height: 1.8,
                    letterSpacing: -0.5),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      "/transactions", (route) => true);
                },
                child: Text(
                  "View All",
                  style: TextStyle(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(0, 0, 0, 0.9),
                      height: 1.8,
                      letterSpacing: -0.5),
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: _transactions
              ? Container(
                  child: Column(
                    children: [
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
              : ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, index) {
                    return Container(
                      margin: EdgeInsets.only(top: 11.h, bottom: 11.h),
                      height: 52.h,
                      width: 360.w,
                      // color: Colors.pink,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              child: Row(
                            children: [
                              SizedBox(
                                width: 35.w,
                              ),
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: [
                                      Color(0xFFD9D9D9),
                                      Color(0xFF808080)
                                    ]),
                                    borderRadius: BorderRadius.circular(8.r)),
                              ),
                              // CircleAvatar(
                              //   radius: 29.r,
                              // ),
                              SizedBox(
                                width: 10.w,
                              ),
                              SizedBox(
                                width: 101.w,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 101.455.w,
                                      // height: 20.h,
                                      child: Text(
                                        "Abubakar Bello",
                                        style: TextStyle(
                                            color: Color(0xFF77787A),
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Text(
                                      "12 : 35 pm",
                                      style: TextStyle(
                                          color: Color(0xFF77787A),
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w200),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )),
                          SizedBox(
                            width: 86.w,
                          ),
                          Text(
                            "NGN 5000",
                            style: TextStyle(
                                fontSize: 12.sp, color: Color(0xFF77787A)),
                          )
                        ],
                      ),
                    );
                  },
                ),
        )
      ],
    );
  }
}
