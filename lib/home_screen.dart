import 'package:flutter/material.dart';
import '../app_bar.dart';
import '../card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: 'Task Manager'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CardWidget(),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/user');
              },
              child: const Text('Go to User Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
