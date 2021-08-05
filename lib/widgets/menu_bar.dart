import 'package:flutter/material.dart';
import 'package:flutter_application_3/theme/theme.dart';
import 'package:flutter_application_3/widgets/gradianbutton.dart';

class MenuBar extends StatelessWidget {
  const MenuBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 960,
      padding: EdgeInsets.only(top: 16),
      child: Column(
        children: [
          Row(
            children: [
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Icon(
              //     Icons.menu,
              //     color: Colors.grey.shade200,
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "DAO.Lottery",
                  style: kLogoTextTheme,
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(onPressed: () {}, child: Text("Sign In", style: kTextBody1)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GradianButton(title: "Get Tickets", onClick: () {}),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
