import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.red,
      width: 340,
      height: 56,
      padding: const EdgeInsets.only(
        right: 16,
        left: 26,
        top: 17,
        bottom: 18,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xFFF6F6F6),
      ),
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Search doctor, medicines, etc',
            hintStyle: const TextStyle(
              fontFamily: 'Lato',
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            suffixIcon: Image.asset(
              'assets/icons/Search.png',
              color: const Color(0xFF25282B),
            )),
      ),
    );
  }
}
