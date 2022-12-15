import 'package:flutter/material.dart';
import 'package:my_app_new1/colors.dart';

import '../screens/appoint_screen.dart';

class DoctorsSection extends StatelessWidget {
  List catDoc = [
    "Dr Looney",
    "Dr Jessica",
    "Dr James",
    "Dr Tom",
  ];

  List catRat = [
    "4.9",
    "3.1",
    "3.9",
    "2.3",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 340,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: 300,
                  width: 200,
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  decoration: BoxDecoration(
                    color: Color(0xFFF2F8FF),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: sdColor,
                        blurRadius: 4,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AppointScreen(),
                                ),
                              );
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(30),
                              ),
                              child: Image.asset(
                                "images/doctor${index + 1}.jpg",
                                height: 200,
                                width: 200,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              margin: EdgeInsets.all(8),
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                color: Color(0xFFF2F8FF),
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: sdColor,
                                    blurRadius: 4,
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.favorite_outline,
                                  color: pColor,
                                  size: 28,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              catDoc[index],
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: w500,
                                color: pColor,
                              ),
                            ),
                            Text(
                              "Surgeon",
                              style: TextStyle(
                                fontWeight: w500,
                                fontSize: 18,
                                color: bColor.withOpacity(0.5),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  catRat[index],
                                  style: TextStyle(
                                    fontWeight: w500,
                                    fontSize: 16,
                                    color: bColor.withOpacity(0.7),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            );
          },
        ));
  }
}
