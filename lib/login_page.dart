import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff303030),
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 50),
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 50,
                  ),
                ),
                Stack(
                  children: [
                    Center(
                      child: Container(
                        width: 300,
                        height: 600,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xff1B1C1E),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Login',
                              style: TextStyle(
                                color: Color(0xff1FAFAFA),
                                fontFamily: 'Quicksand'
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(20),
                              child: const TextField(
                                style: TextStyle(
                                  color: Color(0xff9A9A9A),
                                ),
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xff303030),
                                  hintText: 'Username or Email',
                                  hintStyle: TextStyle(color: Color(0xff9A9A9A),)
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(20),
                              child: const TextField(
                                obscureText: true,
                                style: TextStyle(
                                  color: Color(0xff9A9A9A),
                                ),
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Color(0xff303030),
                                    hintText: 'Password',
                                    hintStyle: TextStyle(color: Color(0xff9A9A9A),)
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Don't Have an Account?",
                                  style: TextStyle(color: Colors.white),
                                ),
                                GestureDetector(
                                  onTap: (){},
                                  child: Text(
                                    'Sign In',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                            Image.asset(
                              'assets/images/google_logo.png',
                              height: 20,
                            ),
                            ElevatedButton(onPressed: (){}, child: Text('LOGIN'))
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
