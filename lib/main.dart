// ignore_for_file: avoid_print

import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(const GaurApp());
}

class GaurApp extends StatefulWidget {
  const GaurApp({super.key});

  @override
  State<GaurApp> createState() => MyAppState();
}

class MyAppState extends State<GaurApp> {
  int noOfGopiChandan = 0;
  int noOfIdols = 0;
  int noOfBeadBags = 0;
  int noOfBeads = 0;
  int noOfRounds = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(useMaterial3: true),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            leading: const Padding(
              padding: EdgeInsets.only(left: 10),
              child: CircleAvatar(
                backgroundColor: Colors.orange,
                foregroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVA5z30sBqf39zIZPoR-yYVslhM-KnWul_Sw&usqp=CAU'),
                radius: 12,
              ),
            ),
            title: const Align(
              alignment: Alignment.center,
              child: Text(
                'Gaurang',
                style: TextStyle(
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    fontFamily: 'indie_flower'),
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  exit(0);
                },
                icon: const Icon(Icons.exit_to_app),
                iconSize: 28,
              )
            ],
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 340,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: double.maxFinite,
                        height: 10,
                      ),
                      const Text(
                        'Choose what to order:',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'indie_flower'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      noOfBeads--;
                                    });
                                  },
                                  radius: 20,
                                  child: const Text(
                                    '-',
                                    style: TextStyle(fontSize: 28),
                                  ),
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 34,
                                          child: Image.network(
                                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtyB65jTij8douBrtCInLE8U2OZ0hd85AyWg&usqp=CAU"),
                                        ),
                                        const Text(' Tulsi Beads ₹100')
                                      ])),
                              InkWell(
                                onTap: () {
                                  print('Value increase hua');
                                  setState(() {
                                    noOfBeads++;
                                  });
                                },
                                child: const Text(
                                  '+',
                                  style: TextStyle(fontSize: 28),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        noOfBeadBags--;
                                        print('Value decrease hua');
                                      });
                                    },
                                    radius: 20,
                                    child: const Text(
                                      '-',
                                      style: TextStyle(fontSize: 28),
                                    ),
                                  ),
                                ),
                                Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 34,
                                            child: Image.network(
                                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSj_b_v3T5q1w4c2W279i7S2TIByM4FGLVlw&usqp=CAU"),
                                          ),
                                          const Text('  Bead Bag ₹200')
                                        ])),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      noOfBeadBags++;
                                      print('Value increase hua');
                                    });
                                  },
                                  child: const Text(
                                    '+',
                                    style: TextStyle(fontSize: 28),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              Padding(
                                padding: const EdgeInsets.only(left: 16),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      noOfGopiChandan--;
                                      print('Value decrease hua');
                                    });
                                  },
                                  radius: 20,
                                  child: const Text(
                                    '-',
                                    style: TextStyle(fontSize: 28),
                                  ),
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 34,
                                          child: Image.network(
                                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxRxtZ3lQQ4d9UiESK4Lu_-06sCN0jMkvjxA&usqp=CAU"),
                                        ),
                                        const Text('Gopi Chandan ₹25')
                                      ])),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    noOfGopiChandan++;
                                    print('Value increase hua');
                                  });
                                },
                                child: const Text(
                                  '+',
                                  style: TextStyle(fontSize: 28),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        noOfIdols--;
                                        print('Value decrease hua');
                                      });
                                    },
                                    radius: 20,
                                    child: const Text(
                                      '-',
                                      style: TextStyle(fontSize: 28),
                                    ),
                                  ),
                                ),
                                Padding(
                                    padding: const EdgeInsets.all(4),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 34,
                                            child: Image.network(
                                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVIxKjvN5R4Ws9SnSp2CFUdHPsizHFO27AYg&usqp=CAU"),
                                          ),
                                          const Text('Dieties ₹400')
                                        ])),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      noOfIdols++;
                                      print('Value increase hua');
                                    });
                                  },
                                  child: const Text(
                                    '+',
                                    style: TextStyle(fontSize: 28),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  width: double.maxFinite,
                  height: 200,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'You are Willing to Order :',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Visibility(
                            visible: (noOfBeadBags <= 0 &&
                                noOfBeads <= 0 &&
                                noOfGopiChandan <= 0 &&
                                noOfIdols <= 0),
                            child: const Text('Nothing!!!!',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold))),
                        Visibility(
                            visible: noOfBeadBags > 0,
                            child: Text('$noOfBeadBags Bead Bags',
                                style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold))),
                        Visibility(
                            visible: noOfBeads > 0,
                            child: Text('$noOfBeads Beads',
                                style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold))),
                        Visibility(
                            visible: noOfGopiChandan > 0,
                            child: Text('$noOfGopiChandan Gopi Chandan blocks',
                                style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold))),
                        Visibility(
                            visible: noOfIdols > 0,
                            child: Text('$noOfIdols Dieties',
                                style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold))),
                        Visibility(
                            visible: (noOfBeadBags > 0 ||
                                noOfBeads > 0 ||
                                noOfGopiChandan > 0 ||
                                noOfIdols > 0),
                            child: ElevatedButton.icon(
                              icon: const Icon(
                                Icons.shopping_cart,
                                color: Colors.white,
                              ),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.purple[900])),
                              onPressed: () {},
                              label: const Text(
                                'Buy Now',
                                style: TextStyle(
                                    fontFamily: "indie_flower",
                                    color: Colors.white),
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
