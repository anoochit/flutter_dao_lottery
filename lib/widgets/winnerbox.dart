import 'package:flutter/material.dart';

class WinnerBox extends StatelessWidget {
  const WinnerBox({Key? key}) : super(key: key);

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
        width: (MediaQuery.of(context).size.width < 482) ? (MediaQuery.of(context).size.width - 32) : ((960 - 64) / 4),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Luke Skywalker",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 46, 47, 77),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    '#${123}',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                )
              ],
            ),
            Text(
              '01.12.2021',
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
            SizedBox(height: 24),
            Text(
              '0.004 ETH',
              style: TextStyle(color: Color.fromARGB(255, 251, 150, 49), fontSize: 32),
            ),
          ],
        ),
      ),
    );
  }
}
