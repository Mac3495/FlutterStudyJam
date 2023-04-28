import 'package:flutter/material.dart';
class ContainerGreenWidget extends StatelessWidget {

  String title;
  ContainerGreenWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: Color(0xFF1D7F2C),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: Color(0xFFFFFFFF)
            ),
          ),
        ),
      ),
    );
  }
}