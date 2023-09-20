import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastMessage extends StatelessWidget {
  const ToastMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toast Message'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Fluttertoast.showToast(
              msg: 'Hello It is Toast Message !',
              gravity: ToastGravity.BOTTOM,
              backgroundColor: Colors.teal,
              fontSize: 18,
              textColor: Colors.black,
              toastLength: Toast.LENGTH_SHORT,
              );
          }, 
          child: const Text('Click Me !')
          ),
      ),
    );
  }
}