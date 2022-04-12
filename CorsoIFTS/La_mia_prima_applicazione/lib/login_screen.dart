import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login"), centerTitle: true,),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(children: [
          Center(
            child: SizedBox(
              width: 200,
              height: 150,
              child: Image.asset('assets/logo-adriasonline.png'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email",
                  hintText: "Inserisci la tua email"),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                  hintText: "Inserisci la password"),
            ),
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                'Password dimenticata?',
                style: Theme.of(context).textTheme.headline1,
              )),
          Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextButton(
                onPressed: () {
                  //Route route = MaterialPageRoute(builder: (context) => ChatListScreen(),);
                  Navigator.pushReplacementNamed(context, "/chatList");
                },
                child: const Text(
                  "Accedi",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              )),
          const SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [const Icon(Icons.email), const Text('Accedi alla webmail')],
          )
        ])),
      ),
    );
  }
}
