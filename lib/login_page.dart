import 'package:flutter/material.dart';
import 'package:login_page/home_page.dart';
import 'package:login_page/sign_up_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _controllerUsername = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  bool _usernameValidation = true;
  bool _passwordValidation = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff303030),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 50, top: 30),
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 50,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 35, left: 35, bottom: 20),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: 700,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xff1B1C1E),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 50,
                            bottom: 15,
                          ),
                          child: const Text(
                            'Login',
                            style: TextStyle(
                              color: Color(0xff1FAFAFA),
                              fontFamily: 'Quicksand',
                              fontSize: 25,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          child: ConstrainedBox(
                            constraints: BoxConstraints(
                              maxWidth: 600,
                            ),
                            child: TextFormField(
                              controller: _controllerUsername,
                              style: TextStyle(
                                color: Color(0xffFAFAFA),
                                fontSize: 14,
                                fontFamily: 'Quicksand',
                                height: 1.1,
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your email or username';
                                }
                              },
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                  borderSide: BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                  borderSide: BorderSide(
                                    width: 2,
                                    style: BorderStyle.solid,
                                    color: Colors.cyan,
                                  ),
                                ),
                                filled: true,
                                fillColor: _usernameValidation ? Color(0xff303030) : Color(0xffD13838),
                                hintText: 'Username or Email',
                                hintStyle: TextStyle(
                                  color: _usernameValidation ? Color(0xff9A9A9A) : Color(0xffFAFAFA),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          child: ConstrainedBox(
                            constraints: BoxConstraints(
                              maxWidth: 600,
                            ),
                            child: TextFormField(
                              controller: _controllerPassword,
                              obscureText: true,
                              style: TextStyle(
                                color: Color(0xffFAFAFA),
                                fontSize: 14,
                                fontFamily: 'Quicksand',
                                height: 1.1,
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your email or username';
                                }
                              },
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                  borderSide: BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                  borderSide: BorderSide(
                                      width: 2,
                                      style: BorderStyle.solid,
                                      color: Colors.cyan),
                                ),
                                filled: true,
                                fillColor: _usernameValidation ? Color(0xff303030) : Color(0xffD13838),
                                hintText: 'Password',
                                hintStyle: TextStyle(
                                  color: _usernameValidation ? Color(0xff9A9A9A) : Color(0xffFAFAFA),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don't Have an Account?",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Quicksand',
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return SignUpPage();
                                    }));
                                  },
                                  child: Text(
                                    'Sign Up',
                                    style: TextStyle(
                                      color: Colors.cyanAccent,
                                      fontFamily: 'Quicksand',
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(40),
                          child: Image.asset(
                            'assets/images/google_logo.png',
                            height: 25,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, bottom: 40),
                          child: ConstrainedBox(
                            constraints: BoxConstraints(
                              maxWidth: 500,
                            ),
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  if (_controllerUsername.text == "admin" &&
                                      _controllerPassword.text == "admin") {
                                    _usernameValidation = true;
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return HomePage(
                                              username: _controllerUsername
                                                  .value.text);
                                        },
                                      ),
                                    );
                                  } else if (_controllerUsername.text !=
                                          "admin" &&
                                      _controllerPassword.text != "admin") {
                                    _usernameValidation = false;
                                    _passwordValidation = false;
                                  } else if (_controllerUsername.text !=
                                      "admin") {
                                    _usernameValidation = false;
                                    _passwordValidation = true;
                                  } else if (_controllerPassword.text !=
                                      "admin") {
                                    _usernameValidation = true;
                                    _passwordValidation = false;
                                  }
                                });
                                print('username: $_usernameValidation');
                                print('password: $_passwordValidation');
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff303030),
                                minimumSize: const Size.fromHeight(50),
                                shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                ),
                              ),
                              child: Text(
                                'LOGIN',
                                style: TextStyle(
                                  color: Color(0xffFAFAFA),
                                  fontFamily: 'Quicksand',
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controllerUsername.dispose();
    _controllerPassword.dispose();
    super.dispose();
  }
}
