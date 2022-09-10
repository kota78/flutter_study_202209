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
              child: Text('Show'),
              onPressed: () {
                Fluttertoast.showToast(
                  msg: "I am Toast!",
                  fontSize: 16.0,
                  textColor: Colors.white,
                  backgroundColor: Colors.black54,
                  timeInSecForIosWeb: 4,
                  gravity: ToastGravity.TOP,
                  toastLength: Toast.LENGTH_LONG,
                );
              },
            ),
            ElevatedButton(
              child: Text('Cancel'),
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
