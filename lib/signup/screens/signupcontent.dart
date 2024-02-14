import 'package:exercice/signin/screens/signin.dart';
import 'package:flutter/material.dart';

class SignUpContent extends StatelessWidget {
  final String userName;

  SignUpContent({required this.userName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome, $userName!'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          SizedBox(height:120 ,),
          Center(
            child: Text('This is your signed-up content, you can login '),

          ),
          SizedBox(height:20 ,),


          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Signinscreen(),
                ),
              );
            },
            child: Container(
              alignment: Alignment.center,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color(0xff31D281),
                    Color(0xff31D281),
                  ],
                ),
              ),
              child: Padding (
                padding: EdgeInsets.all(12.0),
                child: Text('Sign in',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
              ),
            ),
          ),
        ],
      ),

    );
  }
}
