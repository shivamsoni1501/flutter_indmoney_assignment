import 'package:flutter/material.dart';
import 'package:flutter_indmoney_assignment/helper/constant.dart';
import 'package:flutter_indmoney_assignment/models/contact.dart';
import '../../services/rest_api_contacts.dart';
import '../common_views/loading_view.dart';
import '../common_views/message_view.dart';
import 'contact_tile.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: XColors.black2,
        title: const Text(
          'Contacts',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: FutureBuilder(
        // I try to use the provider, but it founds to be a overhead for this
        //perticular assifgnment, so i simply use the future builder.
        future: APIService.getContactsDetails(),
        builder: (context, AsyncSnapshot<List<Contact>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting ||
              snapshot.connectionState == ConnectionState.active) {
            return const LoadingView();
          } else if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              var data = snapshot.data ?? [];
              if (data.isEmpty) {
                return const MessageView(
                    message:
                        'Something Went Wrong.\nPlease check your connection');
              }
              return ListView.builder(
                itemExtent: 80,
                physics: const BouncingScrollPhysics(),
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return ContactTile(contact: data[index]);
                },
              );
            }
          }
          return const MessageView(
              message: 'Some Error Occurs While Fetching Data.');
        },
      ),
    );
  }
}
