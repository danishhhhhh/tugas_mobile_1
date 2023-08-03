import 'package:flutter/material.dart';
import 'package:login_page/login_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff303030),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
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
                ConstrainedBox(
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
                          padding: const EdgeInsets.only(top: 50, bottom: 20),
                          child: const Text(
                            'Sign Up',
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
                            child: TextField(
                              style: TextStyle(
                                color: Color(0xffFAFAFA),
                                fontSize: 14,
                                fontFamily: 'Quicksand',
                                height: 1.1,
                              ),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                  borderSide: BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                                filled: true,
                                fillColor: Color(0xff303030),
                                hintText: 'Fullname',
                                hintStyle: TextStyle(
                                  color: Color(0xff9A9A9A),
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
                            child: TextField(
                              obscureText: true,
                              style: TextStyle(
                                color: Color(0xffFAFAFA),
                                fontSize: 14,
                                fontFamily: 'Quicksand',
                                height: 1.1,
                              ),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                  borderSide: BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                                filled: true,
                                fillColor: Color(0xff303030),
                                hintText: 'Username',
                                hintStyle: TextStyle(
                                  color: Color(0xff9A9A9A),
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
                            child: TextField(
                              obscureText: true,
                              style: TextStyle(
                                color: Color(0xffFAFAFA),
                                fontSize: 14,
                                fontFamily: 'Quicksand',
                                height: 1.1,
                              ),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                  borderSide: BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                                filled: true,
                                fillColor: Color(0xff303030),
                                hintText: 'Email',
                                hintStyle: TextStyle(
                                  color: Color(0xff9A9A9A),
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
                            child: TextField(
                              obscureText: true,
                              style: TextStyle(
                                color: Color(0xffFAFAFA),
                                fontSize: 14,
                                fontFamily: 'Quicksand',
                                height: 1.1,
                              ),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                  borderSide: BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                                filled: true,
                                fillColor: Color(0xff303030),
                                hintText: 'Password',
                                hintStyle: TextStyle(
                                  color: Color(0xff9A9A9A),
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
                            child: TextField(
                              obscureText: true,
                              style: TextStyle(
                                color: Color(0xffFAFAFA),
                                fontSize: 14,
                                fontFamily: 'Quicksand',
                                height: 1.1,
                              ),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                  borderSide: BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                                filled: true,
                                fillColor: Color(0xff303030),
                                hintText: 'Confirm Password',
                                hintStyle: TextStyle(
                                  color: Color(0xff9A9A9A),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Already Have an Account?",
                                style: TextStyle(
                                    color: Colors.white, fontFamily: 'Quicksand'),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context){
                                      return LoginPage();
                                    }));
                                  },
                                  child: Text(
                                    'Log In',
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
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, bottom: 40, top: 20),
                          child: ConstrainedBox(
                            constraints: BoxConstraints(
                              maxWidth: 500,
                            ),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff303030),
                                minimumSize: const Size.fromHeight(50),
                                shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                ),
                              ),
                              child: Text(
                                'SIGN UP',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
