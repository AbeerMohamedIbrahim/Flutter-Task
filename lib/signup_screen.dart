import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteApp,
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.7,
            decoration: BoxDecoration(
              color: AppColors.mainColor,
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(40)),
            ),
            child: const SignupContent(),
          ),
        ],
      ),
    );
  }
}

class SignupContent extends StatelessWidget {
  const SignupContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'إنشاء حساب جديد',
                style: TextStyle(
                  color: AppColors.whiteApp,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                'من فضلك قم بملء البيانات التالية',
                style: TextStyle(
                  color: AppColors.whiteApp,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 30),
              TextField(
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.whiteApp,
                  labelText: 'اسم المستخدم',
                  prefixIcon: const Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 20),
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
                  labelText: 'تأكيد كلمة المرور',
                  prefixIcon: const Icon(Icons.lock_outline),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
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
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'إنشاء حساب',
                    style: TextStyle(
                      color: AppColors.mainColor,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/login');
                },
                child: Center(
                  child: Text(
                    'لديك حساب بالفعل؟ تسجيل الدخول',
                    style: TextStyle(
                      color: AppColors.whiteApp,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
