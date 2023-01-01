import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login ui',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Colors.green.shade100,
          child: ListView(
            children: [
              const SizedBox(
                height: 30,
              ),
              _buildLoginForm(),
            ],
          ),
        ));
  }

  Widget _buildLoginForm() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
        decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(20.0))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.green.shade600,
                  child: const Icon(Icons.person),
                ),
              ],
            ),
            const SizedBox(
              height: 30.0,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                  style: const TextStyle(color: Colors.green),
                  decoration: InputDecoration(
                      hintText: 'Email address',
                      hintStyle: TextStyle(
                        color: Colors.green.shade200,
                      ),
                      border: InputBorder.none,
                      icon: const Icon(
                        Icons.email,
                        color: Colors.green,
                      ))),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 10.0),
              child: const Divider(),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                  style: const TextStyle(color: Colors.green),
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: Colors.green.shade200,
                      ),
                      border: InputBorder.none,
                      icon: const Icon(
                        Icons.lock,
                        color: Colors.green,
                      ))),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 10.0),
              child: const Divider(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: const Text(
                    'Forgot password',
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: (){
                    ///check if form fields are valid
                    ///perform login
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                  ),
                  child: const Text('Login', style:TextStyle(color: Colors.white70),),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('__or__', style:TextStyle(color: Colors.black54),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: (){
                    /// push to signup page
                  },
                  child:  const Text('Sign up', style: TextStyle(color: Colors.green)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}