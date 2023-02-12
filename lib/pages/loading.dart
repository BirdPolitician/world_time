// ignore_for_file: avoid_print, unused_local_variable
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  
  void setupWorldTime() async{
    WorldTime instance = WorldTime(location: 'Berlin', flag: 'germany.png', endOfUrl: 'Europe/Berlin');
    await instance.getTime();
    print(instance.time);
  }


  @override
  void initState() {
    print("InitState Function ran");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('AHHHHHHHHHHHHHHHH'),
    );
  }
}
