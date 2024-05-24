import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raah_hi/app/config/constants/color.dart';

class ProfileScreen extends StatefulWidget {
  static const routeName = "profilepage";
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          ListTile(
            contentPadding: const EdgeInsets.only(top: 10, left: 20, right: 20),
            title: Text(
              "Profile",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold, fontSize: 20),
            ),
            trailing: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.close,
                size: 40,
              ),
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            child: const CircleAvatar(
              backgroundColor: Color(AppColor.borderColor),
              radius: 50,
              child: Icon(Icons.person),
            ),
          ),
          ListTile(
            title: Text(
              "Bakare Abdulwadud",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              "bigmojo@gmail.com",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  contentPadding: const EdgeInsets.only(left: 20),
                  title: Text(
                    "Account",
                    style: GoogleFonts.poppins(
                      color: const Color(0xffC7C8DB),
                    ),
                  ),
                  tileColor: const Color(0xffF7F7FA),
                ),
                GestureDetector(
                  child: ListTile(
                    contentPadding: const EdgeInsets.only(left: 20, right: 20),
                    title: Text(
                      "Profile",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios_outlined),
                  ),
                ),
                SizedBox(
                  child: Divider(
                    color: Colors.grey.shade300,
                    thickness: 1,
                  ),
                ),
                ListTile(
                  contentPadding: const EdgeInsets.only(left: 20, right: 20),
                  title: Text(
                    "Privacy Policy",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                ),
                SizedBox(
                  child: Divider(
                    color: Colors.grey.shade300,
                    thickness: 1,
                  ),
                ),
                ListTile(
                  contentPadding: const EdgeInsets.only(left: 20, right: 20),
                  title: Text(
                    "Customer Care",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                ),
                ListTile(
                  contentPadding: const EdgeInsets.only(left: 20, right: 20),
                  title: Text(
                    "Other",
                    style: GoogleFonts.poppins(
                      color: const Color(0xffC7C8DB),
                    ),
                  ),
                  tileColor: const Color(0xffF7F7FA),
                ),
                ListTile(
                  contentPadding: const EdgeInsets.only(left: 20, right: 20),
                  title: Text(
                    "Terms & Condition",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                ),
                SizedBox(
                  child: Divider(
                    color: Colors.grey.shade300,
                    thickness: 1,
                  ),
                ),
                ListTile(
                  contentPadding: const EdgeInsets.only(left: 20, right: 20),
                  title: Text(
                    "Delete Account",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                ),
                SizedBox(
                  child: Divider(
                    color: Colors.grey.shade300,
                    thickness: 1,
                  ),
                ),
                ListTile(
                  contentPadding: const EdgeInsets.only(left: 20),
                  title: Text(
                    "Logout",
                    style: GoogleFonts.poppins(
                      color: const Color(0xffCC0003),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
