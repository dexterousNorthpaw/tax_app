import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PreCapture extends StatefulWidget {
  const PreCapture({super.key});

  @override
  State<PreCapture> createState() => _PreCaptureState();
}

class _PreCaptureState extends State<PreCapture> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 141.h,
            ),
            Container(
              height: 195.h,
              width: 195.w,
              child: Image(
                image: AssetImage("assets/images/face.png"),
              ),
            ),
            SizedBox(
              height: 78.h,
            ),
            Text("Capture Headshot"),
            SizedBox(
              height: 18.h,
            ),
            Text(
                "Center your face in the frame and find\nan areas with bright, even lighting"),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed("/taxpayeradded");
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) => Capture(
                //           cameras: [cameras[0]],
                //         )));
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
    ));
  }
}
