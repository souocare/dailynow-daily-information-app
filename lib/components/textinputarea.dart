import 'package:flutter/material.dart';

class TextInputArea extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;

  TextInputArea(
      {required this.controller,
      required this.hintText,
      this.obscureText = false,
      rgument});

  @override
  _TextInputAreaState createState() => _TextInputAreaState();
}

class _TextInputAreaState extends State<TextInputArea> {
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25.0,
      ),
      child: TextField(
        controller: widget.controller,
        obscureText: _obscureText && widget.obscureText,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
          ),
          fillColor: Colors.grey.shade200,
          filled: true,
          hintText: widget.hintText,
          hintStyle: TextStyle(color: Colors.grey[500]),
          suffixIcon: widget.obscureText
              ? IconButton(
                  icon: Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                )
              : null,
        ),
      ),
    );
  }
}
