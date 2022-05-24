import 'package:flutter/material.dart';
class EmailText extends StatelessWidget {
  TextEditingController controller;
  String hinttext;
  EmailText ({Key? key, required this.controller, required this.hinttext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   TextFormField(
            controller: controller,
            cursorColor: Colors.blue,
            maxLines: null,
            validator: (val)=>val!.isNotEmpty?null:'',
            style: TextStyle(

                fontSize: 21,
              color: Colors.black
            ),
            decoration: InputDecoration(
              hintText: hinttext,
              fillColor: Colors.white,
              filled: true,
              focusedBorder:OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.black, width: 2.0),
                borderRadius: BorderRadius.circular(25.0),
              ),
            ),

     );
  }
}
