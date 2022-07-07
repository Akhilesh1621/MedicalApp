import 'package:flutter/material.dart';
import 'package:medical_app/configs/colors.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late FocusNode myFocusNode;

  @override
  void initState() {
    super.initState();

    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed.
    myFocusNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: myFocusNode,
      decoration: InputDecoration(
        prefixIcon: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Icon(
            Icons.search,
            color: Color(0xFFC6C9EE),
            size: 35.0,
          ),
        ),
        hintText: 'How can we text you?',
        focusColor: Palette.primary,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(20.0),
        ),
        disabledBorder: InputBorder.none,
        fillColor: const Color(0xFFf5f6ff),
        filled: true,
        hintStyle: const TextStyle(
          color: Color(0xFFC6C9EE),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
  }
}
