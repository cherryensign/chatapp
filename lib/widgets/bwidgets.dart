import 'package:flutter/material.dart';

InputDecoration tfInputDecoration(String hint) {
  return InputDecoration(
    hintText: hint,
    hintStyle: const TextStyle(
      color: Colors.grey,
    ),
    focusedBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.black),
    ),
    enabledBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.black),
    ),
  );
}

GestureDetector blueRoundButton(
    BuildContext context, String text, dynamic function) {
  return GestureDetector(
    onTap: function,
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.blue,
      ),
      width: MediaQuery.of(context).size.width,
      child: Text(
        text,
        style: const TextStyle(color: Colors.white),
        textAlign: TextAlign.center,
      ),
    ),
  );
}

SizedBox spaced(double H) {
  return SizedBox(
    height: H,
    width: double.infinity,
  );
}
