// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'exchangerate.dart';

import 'dart:developer';

void main() {
  runApp(const MyApp());
}
GestureRecognizerFactoryfgfgf
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.pink),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Exchangerate? _dataFromApi;
  void initState() {
    super.initState();
    print("Test");
    getExchangeRate();
  }

  Future<void> getExchangeRate() async {
    print("getExchangeRate");

    Map<String, String> map = {
      "access_key": "6945ac873a0a5915d80b90d4c59f7a25",
      "base": "EUR",
      "symbols": "JPY,USD",
    };

    //var url = Uri.http('thaigold.info', '/RealTimeDataV2/gtdata_.txt');
    var url = Uri.http('api.exchangeratesapi.io', '/v1/latest', map);
    var Response = await http.get(url);
    setState(() {
      print(Response.body);
      //_dataFromApi = exchangerateFromJson(Response.body);
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("อัตราการแลกเปลี่ยน"),
      ),
      body: Column(
          // ignore: prefer_const_literals_to_create_immutables
          //      children: [LinearProgressIndicator(), Text(_dataFromApi!.base)],
          ),
    );
  }
}
