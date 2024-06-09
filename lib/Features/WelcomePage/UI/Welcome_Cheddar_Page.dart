import 'package:cheddar/Assets/color_chart.dart';
import 'package:cheddar/Features/Onboarding/Onboard.dart';
import 'package:flutter/material.dart';

class WelcomeCheddarPage extends StatefulWidget {
  const WelcomeCheddarPage({super.key});

  @override
  State<WelcomeCheddarPage> createState() => _WelcomeCheddarPageState();
}

class _WelcomeCheddarPageState extends State<WelcomeCheddarPage> {
  late Image myImage;
  @override
  void initState() {
    super.initState();
    myImage = Image.asset('assets/images/fimg1.jpeg');
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
          context,
          PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  const Onboarding(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              }));
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(myImage.image, context);
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
                'assets/images/fimg1.jpeg',
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
              ),
            ),
            SizedBox.expand(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.black.withOpacity(.3)),
              ),
            ),
            RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                    text: 'Welcome to\n',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                    children: [
                      TextSpan(
                          text: 'Cheddar',
                          style: TextStyle(
                              color: mustard,
                              fontSize: 32,
                              fontWeight: FontWeight.w900))
                    ]))
          ],
        ),
      ),
    );
  }
}
