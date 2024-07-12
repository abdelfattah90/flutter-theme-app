import 'package:flutter/material.dart';
import '../app_bar.dart';
import '../card.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(title: 'User Screen'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CardWidget(),
            SizedBox(height: 20),
            Text(
              'Welcome to the User Screen!',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
