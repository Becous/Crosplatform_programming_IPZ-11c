import 'package:flutter/material.dart';
import 'contact_info.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Contact> contacts = [
    Contact(
      name: 'John Doe',
      phoneNumber: '555-1234',
      email: 'john.doe@example.com',
      photoAddress:
          'assets/irish_man.jpg', // Замініть це на реальний шлях до вашої фотографії
    ),
    Contact(
      name: 'Jane Smith',
      phoneNumber: '555-5678',
      email: 'jane.smith@example.com',
      photoAddress:
          'assets/irish_man.jpg', // Замініть це на реальний шлях до вашої фотографії
    ),
    Contact(
      name: 'Jane Smith',
      phoneNumber: '555-5678',
      email: 'jane.smith@example.com',
      photoAddress:
          'assets/irish_man.jpg', // Замініть це на реальний шлях до вашої фотографії
    ),
    Contact(
      name: 'Jane Smith',
      phoneNumber: '555-5678',
      email: 'jane.smith@example.com',
      photoAddress:
          'assets/irish_man.jpg', // Замініть це на реальний шлях до вашої фотографії
    ),
    Contact(
      name: 'Jane Smith',
      phoneNumber: '555-5678',
      email: 'jane.smith@example.com',
      photoAddress:
          'assets/irish_man.jpg', // Замініть це на реальний шлях до вашої фотографії
    ),
    Contact(
      name: 'Jane Smith',
      phoneNumber: '555-5678',
      email: 'jane.smith@example.com',
      photoAddress:
          'assets/irish_man.jpg', // Замініть це на реальний шлях до вашої фотографії
    ),

    // Додайте інші контакти, які вам потрібні
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (BuildContext context, int index) {
          return ContactCard(contact: contacts[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(context, '/createContact');
        },
      ),
    );
  }
}
