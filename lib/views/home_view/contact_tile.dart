import 'package:flutter/material.dart';
import 'package:flutter_indmoney_assignment/helper/constant.dart';
import 'package:flutter_indmoney_assignment/models/contact.dart';
import 'package:flutter_indmoney_assignment/views/contact_details_view/contact_details.dart';

class ContactTile extends StatefulWidget {
  final Contact contact;
  const ContactTile({Key? key, required this.contact}) : super(key: key);

  @override
  State<ContactTile> createState() => _ContactTileState();
}

class _ContactTileState extends State<ContactTile> {
  @override
  Widget build(BuildContext context) {
    final String name =
        '${widget.contact.first_name} ${widget.contact.last_name}';
    return ListTile(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ContactDetails(contact: widget.contact),
        ),
      ).then((value) => setState(() {})),
      leading: Hero(
        tag: Key(widget.contact.id),
        child: Container(
          height: 50,
          width: 50,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            color: XColors.black4,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Image.network(
            widget.contact.avatar,
            width: 60,
          ),
        ),
      ),
      title: Text(name),
      subtitle: Text(widget.contact.phone_number),
      trailing: (widget.contact.isDone)
          ? const Icon(
              Icons.done,
              color: Colors.black,
            )
          : null,
    );
  }
}
