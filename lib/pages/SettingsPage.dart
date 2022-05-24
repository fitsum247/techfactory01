import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';

import '../SupportWidgets/suportwidgets.dart';
class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            BlueWhiteContainer(context: context, setlogo: false),
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
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ListView(
                            children: [
                              profileforsettingpage(phonenumber: '+01207-555-0119',
                                  email: 'dobble.baker@example.com',
                                  imagelink: '',
                                  name: 'Darel Steward'),
                              Divider(),
                              SettingSelections(text: 'My membership', onpressed: () {  }),
                              Divider(),
                              SettingSelections(text: 'Payment Methods', onpressed: () {  }),
                              Divider(),
                              SettingSelections(text: 'Favorite Locations', onpressed: () {  }),
                              Divider(),
                              SettingSelections(text: 'Terms & Conditions', onpressed: () {  }),
                              Divider(),
                              SettingSelections(text: 'Privacy policy', onpressed: () {  }),
                              Divider(),
                              SettingSelections(text: 'Support', onpressed: () {  }),
                              Divider(),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15,
                                    right: 15,
                                    top: 5,
                                    bottom: 5
                                ),
                                child: ElevatedButton(onPressed: () async{

                                 await    completedialog();
                                },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        SizedBox(width: 10,),
                                        Text(' Sign out', style: TextStyle(
                                            color: Colors.white
                                        ),),
                                      ],
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.red,
                                    side: BorderSide(width: 1.0, color: Colors.red,),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                      )),
                    ),
                  ),
                  Expanded(
                    flex: 10,
                    child: SizedBox(
                    ),
                  ),
                ],
              ),

            ),
          ],
        )
    );
  }


  Widget SettingSelections({required String text, required VoidCallback onpressed})=>GestureDetector(
    onTap: onpressed,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text),
        Icon(Icons.arrow_forward_ios)

      ],
    ),
  );


  Widget profileforsettingpage({required String email, required String name, required String imagelink,
   required String phonenumber
  })=> Row(
   children: [

   Expanded(
       flex: 2,
       child: Container(
           decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                      color: Colors.black,
                      shape: BoxShape.circle,
                  ),
         
         child: Image.asset('assets/images/Logo.png'),

       )),

   Expanded(
       flex: 5,
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
     children: [
          Text(name, maxLines: 1,
            overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.blue,
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
          ),

       Text(email, maxLines: 1,
         overflow: TextOverflow.ellipsis,
       ),

       Text(phonenumber, maxLines: 1,
         overflow: TextOverflow.ellipsis,
       ),

     ],
   ))  ,

     Expanded(
         flex: 1,
         child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
        Icon(Icons.arrow_forward_ios),
       ],
     ))  ,



   ],
  );






  Future completedialog()=>showDialog(
    context: context, builder:(context)=>
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.black.withOpacity(0.2),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
                height: 320,
                child: roundedwhitecard(
                  child: Scaffold(
                      body: Container(
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.check_circle, color: Colors.blue,size: 100,),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('Your data has been updated successfully',
                                maxLines: null,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15,
                                  right: 15,
                                  top: 5,
                                  bottom: 5
                              ),
                              child: ElevatedButton(onPressed: (){
                                Navigator.of(context).pop();
                              },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child:  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(' Continue', style: TextStyle(
                                        color: Colors.white,
                                      ),),
                                    ],
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
                )),
          ),
        ),
      ),
  );


}

