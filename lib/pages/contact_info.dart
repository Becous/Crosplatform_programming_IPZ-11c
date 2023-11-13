import 'package:flutter/material.dart';

class Contact {
  final String name;
  final String phoneNumber;
  final String email;
  final String photoAddress;

  Contact({
    required this.name,
    required this.phoneNumber,
    required this.email,
    required this.photoAddress,
  });
}

class ContactCard extends StatelessWidget {
  final Contact contact;

  ContactCard({required this.contact});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      alignment: Alignment.center,
      child: Card(
        elevation: 5,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Image.asset(
              contact.photoAddress, // Шлях до фотографії
              width: 100,
              height: 100,
            ),
            SizedBox(height: 10),
            Text(
              contact.name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text("Phone: ${contact.phoneNumber}"),
            Text("Email: ${contact.email}"),
          ],
        ),
      ),
    );
  }
}
