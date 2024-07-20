import 'package:cheddar/Features/WelcomePage/UI/Welcome_Cheddar_Page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
  final List<String>_imageToLoad = [
    'assets/images/fimg1.jpeg',
    'assets/images/pexels-jack-sparrow-4198222.jpg',
    'assets/images/img4.jpg',
    'assets/images/img4.jpg'
  ]; 
 
  @override
  Widget build(BuildContext context) {
    for(var v in _imageToLoad){
      precacheImage(AssetImage(v), context);
    }
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Montserrat",
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const WelcomeCheddarPage(),
    );
  }
}
