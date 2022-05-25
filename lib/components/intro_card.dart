import 'package:flutter/material.dart';

class IntroCard extends StatelessWidget {
  final String text;
  const IntroCard({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25.0),
      margin: const EdgeInsets.all(25.0),
      decoration: BoxDecoration(
        color: Colors.indigo.shade900,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            offset: const Offset(0, 10),
            blurRadius: 15,
          ),
        ],
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(color: Colors.orange, width: 5),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.amber.shade900),
      ),
    );
  }
}
