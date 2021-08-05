import 'package:flutter/material.dart';

class PlayNowBox extends StatelessWidget {
  const PlayNowBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Color.fromARGB(255, 27, 27, 63),
      ),
      child: Flex(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        direction: (MediaQuery.of(context).size.width < 744) ? Axis.vertical : Axis.horizontal,
        children: [
          JackpotBox(),
          NextDrawBox(),
          PlayNowButton(),
        ],
      ),
    );
  }
}

class PlayNowButton extends StatelessWidget {
  const PlayNowButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(left: 16, right: 120, top: 16, bottom: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(90),
              color: Color.fromARGB(255, 49, 49, 83),
            ),
            child: Text(
              "Start from 2 BETS",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          Positioned(
            right: 0,
            child: InkWell(
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 49, 49, 83),
                  borderRadius: BorderRadius.circular(90),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Color.fromARGB(255, 255, 172, 56), Color.fromARGB(255, 245, 137, 36)],
                  ),
                ),
                child: Text(
                  "Play Now",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}

class JackpotBox extends StatelessWidget {
  const JackpotBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Jackpot!",
            style: TextStyle(
              color: Color.fromARGB(255, 251, 150, 49),
              fontSize: 16,
            ),
          ),
          Text(
            '937 218 BET',
            style: TextStyle(
              color: Color.fromARGB(255, 251, 150, 49),
              fontSize: 32,
            ),
          ),
          Text(
            'USD 2,420,000',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}

class NextDrawBox extends StatelessWidget {
  const NextDrawBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Next Draw in",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          Text(
            '4 Hours',
            style: TextStyle(
              color: Color.fromARGB(255, 251, 150, 49),
              fontSize: 32,
            ),
          ),
        ],
      ),
    );
  }
}
