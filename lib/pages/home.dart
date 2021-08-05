import 'package:flutter/material.dart';
import 'package:flutter_application_3/widgets/widget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<int> listNumber = [2, 3, 4, 5, 6, 22];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 360,
              child: Image.asset(
                "assets/images/1428-block_5_2x.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: Container(
                width: 960,
                child: Column(
                  children: [
                    MenuBar(),
                    WellcomeText(),
                    PlayNowBox(),
                    SizedBox(height: 32),
                    TextWithButton(title: "Recent Draws", titleButton: "All", onClick: () {}),
                    Container(
                      child: Wrap(
                        children: [
                          DrawBox(dateDraw: "DEC 21, 2018", numBet: 2346, number: listNumber, drawNumber: 123, ticketSold: 234, winner: 1234),
                          DrawBox(dateDraw: "DEC 21, 2018", numBet: 2346, number: listNumber, drawNumber: 123, ticketSold: 234, winner: 1234),
                          DrawBox(dateDraw: "DEC 21, 2018", numBet: 2346, number: listNumber, drawNumber: 123, ticketSold: 234, winner: 1234),
                          DrawBox(dateDraw: "DEC 21, 2018", numBet: 2346, number: listNumber, drawNumber: 123, ticketSold: 234, winner: 1234),
                        ],
                      ),
                    ),
                    SizedBox(height: 32),
                    TextWithButton(title: "Recent Winners", titleButton: "All", onClick: () {}),
                    Container(
                      child: Wrap(
                        children: [
                          WinnerBox(),
                          WinnerBox(),
                          WinnerBox(),
                          WinnerBox(),
                        ],
                      ),
                    ),
                    SizedBox(height: 64)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
