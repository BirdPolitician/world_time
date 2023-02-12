// ignore_for_file: avoid_print

import 'dart:developer';

import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Choose Location"),
          centerTitle: true,
        ),
        body: (ElevatedButton(
          onPressed: () {
            setState(() {
              counter += 1;
            });
          },
          child: Text("counter is ""$counter"),
        )));
  }
}
