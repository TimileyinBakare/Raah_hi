import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raah_hi/app/config/constants/color.dart';
import 'package:raah_hi/app/widgets/custom_button.dart';

import '../../../config/constants/asset.dart';
import '../../../config/routes/app_page.dart';
import '../../../widgets/custom_textfield.dart';

class Login extends StatelessWidget {
  static const routeName = "login";
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const Image(
              image: AssetImage(AppAssets.onboarding1),
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 160,
                    ),
                    FadeInLeft(
                      duration: const Duration(seconds: 1),
                      child: Text(
                        "Raah hi",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    FadeInLeft(
                      duration: const Duration(seconds: 1),
                      child: SvgPicture.asset(
                        AppAssets.loginIlustration1,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: FadeInLeft(
                        duration: const Duration(seconds: 1),
                        child: const Text(
                          "Welcome!",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    FadeInLeft(
                      duration: const Duration(seconds: 1),
                      child: const CustomTextField(
                        hint: "Email",
                        iconColor: Color(AppColor.primaryColor),
                        prefixIcon: Icon(Icons.email),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: FadeInLeft(
                        duration: const Duration(seconds: 1),
                        child: InkWell(
                          onTap: () => Navigator.pushNamed(
                            context,
                            forgretpass,
                          ),
                          child: Text(
                            "Forgot Password?",
                            style: GoogleFonts.poppins(),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    FadeInLeft(
                      duration: const Duration(seconds: 1),
                      child: CustomButton(
                        onclick: () =>
                            Navigator.pushNamed(context, bottomnavigator),
                        color: const Color(AppColor.primaryColor),
                        fontWeight: FontWeight.bold,
                        text: "Log In",
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: FadeInLeft(
                        duration: const Duration(seconds: 1),
                        child: Text(
                          "Or Continue With",
                          style: GoogleFonts.poppins(
                            color: const Color.fromARGB(255, 133, 136, 136),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    FadeInLeft(
                      duration: const Duration(seconds: 1),
                      child: SvgPicture.asset(AppAssets.google),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: FadeInLeft(
                        duration: const Duration(seconds: 1),
                        child: Text(
                          "Don't have an account ?",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    FadeInLeft(
                      duration: const Duration(seconds: 1),
                      child: CustomButton(
                        onclick: () =>
                            Navigator.pushNamed(context, register),
                        color: const Color(AppColor.secondaryColor),
                        fontWeight: FontWeight.normal,
                        text: "Sign Up",
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
