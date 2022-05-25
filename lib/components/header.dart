import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Welcome back 👋',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w300),
            ),
            Text(
              "Juan's Portfolio",
              style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Image.asset(
          'assets/avataaars.png',
          fit: BoxFit.cover,
          height: 45,
        ),
      ],
    );
  }
}
