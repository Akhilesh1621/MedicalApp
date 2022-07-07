import 'package:flutter/material.dart';
import 'package:medical_app/configs/colors.dart';

import 'package:medical_app/models/modals.dart';
import 'package:medical_app/widget/profile_avatar.dart';

class Doctor extends StatelessWidget {
  final List<DoctorList> doc;
  const Doctor({Key? key, required this.doc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30.0, right: 30.0),
      height: 200.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: doc.length,
          itemBuilder: (BuildContext context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                width: 180.0,
                height: 200.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: const Color(0xFFf5f6ff),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ignore: prefer_const_literals_to_create_immutables
                    Stack(children: [
                      // ignore: prefer_const_constructors
                      ProfileAvatar(
                        imageUrl: doc[index].imageurl,
                        size: 50.0,
                      ),
                      Positioned(
                        width: 70.0,
                        bottom: 0.0,
                        left: 15.0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          height: 25.0,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow[800],
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  doc[index].rating.toString(),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ]),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      doc[index].name,
                      style: const TextStyle(
                        color: Palette.fontColor,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      doc[index].title,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 140, 134, 190),
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
