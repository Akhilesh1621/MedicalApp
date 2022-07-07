// ignore_for_file: sort_child_properties_last, unnecessary_const

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:medical_app/configs/colors.dart';
import 'package:medical_app/data/data.dart';
import 'package:medical_app/models/catgory_modal.dart';
import 'package:medical_app/widget/catgory_list.dart';
import 'package:medical_app/widget/doctorlist.dart';
import 'package:medical_app/widget/profile_avatar.dart';
import 'package:medical_app/widget/text_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomepageState();
}

class _HomepageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_literals_to_create_immutables
      body: SafeArea(
        child: Column(
          children: [
            // app bar
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        "Hello,",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      const Text(
                        'Akhilesh Devop',
                        style: TextStyle(
                            fontSize: 24.0, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const ProfileAvatar(
                    size: 25.0,
                    imageUrl:
                        'https://images.unsplash.com/photo-1582750433449-648ed127bb54?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),

            // card -> how do you feel?

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding:
                    const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Palette.secondary,
                ),
                child: Row(children: [
                  // animation or picture
                  Image.asset(
                    'assets/doctor.png',
                    height: 120.0,
                  ),

                  const SizedBox(
                    width: 20.0,
                  ),
                  // how do you feel text + button
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          'How do you feel?',
                          style: TextStyle(
                              color: Palette.fontColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0),
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),
                        const Text(
                          'Fill out your medical Card right now',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Palette.fontColor,
                          ),
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),
                        Container(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Palette.primary),
                            ),
                            onPressed: () {},
                            child: const Text('Get started'),
                          ),
                        )
                      ],
                    ),
                  )
                ]),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            // search bar
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: CustomTextField(),
            ),

            const SizedBox(
              height: 20.0,
            ),

            // horizontal listview => catgory

            Catagorys(
              items: catgory,
            ),
            const SizedBox(
              height: 20.0,
            ),
            // doctor list view
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    'Doctor list',
                    style: TextStyle(
                      color: Palette.fontColor,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'See all',
                    style: TextStyle(color: Palette.fontColor),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            // doctor list view
            InkWell(
              focusColor: Color.fromARGB(0, 255, 255, 255),
              splashColor: Color.fromARGB(0, 255, 255, 255),
              onTap: (() {}),
              child: Doctor(
                doc: doctorlist,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
