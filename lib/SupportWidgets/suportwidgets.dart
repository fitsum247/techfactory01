import 'package:flutter/material.dart';
/*
This are the custom widgets that we may use frequently,
 */

/*
The following widget is the background container for the login, and profile page,
note:  we can also do this with stack's, this method is selected for simpliscity
and ease of use in multiple places
 */





/*
                     REQUIRED Parameters

- in the profile page, there is no logo, the set logo option is for such conditions
if log is required it will be true, else false,

- to force the container to match the width and hight of the space, the buildcontext is
to get the context, from the design all the place this widget is used is in full size
mode

 */





Widget BlueWhiteContainer({required bool setlogo, required BuildContext context
})=>Container(
  height: MediaQuery.of(context).size.height,
  width: MediaQuery.of(context).size.width,
  child: Column(
    children: [
      Expanded(
        flex: 1,
          child: Container(
   color: Colors.blue.shade700,
      child: setlogo==true? Column(
        children: [
          Expanded(
            flex:1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                  child: Container(
                      width: MediaQuery.of(context).size.width*0.6,
                      child: Image.asset("assets/images/Logo.png")),
                ),
              ],
            ),
          ),
        Expanded(
            flex: 1,
            child: SizedBox())
        ],
      ):
            Container(),

      )),


      Expanded(
          flex: 2,
          child: Container(
          color: Colors.white,
      )),

    ],
  ),
);

/*
Note: when we use the logo to be true, we have the dedicated space of about 17% of the
screen, initally 1/3 , 33% then half of that around 17 %,
so when we set the card that will be seen as floating above, we keep that 17% at the top
not to hide the logo
 */






/*
the rounded white card/container that is used for form and selection menu,
for this we can use  container with box shadow to give that shadow effect,
or card,

 */





Widget roundedwhitecard({required Widget child})=> Card(
  shadowColor: Colors.black,
  elevation: 4,
  clipBehavior: Clip.antiAlias,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(24),
  ),

  child: child,
);


