import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/toast_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('SnackBar Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Hello Here ! Snackbar')
                    ),
                );
              }, 
              child: const Text('SnackBar')
              ),
            ElevatedButton(
              onPressed: () {
                 ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Hello Here ! Snackbar')
                    ),  
                );
                 Future.delayed(const Duration(seconds: 2));
                 ScaffoldMessenger.of(context).removeCurrentSnackBar();
              }, 
              child: const Text('Remove')
              ),
            ElevatedButton(
              onPressed: () {
                 ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Hello Here ! Snackbar')
                    ),
                );
               Future.delayed(const Duration(seconds: 2));
               ScaffoldMessenger.of(context).hideCurrentSnackBar();
              }, 
              child: const Text('Hide')
              ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, 
          MaterialPageRoute(builder: (context) => const ToastMessage()));
        },
        child: const Icon(Icons.navigate_next),
        ),
    );
  }
}