import 'package:firebase1/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class ProgressIndicator extends StatelessWidget {
  final double height;
  final String? label;
  const ProgressIndicator({
    Key? key,
    this.height = 36,
    this.label,
  }) : super(key: key);
  final double size = 36;

  @override
  Widget build(BuildContext context) {
     return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: height,
            width: height,
            child: CircularProgressIndicator(
              backgroundColor: AppColors.kPurple,
              valueColor: AlwaysStoppedAnimation(AppColors.kCyan),
            ),
          ),
          if (label != null && label?.isNotEmpty == true)
            Padding(
              padding: const EdgeInsets.only(top: 14.0),
              child: Text(label!),
            )
        ],
      ),
    );
  }
}
