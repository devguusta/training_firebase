import 'package:firebase1/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class HeaderSignup extends StatelessWidget {
  final String? title;
  final String? subtitle;
  const HeaderSignup({
    Key? key,
    this.title,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16, left: 8),
          child: Text(
            title ?? '',
            style: TextStyle(
              fontFamily: "Roboto",
              fontSize: 34,
              fontWeight: FontWeight.w400,
              color: AppColors.kCyan,
            ),
          ),
        ),
        subtitle != null
            ? Padding(
              padding: const EdgeInsets.only(top:16.0,left: 8),
              child: Text(
                  subtitle ?? '',
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 20,
                    color: AppColors.kPurple,
                    fontWeight: FontWeight.w500,
                  ),
                ),
            )
            : Container(),
        SizedBox(height: 8),
      ],
    );
  }
}