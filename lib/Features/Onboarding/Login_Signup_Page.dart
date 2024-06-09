import 'package:cheddar/Assets/color_chart.dart';
import 'package:flutter/material.dart';

class LoginSignupPage extends StatefulWidget {
  const LoginSignupPage({super.key});

  @override
  State<LoginSignupPage> createState() => _LoginSignupPageState();
}

class _LoginSignupPageState extends State<LoginSignupPage> {
  late Image img3;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    img3 = Image.asset('assets/images/img4.jpg');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox.expand(
              child: Image.asset(
                'assets/images/img4.jpg',
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
              ),
            ),
            SizedBox.expand(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.black.withOpacity(.5)),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                        text: 'Get into ',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                        children: [
                          TextSpan(
                              text: 'Cheddar',
                              style: TextStyle(
                                  color: mustard,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w900))
                        ])),
                const SizedBox(height: 40),
                Container(
                  width: 250,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: mustard,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(color: ash, fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  width: 250,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    'SignUp',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
