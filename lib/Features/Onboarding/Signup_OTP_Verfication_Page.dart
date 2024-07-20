import 'package:cheddar/Assets/color_chart.dart';
import 'package:cheddar/Features/Onboarding/Signup_Userdetail_Page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class SignupOTPVerificationPage extends StatefulWidget {
  final String mobileNumber;
  const SignupOTPVerificationPage({super.key, required this.mobileNumber});

  @override
  State<SignupOTPVerificationPage> createState() =>
      _SignupOTPVerificationPageState();
}

class _SignupOTPVerificationPageState extends State<SignupOTPVerificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox.expand(
      child: Stack(children: [
        SizedBox.expand(
            child: Image.asset(
          'assets/images/fimg1.jpeg',
          fit: BoxFit.cover,
        )),
        SizedBox.expand(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Colors.black.withOpacity(.5)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                Icons.phone_outlined,
                color: mustard,
                size: 60,
              ),
              const SizedBox(height: 5),
              const Text('Enter confirmation code',
                  style: TextStyle(color: ash, fontSize: 22)),
              const SizedBox(height: 5),
              Text(
                'Code was sent to your number\n +91 ${widget.mobileNumber}',
                style: const TextStyle(color: ash, fontSize: 18),
              ),
              const SizedBox(height: 5),
              OtpTextField(
                numberOfFields: 4,
                borderColor: mustard,
                borderRadius: BorderRadius.circular(16),
                borderWidth: 2,
                showFieldAsBox: true,
                showCursor: true,
                autoFocus: true,
                focusedBorderColor: mustard,
                cursorColor: mustard,
                fieldWidth: 50,
                fillColor: ash,
                filled: true,
                onSubmit: (_) {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SignupUserdetailPage()));
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 5),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Change phone number',
                      style: TextStyle(color: mustard)),
                ),
              ),
            ],
          ),
        )
      ]),
    ));
  }
}
