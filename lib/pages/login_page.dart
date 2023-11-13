import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Login",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Form(
                  child: Column(
                children: [
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
                        return value!.isEmpty ? 'Please enter email' : null;
                      }),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      onChanged: (String value) {},
                      decoration: InputDecoration(
                          labelText: "Password",
                          hintText: "Enter password",
                          prefix: Icon(Icons.key),
                          border: OutlineInputBorder()),
                      validator: (value) {
                        return value!.isEmpty ? 'Please enter password' : null;
                      }),
                  SizedBox(
                    height: 10,
                  ),
                  MaterialButton(
                    onPressed: () {
                      if (emailController.text == "admin" &&
                          passwordController.text == "admin") {
                        Navigator.pushReplacementNamed(context, '/home');
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Неправильний Email або пароль.'),
                          ),
                        );
                      }
                    },
                    height: 50,
                    minWidth: 120,
                    child: Text(
                      "Login",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    color: Colors.amber,
                    textColor: Colors.white,
                  )
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}
