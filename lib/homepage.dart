import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_calling/video.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final callingID = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            controller: callingID,
            decoration: const InputDecoration(
              hintText: 'Enter Call ID',
              border: OutlineInputBorder(),
            ),
          ).marginAll(10),
          SizedBox(
            width: Get.width,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                Get.to(
                  Callpage(callingID: callingID.text),
                );
              },
              child: const Text('Join'),
            ),
          ).marginAll(05),
        ],
      ),
    );
  }
}
