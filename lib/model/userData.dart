import 'dart:convert';

class UserData {
  int? id;
  String? name;
  int? age;
  int? number;

  UserData({
    this.id,
    this.name,
    this.age,
    this.number,
  });

  UserData.fromJson() {
    var id = jsonDecode("id");
    var name = jsonDecode("name");
    var age = jsonDecode("age");
    var number = jsonDecode("number");
  }
}
