import 'package:dailynow_app/services/metroapi_service.dart';
import 'package:flutter/material.dart';

class LineStatusScreen extends StatefulWidget {
  @override
  State<LineStatusScreen> createState() => _LineStatusScreenState();
}

class _LineStatusScreenState extends State<LineStatusScreen> {
  bool showPaddingblue = false;
  bool showPaddingred = false;
  bool showPaddinggreen = false;
  bool showPaddingyellow = false;
  String yellowStatus = '';
  String blueStatus = '';
  String greenStatus = '';
  String redStatus = '';

  @override
  void initState() {
    super.initState();
    fetchLineStatus();
  }

  Future<void> fetchLineStatus() async {
    EstadoLinha estadoLinha = await estadoLinhas();
    setState(() {
      yellowStatus = estadoLinha.linhaAmarela;
      blueStatus = estadoLinha.linhaAzul;
      greenStatus = estadoLinha.linhaVerde;
      redStatus = estadoLinha.linhaVermelha;
    });
  }

  void togglePadding(String line) {
    setState(() {
      if (line == "red") {
        showPaddingred = !showPaddingred;
      } else if (line == "green") {
        showPaddinggreen = !showPaddinggreen;
      } else if (line == "blue") {
        showPaddingblue = !showPaddingblue;
      } else {
        showPaddingyellow = !showPaddingyellow;
      }
    });
  }

  // final String lineName;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      GestureDetector(
        onTap: () => togglePadding("yellow"),
        child: Container(
          color: Color(0xFFFAB711),
          child: Column(
            children: [
              TextField(
                enabled: false,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(15.0),
                  hintText: 'Amarelo',
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  suffixIcon: yellowStatus.contains('funcionar corretamente')
                      ? Icon(Icons.check, color: Colors.white)
                      : Icon(Icons.close, color: Colors.white),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                ),
              ),
              if (showPaddingyellow) ...{
                SizedBox(height: 5),
                Padding(
                  padding:
                      EdgeInsets.only(bottom: 10.0, left: 15.0, right: 15.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      yellowStatus,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              },
            ],
          ),
        ),
      ),
      GestureDetector(
        onTap: () => togglePadding("blue"),
        child: Container(
          color: Color(0xFF4E86C5),
          child: Column(
            children: [
              TextField(
                enabled: false,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(15.0),
                  hintText: 'Azul',
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  suffixIcon: yellowStatus.contains('funcionar corretamente')
                      ? Icon(Icons.check, color: Colors.white)
                      : Icon(Icons.close, color: Colors.white),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                ),
              ),
              if (showPaddingblue) ...{
                SizedBox(height: 5),
                Padding(
                  padding:
                      EdgeInsets.only(bottom: 10.0, left: 15.0, right: 15.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      blueStatus,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              },
            ],
          ),
        ),
      ),
      GestureDetector(
        onTap: () => togglePadding("green"),
        child: Container(
          color: Color(0xFF00A9A4),
          child: Column(
            children: [
              TextField(
                enabled: false,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(15.0),
                  hintText: 'Verde',
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  suffixIcon: yellowStatus.contains('funcionar corretamente')
                      ? Icon(Icons.check, color: Colors.white)
                      : Icon(Icons.close, color: Colors.white),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                ),
              ),
              if (showPaddinggreen) ...{
                SizedBox(height: 5),
                Padding(
                  padding:
                      EdgeInsets.only(bottom: 10.0, left: 15.0, right: 15.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      greenStatus,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              },
            ],
          ),
        ),
      ),
      GestureDetector(
        onTap: () => togglePadding("red"),
        child: Container(
          color: Color(0xFFED2C73),
          child: Column(
            children: [
              TextField(
                enabled: false,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(15.0),
                  hintText: 'Vermelho',
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  suffixIcon: yellowStatus.contains('funcionar corretamente')
                      ? Icon(Icons.check, color: Colors.white)
                      : Icon(Icons.close, color: Colors.white),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                ),
              ),
              if (showPaddingred) ...{
                SizedBox(height: 5),
                Padding(
                  padding:
                      EdgeInsets.only(bottom: 10.0, left: 15.0, right: 15.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      redStatus,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              },
            ],
          ),
        ),
      ),
    ]);
  }
}
