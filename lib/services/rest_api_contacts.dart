import 'package:flutter/foundation.dart';
import 'package:flutter_indmoney_assignment/models/contact.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class APIService {
  static Uri uri = Uri.parse(
      'https://random-data-api.com/api/v2/users?size=20&is_xml=false');

  static Future<List<Contact>> getContactsDetails() async {
    List<Contact> contacts = [];
    try {
      http.Response response = await http.get(uri);
      var jsonData = jsonDecode(response.body) as List;

      for (Map<String, dynamic> ele in jsonData) {
        contacts.add(Contact.fromJson(ele));
      }
    } catch (e) {
      if (kDebugMode) {
        print('LOG flutter_indmoney_assignment : Error in parsing json data');
      }
    }
    return contacts;
  }
}
