// To parse this JSON data, do
//
//     final dog = dogFromJson(jsonString);



import 'dart:convert';

Dog dogFromJson(String str) => Dog.fromJson(json.decode(str));

String dogToJson(Dog data) => json.encode(data.toJson());

class Dog {
    Dog({
      required  this.message,
      required  this.status,
    });

    String message;
    String status;

    factory Dog.fromJson(Map<String, dynamic> json) => Dog(
        message: json["message"],
        status: json["status"],
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "status": status,
    };
}
