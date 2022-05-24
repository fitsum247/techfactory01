import 'package:flutter/material.dart';

import '../SupportWidgets/EditTextFileds/EmailText.dart';
import '../SupportWidgets/EditTextFileds/PasswordText.dart';
import '../SupportWidgets/suportwidgets.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  late TextEditingController _emailcontroller;
  late TextEditingController _passwordcontroller;



  @override
  void initState(){
    _emailcontroller = TextEditingController();
    _passwordcontroller = TextEditingController();
    super.initState();
  }


  @override
  void dispose(){
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    super.dispose();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            BlueWhiteContainer(context: context, setlogo: true),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  Expanded(
                    flex: 20,
                    child: SizedBox(
                    ),
                  ),
                  Expanded(
                    flex: 70,
                    child:  Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                      child: roundedwhitecard(child: Container(
                        child: ListView(
                          children: [
                          SizedBox(height: 20,),
                          Center(child: Text('Welcome',
                            style: TextStyle(
                            color: Colors.blue[500],
                            fontWeight: FontWeight.bold,
                             fontSize: 18
                          ),),),
                           Padding(
                             padding: const EdgeInsets.only(
                               left: 20,
                               right: 20,
                               top: 5,
                               bottom: 5
                             ),
                             child: Text('Please sign in with your credintials, '
                                 'or login with Facebook or Google', maxLines: null,),
                           ),


                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: EmailText(controller: _emailcontroller, hinttext: 'email',),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: PasswordText(hinttext: 'password', controller: _passwordcontroller,),
                            ),


                           Padding(
                             padding: const EdgeInsets.only(
                               left: 15,
                               right: 15,
                               top: 5,
                               bottom: 5
                             ),
                             child: ElevatedButton(onPressed: (){},
                                 child: Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Text('Login'),
                                 ),
                             style: ElevatedButton.styleFrom(
                               primary: Colors.black12,
                               shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(25),
                               ),
                             ),
                             ),
                           ),

                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15,
                                  right: 15,
                                  top: 5,
                                  bottom: 5
                              ),
                              child: ElevatedButton(onPressed: (){},
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height:20,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset("assets/images/googleicon.png"),
                                        SizedBox(width: 10,),
                                        Text(' Continue with Google',
                                         style: TextStyle(
                                           color: Colors.black
                                         ),

                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15,
                                  right: 15,
                                  top: 5,
                                  bottom: 5
                              ),
                              child: ElevatedButton(onPressed: (){},
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height:20,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset("assets/images/fbicon.png"),
                                        SizedBox(width: 10,),
                                        Text(' Continue with Facebook'),
                                      ],
                                    ),
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.blue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),

                      )),
                    ),
                  ),
                  Expanded(
                    flex: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue,),
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        ),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Text("Don't have an account?"),
                           TextButton(onPressed: (){},
                               child: Text('Sign up', style: TextStyle(
                                 color: Colors.blue,
                                 fontWeight: FontWeight.bold,
                                 fontSize: 18
                               ),))
                          ],
                        ),
                      ),
                    )
                  ),
                ],
              ),

            ),
          ],
        )
    );
  }
}
