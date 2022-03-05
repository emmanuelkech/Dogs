import 'dart:convert';

// This decodes from the internet
ApiService apiServiceFromJson(String str) => ApiService.fromJson(json.decode(str));

// This encodes to the app
String apiServiceToJson(ApiService data) => json.encode(data.toJson());


class ApiService {

  // This is where I initialized what I wanted to pick from the API URL
  ApiService({required this.message, required this.status});

  String message;
  String status;

  // This converts the data gotten from the internet
  factory ApiService.fromJson(Map<String, dynamic> json) => ApiService(
    message: json["message"],
    status: json["status"],
  );

  // This maps the data to the app
  Map<String, dynamic> toJson() => {
    "message": message,
    "status": status,
  };

}