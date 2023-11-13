import 'package:flutter/material.dart';

class CreateContact extends StatefulWidget {
  const CreateContact({super.key});

  @override
  State<CreateContact> createState() => _CreateContactState();
}

class _CreateContactState extends State<CreateContact> {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Створити контакт"),
      ),
      body: Container(
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                //Name
                SizedBox(height: 20.0),
                Text(
                  "Name",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 5.0),
                TextFormField(
                    controller: nameController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: "Name",
                        hintText: "Enter name",
                        prefix: Icon(Icons.email),
                        border: OutlineInputBorder()),
                    onChanged: (String value) {},
                    validator: (value) {
                      return value!.isEmpty ? 'Please enter name' : null;
                    }),
                SizedBox(height: 15.0),

                //PhoneNumber
                Text(
                  "PhoneNumber",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 5.0),
                TextFormField(
                    controller: phoneController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: "Phone number",
                        hintText: "Enter phone number",
                        prefix: Icon(Icons.email),
                        border: OutlineInputBorder()),
                    onChanged: (String value) {},
                    validator: (value) {
                      return value!.isEmpty ? 'Please enter email' : null;
                    }),
                SizedBox(height: 15.0),

                //Email
                Text(
                  "Email",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 5.0),
                TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: "Email",
                        hintText: "Enter email",
                        prefix: Icon(Icons.email),
                        border: OutlineInputBorder()),
                    onChanged: (String value) {},
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Запвніть Email.'),
                          ),
                        );
                      }
                    }),
                SizedBox(height: 15.0),
                //Buttons
                Center(
                    child: Row(children: [
                  MaterialButton(
                    onPressed: () {
                      Navigator.pop(context, '/home');
                    },
                    color: Colors.red,
                    textColor: Colors.white,
                    child: Text("Відмінити"),
                  ),
                  SizedBox(width: 15),
                  MaterialButton(
                      onPressed: () {
                        if (emailController.text != '' &&
                            phoneController.text != '' &&
                            nameController.text != '') {
                          Navigator.pop(context, 'home');
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Ти шось хлопче не заповнив.'),
                            ),
                          );
                        }
                      },
                      color: Colors.green,
                      textColor: Colors.white,
                      child: Text("Зберегти")),
                ])),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
