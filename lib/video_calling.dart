import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_calling/homepage.dart';

class VideoCalling extends StatelessWidget {
  const VideoCalling({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Video Calling',
      themeMode: ThemeMode.system,
      home: const HomeScreen(),
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: '',
      ),
    );
  }
}
