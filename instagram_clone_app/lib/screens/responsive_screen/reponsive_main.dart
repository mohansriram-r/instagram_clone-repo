import 'package:flutter/material.dart';
import 'package:instagram_clone_app/screens/responsive_screen/mobile_responsive.dart';
import 'package:instagram_clone_app/screens/responsive_screen/web_responsive.dart';
import 'package:instagram_clone_app/utils/helpers/screen_size.dart';

class ReponsiveMain extends StatelessWidget {
  const ReponsiveMain({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth > CScreenSize.screenWidth) {
        return const WebResponsive();
      } else {
        return const MobileResponsive();
      }
    });
  }
}
