import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tax_app/screens/headshot.dart';

// final cameras = availableCameras();

class Capture extends StatefulWidget {
  final List<CameraDescription> cameras;

  const Capture({super.key, required this.cameras});

  @override
  State<Capture> createState() => _CaptureState();
}

class _CaptureState extends State<Capture> {
  late CameraController controller;
  late XFile? imageFile;
  @override
  void initState() {
    super.initState();
    controller = CameraController(widget.cameras[0], ResolutionPreset.max);
    controller.initialize().then((value) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case "CameraAccessDenied":
            break;
          default:
            break;
        }
      }
    });
    // TODO: implement initState
    // super.initState();
    // requestStorage();
  }

  // void requestStorage() async {
  //   if (!kIsWeb) {
  //     var status = await Permission.storage.status;
  //     if (!status.isGranted) {
  //       await Permission.storage.request();
  //     }

  //     var cameraPerm = await Permission.camera.status;
  //     if (!cameraPerm.isGranted) {
  //       await Permission.camera.request();
  //     }
  //   }
  // }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return Container();
    }
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 48.h,
          ),
          Container(
              width: 360.w, height: 482.h, child: CameraPreview(controller)),
          SizedBox(
            height: 56.h,
          ),
          GestureDetector(
            onTap: takePicture,
            child: Container(
              width: 323.w,
              height: 93.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: Color(0xFF007EFB),
              ),
              child: Center(
                  child: Icon(
                Icons.camera_sharp,
                size: 52,
                color: Colors.white,
              )),
            ),
          )
        ],
      ),
    ));
  }

  void takePicture() async {
    print("tap");
    try {
      final XFile picture = await controller.takePicture();
      // picture.saveTo(imageFile.toString());
      setState(() {
        imageFile = picture;
      });
      // Navigate to the image view page after capturing the image
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Headshot(imagePath: imageFile!.path),
        ),
      );
    } catch (e) {
      print("Error taking picture: $e");
    }
  }
}
