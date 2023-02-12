import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';


class WorldTime{
  
  String location = ''; //location name for the UI
  String time = ''; //The time for that location
  String flag = '';  //url to an assest flag icon
  String endOfUrl = ''; //Location url for api endpoint

  WorldTime({required this.location, required this.flag, required this.endOfUrl});

  Future<void> getTime() async {
    //make the request
    var url = Uri.parse('https://worldtimeapi.org/api/timezone/$endOfUrl');
    var response = await http.get(url);
    Map data = jsonDecode(response.body);
    //print(data);

    //get properties from data
    String datetime = data['datetime'];
    //print(datetime);
    //print(offset);
    DateTime now = DateTime.parse(datetime);

    time = now.toString(); // Set time property
  }

}




