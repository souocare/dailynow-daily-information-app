import 'package:flutter/material.dart';

class WaitingTimeYellowLineScreen extends StatefulWidget {
  final bool getinfo;
  final Map<String, List<String>> nextTrainTime;

  WaitingTimeYellowLineScreen(
      {required this.getinfo, required this.nextTrainTime});

  @override
  State<WaitingTimeYellowLineScreen> createState() =>
      _WaitingTimeYellowLineState();
}

class _WaitingTimeYellowLineState extends State<WaitingTimeYellowLineScreen> {
  @override
  Widget build(BuildContext context) {
    return widget.getinfo
        ? Container(
            child: Column(
              children: [
                Text(
                  "Linha Amarela",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFAB711),
                  ),
                ),
                SizedBox(height: 15),
                Align(
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(text: "Destino: "),
                        TextSpan(
                          text: "Rato",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Align(
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: "08:20 min",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Align(
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: "16:20 min",
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Align(
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: "24:20 min",
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Align(
                  alignment: Alignment.centerRight,
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(text: "Destino: "),
                        TextSpan(
                          text: "Odivelas",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Align(
                  alignment: Alignment.centerRight,
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: "08:20 min",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Align(
                  alignment: Alignment.centerRight,
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: "16:20 min",
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Align(
                  alignment: Alignment.centerRight,
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: "24:20 min",
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        : SizedBox(height: 1);
  }
}
