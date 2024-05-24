import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raah_hi/app/config/constants/asset.dart';
import 'package:raah_hi/app/config/constants/color.dart';
import 'package:raah_hi/app/modules/contributions/components/bottomsheet.dart';
import 'package:raah_hi/app/widgets/app_container.dart';

class Contributions extends StatefulWidget {
  static const routeName = "contribution";
  const Contributions({super.key});

  @override
  State<Contributions> createState() => _ContributionsState();
}

class _ContributionsState extends State<Contributions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title:  Text("Contributions",style: GoogleFonts.poppins()),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () => log("Kanota Dam tapped"),
              child: Column(
                children: [
                  AppContainer(
                    height: 200,
                    width: double.infinity,
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        image: DecorationImage(
                          image: AssetImage(AppAssets.imagesample),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Kanota Dam",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        "Nature,Tourist Attraction",
                        style: GoogleFonts.poppins(),
                      ),
                      const Spacer(),
                      Expanded(
                        child: Center(
                          child: Text(
                            "View",
                            style: GoogleFonts.poppins(
                                color: const Color(AppColor.primaryColor),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            enableDrag: true,
            showDragHandle: true,
            useSafeArea: true,
            context: context,
            isScrollControlled: true,
            builder: (context) => const MustSeeSpotBottomSheet(),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
