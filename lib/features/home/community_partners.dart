import 'package:ccd2023/configurations/configurations.dart';
import 'package:ccd2023/features/home/home.dart';
import 'package:ccd2023/utils/launch_url.dart';
import 'package:ccd2023/utils/size_util.dart';
import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CommunityPartners extends StatelessWidget {
  const CommunityPartners({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeMode = context.watch<AppCubit>().state.themeMode;

    return Container(
      // decoration: BoxDecoration(
      //   color: themeMode == ThemeMode.light
      //       ? Colors.black
      //       : Colors.white,
      // ),
      width: screenWidth,
      padding: EdgeInsets.symmetric(horizontal: screenWidth! * 0.08),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: screenWidth! * 0.06),
          Text(
            'COMMUNITY PARTNERS',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 1
                ..color = themeMode == ThemeMode.light
                    ? Colors.black
                    : Colors.white,
              // fontWeight: FontWeight.w600,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: screenWidth! * 0.04),
            child: Text(
              communityPartnerDesc,
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
          ),

          InkWell(
            onTap: () {
              launchExternalUrl(applyCommunityPartner);
            },
            child: Text("Become a Community Partner",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: GCCDColor.googleBlue,
              ),
            ),
          ),
          const SizedBox(height: 25),
          GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: kPadding,
                mainAxisSpacing: kPadding,
              ),
              itemCount: communityPartners.length,
              itemBuilder: (context, index) {
                return CommunityCard(
                  imageUrl: communityPartners[index]['logo'],
                  url: communityPartners[index]['link'],
                  name: communityPartners[index]['name'],
                );
              },
          )
        ],
      ),
    );
  }
}

class CommunityCard extends StatelessWidget {
  const CommunityCard({
    required this.imageUrl,
    required this.url,
    required this.name,
    Key? key})
      : super(key: key);

  final String imageUrl;
  final String url;
  final String name;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launchExternalUrl(url);
      },
      child: Container(
        width: screenWidth! * 0.2,
        height: screenWidth! * 0.2,
        padding: const EdgeInsets.all(kPadding * 2),
        // color: Colors.white,
        decoration: const BoxDecoration(
          // borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border(
            top: BorderSide(
              color: GCCDColor.googleRed,
              width: 4,
            ),
            bottom: BorderSide(
              color: GCCDColor.googleYellow,
              width: 4,
            ),
            left: BorderSide(
              color: GCCDColor.googleGreen,
              width: 4,
            ),
            right: BorderSide(
              color: GCCDColor.googleBlue,
              width: 4,
            ),
          ),
        ),
        child: imageUrl == 'https://gdgcloud.kolkata.dev/ccd2023/images/logos/gdsc-logo.svg' ?
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.network(
                  imageUrl,
                  fit: BoxFit.contain,
                ),
                Text(
                  name,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Colors.black,
                  ),
                ),
              ],
            ) :

        imageUrl.endsWith('.svg')
            ? SvgPicture.network(
          imageUrl,
          fit: BoxFit.contain,
        )
            :
        CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
