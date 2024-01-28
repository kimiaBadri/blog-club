import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 44, right: 40, left: 40),
            child: Row(
              children: [
                Text('data'),
                Text('data'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
