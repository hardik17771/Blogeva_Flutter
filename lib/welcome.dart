import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:blog_app_project/signup_page.dart';
class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
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
        child: Padding(
          padding:  EdgeInsets.all(80.0),
          child: Column(
            children:  [


              Text(('Blogeva'),
              style: GoogleFonts.lora(
                fontSize: 48,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
              ),),
              const SizedBox(
                height: 30,
              ),
              const Divider(
                height: 20,
                thickness: 2,
                indent: 5,
                endIndent: 5,

                color: Colors.black26,
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height / 10,
              ),
              Column(
                 children:  [Text(
                  "Great stories for great people.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.habibi(
                    fontWeight: FontWeight.w600,
                    fontSize: 26,
                    letterSpacing: 2,
                  ),
                ),
                    SizedBox(
                     height: 40,
                   ),
                   boxContainer("images/png-clipart-google-logo-google-search-advertising-google-company-text-thumbnail.png", "Sign up with Google", null),
                   const SizedBox(
                     height: 20,
                   ),
                   boxContainer("images/download (1).png", "Sign up with Facebook", null),
                   const SizedBox(
                     height: 20,
                   ),
                   boxContainer(
                     "images/561127.png",
                     "Sign up with Email",
                     onEmailClick(),
                   ),
                   const SizedBox(
                     height: 15,
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children:   [
                       const Text(
                         "Already have an account?",
                         style: TextStyle(
                           color: Colors.black38,
                           fontSize: 15,
                         ),
                       ),
                       const SizedBox(
                         width: 10,
                       ),

                       ElevatedButton(
                         onPressed: () {

                           // Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SignUpPage()));

                         },

                         style:
                         ElevatedButton.styleFrom(
                           side: const BorderSide(width:1, color:Colors.transparent),
                           backgroundColor:   Colors.transparent,

                           // shape: RoundedRectangleBorder(
                           //   borderRadius: BorderRadius.circular(200),
                           // ),
                         ),
                         child: const Text('Log In',

                           style: TextStyle(
                             color: Colors.black38,
                             fontSize: 10,
                           ),),

                       ),

                       ],

                       ),


    ],
              ),
            ],
          ),
        ),
        ),
    );
  }
  onEmailClick(){
    Future.delayed(Duration.zero, () {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => SignUpPage()),
              (route) => false);
    });
}
  Widget boxContainer(String path, String text, onClick)
  {

        return GestureDetector(
         child: InkWell(
        onTap: onClick,
        child: Container(


   height: 60,
        width: MediaQuery.of(context).size.width-140,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
         children:  [
           Image.asset(
             path,
             height: 25,
               width: 25,
           ),
           const SizedBox(width: 15),
           Text(
            text,
             style: TextStyle(fontSize: 16, color: Colors.black87),
           ),

         ],
        ),
        ),
      ),
    ),
         )
        );
  }


}
