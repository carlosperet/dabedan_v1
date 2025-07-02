import 'package:dabedan_v1/core/constants/app_colort.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppTopbar extends StatelessWidget implements PreferredSizeWidget {
  const AppTopbar({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 100,
      title: SvgPicture.asset('assets/dabedan_white.svg', height: 50),
      centerTitle: true,
      backgroundColor: AppColors.primary,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
