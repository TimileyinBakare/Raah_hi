import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raah_hi/app/config/constants/color.dart';

import '../../../config/constants/asset.dart';
import '../../../config/routes/app_page.dart';
import '../../../widgets/custom_button.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = "splashscreen";

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Image(
            image: AssetImage(AppAssets.onboarding1),
          ),
          Column(
            children: [
              const Spacer(),
              FadeInUp(
                duration: const Duration(seconds: 1),
                child: Text(
                  "Raah hi",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              Expanded(
                flex: 3,
                child: FadeInDown(
                  duration: const Duration(seconds: 1),
                  child: SvgPicture.asset(
                    AppAssets.onboarding,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              FadeInDown(
                duration: const Duration(seconds: 1),
                child:  Text(
                  "The Traveller Tribe",
                   style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              FadeInDown(
                duration: const Duration(seconds: 1),
                child: CustomButton(
                  fontWeight: FontWeight.bold,
                  color: const Color(AppColor.primaryColor),
                  text: "Let's get started",
                  onclick: () => Navigator.pushReplacementNamed(
                    context,
                    login,
                  ),
                ),
              ),
              Flexible(
                child: Container(),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 150,
                ),
                child: const Image(
                  alignment: Alignment.bottomRight,
                  image: AssetImage(AppAssets.onboarding2),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
