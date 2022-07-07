import 'package:flutter/material.dart';

import 'package:medical_app/data/data.dart';
import 'package:medical_app/models/catgory_modal.dart';

class Catagorys extends StatelessWidget {
  final List<Catgory> items;
  const Catagorys({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (BuildContext context, index) {
          return Container(
            margin: const EdgeInsets.only(left: 30.0),
            height: 60.0,
            width: 140.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xFFf5f6ff),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    items[index].imageurl,
                    height: 25.0,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    items[index].title,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
