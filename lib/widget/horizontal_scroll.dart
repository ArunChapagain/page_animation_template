import 'package:flutter/material.dart';
import 'package:self_care/widget/card.dart';

class HorizontalScroll extends StatefulWidget {
  const HorizontalScroll({super.key});

  @override
  State<HorizontalScroll> createState() => _HorizontalScrollState();
}

class _HorizontalScrollState extends State<HorizontalScroll> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 458,
      // width: 313,
      child: ListView.builder(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const  Padding(
            padding:  EdgeInsets.only(right: 15),
            child:  CardWidget(),
          );
        },
      ),
    );
  }
}
