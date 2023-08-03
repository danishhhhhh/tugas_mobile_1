import 'package:flutter/material.dart';
import 'package:login_page/login_page.dart';

class HomePage extends StatefulWidget {
  final String username;
  const HomePage({super.key, required this.username});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff303030),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hai, ${widget.username}',
                style: TextStyle(
                  color: Color(0xffFAFAFA),
                  fontFamily: 'Quicksand',
                  fontSize: 20
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, bottom: 40, top: 20),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: 300,
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return LoginPage();
                      }));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff1B1C1E),
                      minimumSize: const Size.fromHeight(50),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                    ),
                    child: Text(
                      'LOG OUT',
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
    );
  }
}
