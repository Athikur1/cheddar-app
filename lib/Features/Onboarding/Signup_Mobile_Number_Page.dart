import 'package:cheddar/Assets/color_chart.dart';
import 'package:cheddar/Features/Onboarding/Signup_OTP_Verfication_Page.dart';
import 'package:flutter/material.dart';

class SignupMobileNumberPage extends StatefulWidget {
  const SignupMobileNumberPage({super.key});

  @override
  State<SignupMobileNumberPage> createState() => _LoginMobileNumberPageState();
}

class _LoginMobileNumberPageState extends State<SignupMobileNumberPage> {
  String _mobileNumber = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox.expand(
      child: Stack(
        
        children: [
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
              const Text('Enter your phone number',
                  style: TextStyle(color: ash, fontSize: 22)),
              const SizedBox(height: 5),
              const Text(
                'Its helpfull to provide a good reason for why the phone number required.',
                style: TextStyle(color: ash, fontSize: 18),
              ),
              const SizedBox(height: 10),
              Container(
                decoration: const BoxDecoration(
                    color: ash,
                    borderRadius: BorderRadius.all(Radius.circular(16))),
                child: TextField(
                  onChanged: (value) {
                    _mobileNumber = value;
                  },
                  cursorColor: mustard,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        borderSide: BorderSide(color: mustard, width: 2)),
                  ),
                  autofocus: true,
                ),
              ),
              const SizedBox(height: 25),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SignupOTPVerificationPage(
                            mobileNumber: _mobileNumber,
                          )));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                      color: mustard,
                      borderRadius: BorderRadius.all(Radius.circular(16))),
                  child: const Center(
                    child: Text(
                      textAlign: TextAlign.center,
                      'Continue',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: ash),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ]),
    ));
  }
}
