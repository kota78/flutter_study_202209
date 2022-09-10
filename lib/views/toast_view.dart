import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastView extends StatelessWidget {
  const ToastView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Show'),
              onPressed: () {
                Fluttertoast.showToast(
                  msg: "I am Toast!",
                  fontSize: 16.0,
                  textColor: Colors.white,
                  backgroundColor: Colors.black54,
                  timeInSecForIosWeb: 4,
                  gravity: ToastGravity.TOP,
                );
              },
            ),
            ElevatedButton(
              child: const Text('Cancel'),
              onPressed: () {
                Fluttertoast.cancel();
              },
            ),
          ],
        ),
      ),
    );
  }
}

class FlashToast extends StatelessWidget {
  const FlashToast({Key? key}) : super(key: key);

  void _showBasicsFlash(
    context, {
    Duration? duration,
    flashStyle = FlashBehavior.floating,
  }) {
    showFlash(
      context: context,
      duration: duration,
      builder: (context, controller) {
        return Flash(
          borderRadius: BorderRadius.circular(4.0),
          controller: controller,
          behavior: flashStyle,
          position: FlashPosition.top,
          boxShadows: kElevationToShadow[4],
          horizontalDismissDirection: HorizontalDismissDirection.horizontal,
          child: FlashBar(
            content: const Text(
              '動作確認に成功しました。',
              style: TextStyle(fontSize: 12),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: TextButton(
          onPressed: () {
            _showBasicsFlash(context);
          },
          child: const Text("flash"),
        ),
      ),
    );
  }
}
