import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  String statusLogin = "";

  // untuk mencegah memory leak
  @override
  void dispose() {
    txtUsername.dispose();
    txtPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("login page")),
      body: Column(
        children: [
          // kita isi textfield username, password, dan button
          Text("Welcome to Application" + " " + statusLogin.toString(), style: TextStyle(
              fontSize: 20,
              color: Colors.red,
              fontWeight: FontWeight.bold
          )),
          Container(
            margin: EdgeInsets.all(10.0),  // Margin luar Container
            padding: EdgeInsets.symmetric(horizontal: 15.0),  // Padding dalam Container
            child: TextField(
              controller: txtUsername,
              decoration: InputDecoration(
                hintText: "input username",  // hintText lebih baik dari hint: Text()
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: TextField(
              controller: txtPassword,
              obscureText: true,
              decoration: InputDecoration(
                hintText: "input password",
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    String username = txtUsername.text;
                    String password = txtPassword.text;
                    if (username == "admin" && password == "admin") {
                      print("Sukses Login");
                      statusLogin = "admin";
                    } else {
                      print("Gagal Login");
                      statusLogin = "failed";
                    }
                  });
                },
                child: Text("Login"),
              ),
              SizedBox(width: 20),  // Beri jarak 20px
              ElevatedButton(
                onPressed: () {},
                child: Text("Register"),
              ),
            ],
          ),
        ],

      ),
    );
  }
}