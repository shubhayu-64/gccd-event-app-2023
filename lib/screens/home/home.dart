

import 'package:ccd2023/screens/data/home_screen_data.dart';
import 'package:ccd2023/screens/home/widgets/about_section_widget.dart';
import 'package:ccd2023/screens/home/widgets/default_button_widget.dart';
import 'package:ccd2023/screens/home/widgets/timer_widget.dart';
import 'package:ccd2023/screens/login/login.dart';
import 'package:ccd2023/screens/navbar/appbar.dart';
import 'package:ccd2023/screens/navbar/drawer.dart';
import 'package:ccd2023/utils/ccd_asset.dart';
import 'package:ccd2023/utils/ccd_colors.dart';
import 'package:ccd2023/utils/size_config.dart';
import 'package:flutter/material.dart';

import '../../router/ccd_router.gr.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(screenHeight! * 0.07),
          child: DefaultAppbar(context),
        ),
        drawer: defaultDrawer(),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth! * 0.08),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: screenWidth! * 0.13),
                      child: Image.asset(
                        GCCDImageAssets.googleCloudLogo,
                        width: screenWidth! * 0.58,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Text(HomeScreenData.eventTitle,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenWidth! * 0.1,
                          fontWeight: FontWeight.w400,
                        )),
                    SizedBox(height: screenWidth! * 0.06),
                    RichText(
                      textAlign: TextAlign.justify,
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: HomeScreenData.eventHashTag,
                              style: TextStyle(
                                color: GCCDColor.googleYellow,
                                fontSize: screenWidth! * 0.04,
                                fontStyle: FontStyle.normal,
                              )),
                          TextSpan(
                            text: HomeScreenData.eventDescription,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: screenWidth! * 0.04,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(vertical: screenWidth! * 0.085),
                      child: const EventTimer(),
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(vertical: screenWidth! * 0.06),
                      child: Column(
                        children: [
                          /// TODO: Change text after login is integrated

                          DefaultButton(text: "Register Now / Login", color: GCCDColor.googleBlue, route: AppRouter().replace(const LoginRoute())),
                          DefaultButton(text: "Call for Speakers", color: GCCDColor.googleGrey, route: AppRouter().replace(const LoginRoute())),
                        ],
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top:screenWidth! * 0.06),
                      child: const AboutSection(),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: screenWidth! * 0.14),
                child: Image.asset(GCCDImageAssets.backgroundGraphics, width: screenWidth!,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
