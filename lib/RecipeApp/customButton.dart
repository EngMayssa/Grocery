import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  // const CustomButton({Key? key}) : super(key: key);
  // لكي تكون البيانات متغيره
   CustomButton(this.text);
  final String text; // لتغيير بيانات النص
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(this.text, style: TextStyle(color: const Color(0xFFFFFFFF) ,fontSize: 15)),
      style: ElevatedButton.styleFrom(
        primary: Colors.transparent,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)
        ),

      ),
    );
  }
}
