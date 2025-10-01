import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_project_1/login_screen.dart';
import 'package:login_project_1/my_class.dart';
class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xffd3ffcc),
      body: Column(
        children: [
          SizedBox(
            height: 15,
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
            height: 10,
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
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>LoginScreen()));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left:10),
                      height: 30,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text("Login",style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ),
                  // SizedBox(width: 5,),
                 Container(
                   margin: const EdgeInsets.only(left:10),
                      height: 30,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Color(0xffd3ffcc),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text("Sign up",style: TextStyle(color: Colors.black87),),
                      ),
                    ),
                ],
              ),

            ),
          ),
          SizedBox(
            height: 15,
          ),
          MyClass(icon: Icons.email,hint: 'Enter Your Email',),
          SizedBox(
            height: 5,
          ),
          MyClass(icon: Icons.person,hint: 'Username',),
          SizedBox(
            height: 5,
          ),
          MyClass(icon: Icons.lock,hint: 'Password',),
          SizedBox(
            height: 5,
          ),
          MyClass(icon: FontAwesomeIcons.globe,hint: 'Country',),
          SizedBox(
            height: 5,
          ),


          Center(
            child: Text("Forgot Password?",style: TextStyle(color: Colors.black87),
            ),
          ),
          SizedBox(
            height: 8,
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
                child: Text("Sign up",style: TextStyle(color: Colors.white),),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text("Or Sign up with",style: TextStyle(color: Colors.black87),),
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
          SizedBox(height: 30,),
          Center(
            child: Text("Terms & Condition | Privacy Policy"),
          )

        ],
      ),
    );
  }
}
