import 'package:flutter/material.dart';

class WellcomeText extends StatelessWidget {
  const WellcomeText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Container(
        width: constraints.maxWidth * 0.8,
        height: 200,
        child: FittedBox(
          child: Center(
              child: Text(
            "Fair International Blockchain Lottery",
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
            ),
          )),
        ),
      ),
    );
  }
}
