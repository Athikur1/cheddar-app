import 'dart:ui';

import 'package:cheddar/Assets/color_chart.dart';
import 'package:cheddar/Features/Onboarding/SuperMarket_List_Page.dart';
import 'package:flutter/material.dart';

class SignupUserdetailPage extends StatefulWidget {
  const SignupUserdetailPage({super.key});

  @override
  State<SignupUserdetailPage> createState() => _LoginUserdetailPageState();
}

class _LoginUserdetailPageState extends State<SignupUserdetailPage> {
  String _firstName = '';
  bool isShowPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      SizedBox.expand(
          child: Image.asset(
        'assets/images/OIG2.jpeg',
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
            const SizedBox(height: 5),
            const Text('Your details',
                style: TextStyle(color: ash, fontSize: 22)),
            const SizedBox(height: 5),
            const Text(
              'Please fill up your profile ',
              style: TextStyle(color: ash, fontSize: 18),
            ),
            const SizedBox(height: 10),

            // First name textbox
            Container(
              decoration: const BoxDecoration(
                  color: ash,
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              child: TextField(
                onChanged: (value) {
                  // _mobileNumber = value;
                },
                cursorColor: mustard,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10),
                  hintText: 'Enter email or username',
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      borderSide: BorderSide(color: mustard, width: 2)),
                ),
                autofocus: true,
              ),
            ),
            const SizedBox(height: 25),

            // Last name textbox
            Container(
              decoration: const BoxDecoration(
                  color: ash,
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              child: TextField(
                onChanged: (value) {
                  // _mobileNumber = value;
                },
                cursorColor: mustard,
                obscureText: isShowPassword,
                decoration: InputDecoration(
                  suffixIconColor: mustard,
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isShowPassword = !isShowPassword;
                        });
                      },
                      icon: Icon(isShowPassword
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined)),
                  contentPadding: const EdgeInsets.only(left: 10),
                  hintText: 'Password',
                  focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      borderSide: BorderSide(color: mustard, width: 2)),
                ),
                autofocus: true,
              ),
            ),

            const SizedBox(height: 25),
            InkWell(
              onTap: () {
                // navigate and push replace should be implemented 
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>const SuperMarketListPage()));
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
                    'SignIn',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18, color: ash),
                  ),
                ),
              ),
            )
          ],
        ),
      )
    ]));
  }
}
