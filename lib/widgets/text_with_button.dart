import 'package:flutter/material.dart';

class TextWithButton extends StatelessWidget {
  const TextWithButton({Key? key, required this.title, required this.titleButton, required this.onClick}) : super(key: key);

  final String title;
  final String titleButton;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 960,
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: Row(
        children: [
          Text(
            this.title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
          Spacer(),
          InkWell(
            onTap: () => this.onClick,
            child: Container(
              padding: EdgeInsets.only(left: 8, right: 4),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Flex(
                direction: Axis.horizontal,
                children: [
                  Text(
                    this.titleButton,
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(
                    Icons.navigate_next,
                    size: 16,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
