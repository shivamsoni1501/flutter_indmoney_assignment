import 'package:flutter/material.dart';

class Contact {
  final String id;
  final String first_name;
  final String last_name;
  final String phone_number;
  final String description;
  final String avatar;
  bool isDone = false;

  Contact(this.id, this.first_name, this.last_name, this.description,
      this.phone_number, this.avatar);

  Contact.fromJson(Map<String, dynamic> json)
      : this.id = json['id'].toString(),
        this.first_name = json['first_name'],
        this.last_name = json['last_name'],
        this.phone_number = json['phone_number'],
        this.avatar = json['avatar'],
        this.description =
            "A 5.9 feet tall, pale skinned man with black eyes, a softly shaped jaw and defined cheekbones. He has lank, dark brown hair, has short, perfectly shaped sideburns, has average-sized feet, and a short neck, and he has body odour.";
}
