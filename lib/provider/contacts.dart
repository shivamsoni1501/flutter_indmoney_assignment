import 'package:flutter/material.dart';

import '../models/contact.dart';
import '../services/rest_api_contacts.dart';

// Never User AnyWhere
class Contacts extends ChangeNotifier {
  List<Contact> _contacts = [];

  get contacts => [..._contacts];

  Future<bool> fetchContacts() async {
    try {
      _contacts = await APIService.getContactsDetails();
      return true;
    } catch (e) {
      return false;
    }
  }
}
