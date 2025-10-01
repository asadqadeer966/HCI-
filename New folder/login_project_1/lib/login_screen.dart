import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_project_1/my_class.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_project_1/signup_screen.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd3ffcc),
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          Center(
            child: Transform.rotate(angle: -0.1,
            child: Text("F",style: TextStyle(fontSize: 60,fontWeight:FontWeight.bold,color: Color(0xff282930)),))
          ),
              Center(
                  child: Transform.rotate(angle: -0.1,
                      child: Text("L",style: TextStyle(fontSize: 60,fontWeight:FontWeight.bold,color: Color(0xff282930)),))
              ),
              Center(
                  child: Transform.rotate(angle: 0.1,
                      child: Text("E",style: TextStyle(fontSize: 60,fontWeight:FontWeight.bold,color: Color(0xff282930)),))
              ),
              Center(
                  child: Transform.rotate(angle: 0.2,
                      child: Text("A",style: TextStyle(fontSize: 60,fontWeight:FontWeight.bold,color: Color(0xff282930)),))
              ),
          ]
          ),
          SizedBox(
            height: 20,
          ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 160),
        child: Container(
          height: 40,
          decoration: BoxDecoration(
            color: Color(0xff282930),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
            Container(
              margin: const EdgeInsets.only(left:10),
            height: 30,
            width: 70,
            decoration: BoxDecoration(
              color: Color(0xffd3ffcc),
              borderRadius: BorderRadius.circular(15),
            ),
              child: Center(
                child: Text("Login",style: TextStyle(color: Colors.black87),),
              ),
            ),
              // SizedBox(width: 5,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>SignupScreen()));
                },

                child: Container(
                 // margin: const EdgeInsets.only(left:20),

                  height: 20,
                  width: 70,
                  decoration: BoxDecoration(
                  //  color: Color(0xffd3ffcc),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text("Sign up",style: TextStyle(color: Colors.white),),
                  ),
                ),
              ),

            ],
          ),

        ),
      ),
          SizedBox(
            height: 20,
          ),
      MyClass(icon: Icons.email,hint: 'Enter Your Email',),
          SizedBox(
            height: 5,
          ),
          MyClass(icon: Icons.lock,hint: 'Password',),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text("Forgot Password?",style: TextStyle(color: Colors.black87),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 200),
            child: Container(
              height: 30,
              decoration: BoxDecoration(
                color: Color(0xff282930),
                borderRadius: BorderRadius.circular(20),
              ),
            child: Center(
              child: Text("Login",style: TextStyle(color: Colors.white),),
            ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Center(
            child: Text("Or login with",style: TextStyle(color: Colors.black87),),
          ),
          SizedBox(
            height: 10,
          ),
          Center(child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Color(0xff282930),
              borderRadius: BorderRadius.circular(5),
            ),
              child: Icon(Icons.facebook,color: Colors.white,size: 30,),
            ),
              SizedBox(width: 10,),
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: Color(0xff282930),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Icon(Icons.apple,color: Colors.white,size: 30,),
              ),
              SizedBox(width: 10,),
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: Color(0xff282930),
                  borderRadius: BorderRadius.circular(5),
                ),
                child:Icon(FontAwesomeIcons.google,color: Colors.white,size: 24,),
              ),
              
            ],
          )
          ),
          SizedBox(height: 45,),
          Center(
            child: Text("Terms & Condition | Privacy Policy"),
          )
          
        ],
      ),
    );
  }
}
