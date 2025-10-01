import 'package:flutter/material.dart';
class MyClass extends StatelessWidget {
  String hint;
  IconData icon;
  MyClass({required this.hint,required this.icon,super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: const EdgeInsets.symmetric(horizontal:101),
            child: TextFormField(
              //  keyboardType: TextInputType.emailAddress,
              cursorColor: Colors.black,
              enabled: true,
              decoration: InputDecoration(
                  prefixIcon: Icon(icon,color: Colors.black87,),
//suffixIcon: Icon(Icons.access_time_filled),
                  hintText: hint,
                  hintStyle: TextStyle(fontSize: 13,color: Colors.grey),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black,width: 1),
                  ),

                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.green,width: 1)
                  )
              ),
            )
        )


      ],
    );
  }
}
