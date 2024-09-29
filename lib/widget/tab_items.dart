import 'package:flutter/material.dart';

class TabItems extends StatelessWidget {
  final bool isSelected;
  final String title;
  const TabItems({
    super.key,
    required this.isSelected,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 56,
      width: 122,
      decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(
          color: isSelected
              ? const Color(0XFF0C359E)
              : Colors.transparent, // Change the color here
          width: 2.0, // Change the width here
        )),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          color: isSelected
              ? Colors.white
              : const Color(0XFF64658A), // Change the color here
        ),
      ),
    );
  }
}
