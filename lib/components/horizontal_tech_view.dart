import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HorizontalTechView extends StatelessWidget {
  final List<String>? techList;

  const HorizontalTechView({
    required this.techList,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        itemCount: techList?.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            margin: const EdgeInsets.only(right: 15.0),
            child: Center(child: Text(techList![index])),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.white,
              border: Border.all(),
            ),
          );
        }),
      ),
    );
  }
}
