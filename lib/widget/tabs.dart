import 'package:flutter/material.dart';
import 'package:self_care/widget/tab_items.dart';

class TabSelector extends StatefulWidget {
  const TabSelector({super.key});

  @override
  State<TabSelector> createState() => _TabSelectorState();
}

class _TabSelectorState extends State<TabSelector> {
  bool isSelected = false;
  List tabs = [
    'Marriage',
    'Career',
    'Family',
    'Health',
    'Finance',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: 382,
      height: 56,
      child: ListView.builder(
        itemCount: tabs.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return TabItems(
              title: tabs[index], isSelected: index == 0 ? true : false);
        },
      ),
    );
  }
}
