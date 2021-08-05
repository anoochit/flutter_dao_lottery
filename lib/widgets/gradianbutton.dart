import 'package:flutter/material.dart';

class GradianButton extends StatelessWidget {
  const GradianButton({Key? key, required this.title, required this.onClick}) : super(key: key);

  final String title;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Color.fromARGB(255, 0, 137, 255), Color.fromARGB(255, 96, 72, 235)],
          ),
        ),
        child: Text(
          this.title.toUpperCase(),
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12),
        ),
      ),
      onTap: () => onClick,
    );
  }
}
