import 'package:flutter/material.dart';
import 'app_colors.dart';

class ForgetPasswordRow extends StatelessWidget {
  final String firstWhiteText;
  final String secondBlackText;
  final VoidCallback? onTap;

  const ForgetPasswordRow({
    super.key,
    required this.firstWhiteText,
    required this.secondBlackText,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            firstWhiteText,
            style: const TextStyle(
              color: AppColors.whiteApp,
              fontSize: 16,
            ),
          ),
          const SizedBox(width: 5),
          Text(
            secondBlackText,
            style: const TextStyle(
              color: AppColors.blackText,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
