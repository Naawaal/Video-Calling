import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

final String userID = DateTime.now().microsecond.toString();

class Callpage extends StatelessWidget {
  final String callingID;
  const Callpage({
    super.key,
    required this.callingID,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ZegoUIKitPrebuiltCall(
        appID: 1278970041,
        appSign:
            "6c04e98577d6d4ef9e56187a9a22a6d4cc4e01e10e1c64517e9ce39053a0cc3e",
        callID: callingID,
        userID: userID,
        userName: "user_${userID.toString()}",
        config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
          ..onOnlySelfInRoom = (context) {
            Get.back();
          },
      ),
    );
  }
}
