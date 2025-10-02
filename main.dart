import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(pointsCounter());
}

class pointsCounter extends StatefulWidget {
  @override
  State<pointsCounter> createState() => _pointsCounterState();
}

class _pointsCounterState extends State<pointsCounter> {
  int TeamApoints = 0;

  int TeamBpoints = 0;

  void addOnePoint() {
    print('add one point');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          //point counter
          backgroundColor: Colors.orange,
          title: Text('points Counter'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //teamA
                Column(
                  children: [
                    Text('Team A', style: TextStyle(fontSize: 32)),
                    Text('$TeamApoints', style: TextStyle(fontSize: 150)),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(120, 60),
                      ),
                      onPressed: () {
                        TeamApoints++;
                        setState(() {});
                        print(TeamApoints);
                      },
                      child: Text(
                        'Add 1 Point ',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(120, 60),
                      ),
                      onPressed: () {
                        TeamApoints += 2;
                        setState(() {});
                        print(TeamApoints);
                      },
                      child: Text(
                        'Add 2 Point ',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(120, 60),
                      ),
                      onPressed: () {
                        TeamApoints += 3;
                        setState(() {});
                        print(TeamApoints);
                      },
                      child: Text(
                        'Add 3 Point ',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
                const SizedBox(
                  height: 350,
                  child: VerticalDivider(
                    color: Colors.orangeAccent,
                    thickness: 2,
                  ),
                ),
                //team B
                Column(
                  children: [
                    Text('Team B', style: TextStyle(fontSize: 32)),
                    Text('$TeamBpoints', style: TextStyle(fontSize: 150)),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(120, 60),
                      ),
                      onPressed: () {
                        TeamBpoints++;
                        setState(() {});
                        print(TeamBpoints);
                      },
                      child: Text(
                        'Add 1 Point ',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(120, 60),
                      ),
                      onPressed: () {
                        TeamBpoints += 2;
                        setState(() {});
                        print(TeamBpoints);
                      },
                      child: Text(
                        'Add 2 Point ',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(120, 60),
                      ),
                      onPressed: () {
                        TeamBpoints += 3;
                        setState(() {});
                        print(TeamBpoints);
                      },
                      child: Text(
                        'Add 3 Point ',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            //reset
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                minimumSize: Size(120, 60),
              ),
              onPressed: () {
                setState(() {
                  TeamApoints = 0;
                  TeamBpoints = 0;
                });
              },
              child: Text(
                'Reset ',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
            const Spacer(flex: 18),
          ],
        ),
      ),
    );
  }
}
