import 'package:flutter/material.dart';
import 'package:flutter_indmoney_assignment/models/contact.dart';

import '../../helper/constant.dart';

class ContactDetails extends StatelessWidget {
  final Contact contact;
  const ContactDetails({Key? key, required this.contact}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String name = "${contact.first_name} ${contact.last_name}";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: XColors.black3,
      ),
      body: Column(
        children: [
          Hero(
            tag: Key(contact.id),
            child: Container(
              margin: const EdgeInsets.all(16.0),
              width: 300,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: XColors.black4,
                borderRadius: BorderRadius.circular(300),
              ),
              child: Image.network(
                contact.avatar,
                width: 200,
              ),
            ),
          ),
          Text(
            name,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(
            contact.phone_number,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
          ),
          const Divider(
            indent: 20,
            endIndent: 20,
            thickness: 2,
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              contact.description,
              textAlign: TextAlign.center,
            ),
          ),
          const Spacer(),
          if (!contact.isDone)
            ElevatedButton.icon(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(XColors.black3),
                foregroundColor: MaterialStateProperty.all(Colors.white),
              ),
              onPressed: () {
                contact.isDone = true;
                Navigator.pop(context);
              },
              icon: const Icon(Icons.done),
              label: const Text('Mark Done'),
            ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
