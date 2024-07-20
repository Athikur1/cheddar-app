import 'package:cheddar/Assets/color_chart.dart';
import 'package:cheddar/Features/Onboarding/Signup_Page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> with TickerProviderStateMixin {
  late PageController _pageViewController;
  late TabController _tabController;
  int _currentPageIndex = 0;
  late Image img1;
  late Image img2;
  late Image img3;

  @override
  void initState() {
    super.initState();
    img1 = Image.asset('assets/images/OIG2.jpeg');
    img2 = Image.asset('assets/images/pexels-jack-sparrow-4198222.jpg');
    img3 = Image.asset('assets/images/img4.jpg');

    _pageViewController = PageController();
    _tabController = TabController(length: 3, vsync: this);
  }

  // @override
  // void didChangeDependencies() {
  //   super.didChangeDependencies();
  //   precacheImage(img1.image, context);
  //   precacheImage(img2.image, context);
  //   precacheImage(img3.image, context);
  // }

  @override
  void dispose() {
    super.dispose();
    _pageViewController.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * .30;

    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _pageViewController,
            onPageChanged: _handlePageViewChange,
            children: <Widget>[
              SizedBox.expand(
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    SizedBox.expand(
                      child: Image.asset(
                        'assets/images/OIG2.jpeg',
                        fit: BoxFit.cover,
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                    SizedBox.expand(
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        decoration:
                            BoxDecoration(color: Colors.black.withOpacity(.6)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: height),
                      child: const Text(
                        textAlign: TextAlign.center,
                        'Personal offers. Good sales.\nQuick delivery.',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
              //--------------------------
              SizedBox.expand(
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    SizedBox.expand(
                      child: Image.asset(
                        'assets/images/pexels-jack-sparrow-4198222.jpg',
                        fit: BoxFit.cover,
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                    SizedBox.expand(
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        decoration:
                            BoxDecoration(color: Colors.black.withOpacity(.6)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: height),
                      child: const Text(
                        textAlign: TextAlign.center,
                        'Big choice. Fresh products.\nBest chains of supermarkets.',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
              //------------------------------------------
            ],
          ),
          PageIndicator(
            currentPageIndex: _currentPageIndex,
            tabController: _tabController,
            onUpdateCurrentPageIndex: _updateCurrentPageIndex,
          ),
        ],
      ),
    );
  }

  void _handlePageViewChange(int currentPageIndex) {
    _tabController.index = currentPageIndex;
    setState(() {
      _currentPageIndex = currentPageIndex;
    });
  }

  void _updateCurrentPageIndex(int index) {
    _tabController.index = index;
    _pageViewController.animateToPage(index,
        duration: const Duration(milliseconds: 400), curve: Curves.easeInOut);
  }
}

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    super.key,
    required this.tabController,
    required this.currentPageIndex,
    required this.onUpdateCurrentPageIndex,
  });

  final int currentPageIndex;
  final TabController tabController;
  final void Function(int) onUpdateCurrentPageIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // TabPageSelector(
          //   controller: tabController,
          //   selectedColor: mustard,
          //   color: ash,
          // ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: Colors.white),
            child: IconButton(
                onPressed: () {
                  if (currentPageIndex == 1) {
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                          builder: (context) => const SignupPage()),
                      (Route<dynamic> route) => false,
                    );
                  } else {
                    onUpdateCurrentPageIndex(currentPageIndex + 1);
                  }
                },
                icon: const Icon(
                  Icons.arrow_forward_rounded,
                  color: mustard,
                  size: 45,
                )),
          )
        ],
      ),
    );
  }
}
