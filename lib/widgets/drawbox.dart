import 'package:flutter/material.dart';

class DrawBox extends StatelessWidget {
  const DrawBox({
    Key? key,
    required this.dateDraw,
    required this.drawNumber,
    required this.number,
    required this.numBet,
    required this.ticketSold,
    required this.winner,
  }) : super(key: key);

  final String dateDraw;
  final int drawNumber;
  final List<int> number;
  final int numBet;
  final int ticketSold;
  final int winner;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 25, 25, 61),
          borderRadius: BorderRadius.circular(10),
        ),
        width: (MediaQuery.of(context).size.width < 412) ? (MediaQuery.of(context).size.width - 32) : ((960 - 64) / 4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(this.dateDraw, style: TextStyle(color: Colors.white, fontSize: 12)),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.emoji_events, color: Colors.white),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text('${this.numBet} BET', style: TextStyle(color: Colors.white, fontSize: 24)),
                ),
                Icon(Icons.emoji_events, color: Colors.white),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < number.length; i++)
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            (i == (number.length - 1)) ? Color.fromARGB(255, 253, 167, 45) : Color.fromARGB(255, 46, 47, 77),
                            (i == (number.length - 1)) ? Color.fromARGB(255, 243, 141, 40) : Color.fromARGB(255, 46, 47, 77),
                          ],
                        ),
                      ),
                      child: Center(
                        child: Text(
                          '${number[i]}',
                          style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Text("DRAW #", style: TextStyle(color: Colors.white, fontSize: 12)),
                Spacer(),
                Text('${this.drawNumber}', style: TextStyle(color: Colors.white, fontSize: 12)),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Text("Ticket Sold", style: TextStyle(color: Colors.white, fontSize: 12)),
                Spacer(),
                Text('${this.ticketSold}', style: TextStyle(color: Colors.white, fontSize: 12)),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Text("Winner", style: TextStyle(color: Colors.white, fontSize: 12)),
                Spacer(),
                Text('${this.winner}', style: TextStyle(color: Colors.white, fontSize: 12)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
