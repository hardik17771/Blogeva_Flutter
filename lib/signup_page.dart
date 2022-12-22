import "package:flutter/material.dart";

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.white, Color(0xFF6ED83E)],
              begin: FractionalOffset(0.0, 0.9),
              end: FractionalOffset(0.0, 0.9),
              stops: [0.0, 0.9],
              tileMode: TileMode.repeated
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(("Signup with email"),
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,

            ),),
            SizedBox(
              height: 20,
            )
          ],
        ),

      ),
    );

  }
  Widget usernameKaText(String label)
  {
    return Column(
      children: [
        Text(label),
        TextFormField(
          decoration: InputDecoration(

          ),
        )
      ],
    );
  }
}
