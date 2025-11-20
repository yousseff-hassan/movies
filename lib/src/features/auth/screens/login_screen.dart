import 'package:flutter/material.dart';
import 'package:movies_app/src/features/core/theme/app_colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: 50),
              Image.asset('assets/images/login_logo.png'),
              SizedBox(height: 21),

              TextFormField(
                style: TextStyle(color: AppColors.white),
                cursorColor: AppColors.white,
                decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(color: AppColors.white),
                  prefixIcon: Icon(Icons.email_rounded, color: AppColors.white),

                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.black2, width: 1.0),
                    borderRadius: BorderRadius.circular(15),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.black2, width: 2.0),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),

              SizedBox(height: 16),

              TextFormField(
                obscureText: true,
                style: TextStyle(color: AppColors.white),
                cursorColor: AppColors.white,
                decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(color: AppColors.white),
                  prefixIcon: Icon(Icons.lock, color: AppColors.white),
                  suffixIcon: Icon(
                    Icons.visibility_off,
                    color: AppColors.white,
                  ),

                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.black2, width: 1.0),
                    borderRadius: BorderRadius.circular(15),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.black2, width: 2.0),
                    borderRadius: BorderRadius.circular(15),
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
