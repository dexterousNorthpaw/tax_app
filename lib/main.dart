import 'package:camera/camera.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';
import 'package:tax_app/firebase_options.dart';
import 'package:tax_app/providers/tax_app_provider.dart';
import 'package:tax_app/screens/dashboard.dart';
import 'package:tax_app/screens/new_taxpayer.dart';
import 'package:tax_app/screens/new_taxpayer_NIN.dart';
import 'package:tax_app/screens/new_taxpayer_details.dart';
import 'package:tax_app/screens/passcode_setup.dart';
import 'package:tax_app/screens/login_screen.dart';
import 'package:tax_app/screens/payment_pin.dart';
import 'package:tax_app/screens/pin_confirmed.dart';
import 'package:tax_app/screens/pre_capture_screen.dart';
import 'package:tax_app/screens/register_screen.dart';
import 'package:tax_app/screens/tax_assessment_update.dart';
import 'package:tax_app/screens/tax_payer_added.dart';
import 'package:tax_app/screens/tax_payer_profile.dart';
import 'package:tax_app/screens/taxpayer_assessment.dart';
import 'package:tax_app/screens/transactions.dart';

late List<CameraDescription> cameras;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) => runApp(ChangeNotifierProvider(
      create: (context) => TaxAppProvider(), child: const MyApp())));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      builder: (_, child) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF3461D6)),
          useMaterial3: true,
          fontFamily: "Inter",
        ),
        home: const FirstPage(),
        // LoginScreen(),
        routes: {
          "/login": (context) => LoginScreen(),
          "/dashboard": (context) => DashBoard(),
          "/passcode": (context) => SetPasscode(),
          "/NINAuth": (context) => NinAuthScreen(),
          "/newTaxPayer": (context) => NewTaxPayer(),
          "/taxpayerdetails": (context) => TaxPayerDetails(),
          "/taxpayerassessment": (context) => TaxPayerAssessment(),
          "/transactions": (context) => Transaction(),
          "/pinsetup": (context) => PinSetup(),
          "precapture": (context) => PreCapture(),
          "/taxpayeradded": (context) => TaxPayerAdded(),
          "/pinconfirmed": (context) => ConfirmedPIN()
        },
      ),
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final checkAuth = FirebaseAuth.instance;
  @override
  void initState() {
    super.initState();
    getCurrentUser();
    requestStoragePermission();
  }

  void requestStoragePermission() async {
    // Check if the platform is not web, as web has no permissions
    if (!kIsWeb) {
      // Request storage permission
      var status = await Permission.storage.status;
      if (!status.isGranted) {
        await Permission.storage.request();
      }

      // Request camera permission
      var cameraStatus = await Permission.camera.status;
      if (!cameraStatus.isGranted) {
        await Permission.camera.request();
      }
    }
  }

  void getCurrentUser() async {
    try {
      final user = await checkAuth.currentUser;
      if (user != null) {
        loggedinUser = user;
        Navigator.of(context)
            .pushNamedAndRemoveUntil("/dashboard", (route) => false);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return const RegisterScreen();
  }
}
