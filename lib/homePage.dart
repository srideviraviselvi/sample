import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:localstorage/localstorage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late LocalStorage? localStorage;
  List<String> dataArray = [];
  Future<String?> getApiResponse() async {
    final response = await http.post(
      Uri.parse(
          "https://crudcrud.com/api/1c2cd6d0428b42c08f8acb6e83cbacf0/sridevi"),
    );
    var data = jsonDecode(response.body);
    dataArray.add(data);
    dataArray.forEach((element) {});
    print("data $dataArray");
    // var itemData = localStorage?.setItem("data", data);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getApiResponse();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
