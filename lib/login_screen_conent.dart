import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_strings.dart';
import 'forget_password_row.dart';

class LoginContent extends StatelessWidget {
  const LoginContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              AppStrings.loginScreenWelcomeText,
              style: TextStyle(
                color: AppColors.whiteApp,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 5),
            Text(
              AppStrings.loginScreenSubtitle,
              style: TextStyle(
                color: AppColors.whiteApp,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            TextField(
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.whiteApp,
                labelText: AppStrings.phoneNumberField,
                prefixIcon: const Icon(Icons.phone),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              textAlign: TextAlign.right,
              obscureText: true,
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.whiteApp,
                labelText: AppStrings.passwordField,
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.visibility),
                  onPressed: () {},
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/otp'),
                child: Text(
                  AppStrings.forgotPassword,
                  style: TextStyle(
                    color: AppColors.whiteApp,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.whiteApp,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () => Navigator.pushNamed(context, '/otp'),
                child: Text(
                  AppStrings.loginButton,
                  style: TextStyle(
                    color: AppColors.mainColor,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ForgetPasswordRow(
              firstWhiteText: 'ليس لديك حساب؟',
              secondBlackText: 'إنشاء حساب',
              onTap: () => Navigator.pushNamed(context, '/signup'),
            ),
          ],
        ),
      ),
    );
  }
}
