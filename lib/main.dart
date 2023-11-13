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
    return Card(
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
    );
  }
}

void main() {
  Contact sampleContact = Contact(
    name: "John Doe",
    phoneNumber: "123-456-7890",
    email: "john.doe@example.com",
    photoAddress: "assets/irish_man.png", // Припустимо, що ця фотографія розташована в папці "assets"
  );

  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Contact Information'),
        ),
        body: Center(
          child: ContactCard(contact: sampleContact),
        ),
      ),
    ),
  );
}