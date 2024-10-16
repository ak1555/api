// import 'dart:convert';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
import 'package:image_picker/image_picker.dart';
class AddFile extends StatefulWidget {
  const AddFile({super.key});

  @override
  State<AddFile> createState() => _AddFileState();
}

class _AddFileState extends State<AddFile> {
TextEditingController c1= TextEditingController();
TextEditingController c3= TextEditingController();
TextEditingController c4= TextEditingController();
TextEditingController c5= TextEditingController();
TextEditingController c7= TextEditingController();

final List<String>ls=[
  "O+",
  "O-",
  "A+",
  "A-",
  "B+",
  "B-",
  "AB+",
  "AB-",
  "A+",
  "A-",
  "B+",
  "B-",
];
 String? seletedgroup;


ImagePicker _picker=ImagePicker();
File? _image;
bool img=false;

bool chkbx=false;
List sharedprefslist=[];
Map<dynamic,dynamic> mp={};

void save() async{
                mp={
                        "name":c1.text,
                        "phone":c3.text,
                        "place":c4.text,
                        "blood_group":seletedgroup.toString(),
                        "dob":c5.text,
                        };
                        var res=await http.post(
                          Uri.parse('http://jandk.tech/api/adddonor'),
                          headers: {
                            "Content-Type":"application/json"
                          },
                          body: json.encode(mp)
                          );
                          print(res.statusCode);
                        
}
// void pickimage() async{
// final pickedfile=await _picker.pickImage(source: ImageSource.gallery);
// setState(() {
//   _image=File(pickedfile!.path);
//   img=true;
// });
// img=true;
// }

// Future< void >savedata()async{
//   final prefs=await SharedPreferences.getInstance();
//   final res=prefs.getString("bloodbank");

//   final bytes=await _image!.readAsBytes();
//   final base64img=base64Encode(bytes);
//   if(res!=null){
//     sharedprefslist=json.decode(res);
    
//      try{
//  mp={
//         "name":c1.text,
//         "email":c2.text,
//         "phone":c3.text,
//         "place":c4.text,
//         "dob":c5.text,
//         "group":seletedgroup.toString(),
//         "image":base64img
//       };
//      }catch(e){
//  mp={
//         "name":c1.text,
//         "email":c2.text,
//         "phone":c3.text,
//         "place":c4.text,
//         "dob":c5.text,
//          "group":seletedgroup.toString(),
//         "image":null
//       };
//      }
//       sharedprefslist.add(mp);
//       prefs.setString("bloodbank", jsonEncode(sharedprefslist));
    
//   }else{
//      try{
//  mp={
//         "name":c1.text,
//         "email":c2.text,
//         "phone":c3.text,
//         "place":c4.text,
//         "dob":c5.text,
//          "group":seletedgroup.toString(),
//         "image":base64img
//       };
//      }catch(e){
//  mp={
//         "name":c1.text,
//         "email":c2.text,
//         "phone":c3.text,
//         "place":c4.text,
//         "dob":c5.text,
//          "group":seletedgroup.toString(),
//         "image":null
//       };
//      }
//       sharedprefslist.add(mp);
//       prefs.setString("bloodbank", jsonEncode(sharedprefslist));
    
//   }
  
// }







  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        // color: Colors.cyan,
        child:ListView(
          children: [
            Container(
              height: 220,
              color: const Color.fromARGB(255, 172, 13, 13),
              width: double.infinity,
              child: Column(
                children: [
                  // =========================================stack start
                    Stack(
                    clipBehavior: Clip.none,
                    children: [
                             Container(
                    height: 110,
                    width: double.infinity,
                   decoration: BoxDecoration(
                boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 224, 86, 86),
                        blurRadius: 10,
                        spreadRadius: 1,
                        blurStyle: BlurStyle.inner,
                      )
                    ],
                    color: Colors.red,
                    borderRadius: BorderRadiusDirectional.vertical(bottom: Radius.circular(100))
                   ),child: ClipRRect(borderRadius: BorderRadius.vertical(bottom: Radius.circular(50),),
                    child: Image.asset("./images/redimg.jpeg",fit: BoxFit.fill,)),
                  ),

                      Positioned(top: 40,left: 135,
                        child:Container(height: 140,width: 140,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),
                      color: Colors.grey[400]
                      ),
                      child: GestureDetector(
                        // onTap: pickimage,
                       child: img?ClipOval(child:  Image.file(_image!,fit: BoxFit.cover,)):IconButton(onPressed: () {
                        // pickimage();
                      }, icon: Icon(Icons.perm_identity_outlined,size: 125,)),
                      )
                      )),
                      
                    ],
                  ),
                  // =========================================stack end

                 
                
                ],
              ),
            ),
            // ================================================ padding containers start
             Container(
                    height: 50,
                    // width: double.infinity,
                    margin: EdgeInsets.only(left: 20),
                    alignment: Alignment.centerLeft,
                    child: Text("Name"),
                  ),
                   Container(
                    height: 50,
                    // width: double.infinity,
                    margin: EdgeInsets.only(left: 20,right: 20),
                    padding: EdgeInsets.only(left: 15,right: 15),
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(border: Border.all(width: .1),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10,
                        spreadRadius: 1,
                        blurStyle: BlurStyle.outer,
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),),
                    child: Expanded(child: Expanded(child: TextField(
                      controller: c1,
                       keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        hintText: "FullName",
                        border: InputBorder.none,
                        hoverColor: Colors.red
                      ),
                    ))),
                  ),
                  // ---------------------------------- fullname ^
                  //  Container(
                  //   height: 50,
                  //   // width: double.infinity,
                  //   margin: EdgeInsets.only(left: 20),
                  //   alignment: Alignment.centerLeft,
                  //   child: Text("Email"),
                  // ),
                  //  Container(
                  //   height: 50,
                  //   // width: double.infinity,
                  //   margin: EdgeInsets.only(left: 20,right: 20),
                  //   padding: EdgeInsets.only(left: 15,right: 15),
                  //   alignment: Alignment.centerLeft,
                  //   decoration: BoxDecoration(border: Border.all(width: .1),
                  //    boxShadow: [
                  //     BoxShadow(
                  //       color: Colors.grey,
                  //       blurRadius: 10,
                  //       spreadRadius: 1,
                  //       blurStyle: BlurStyle.outer,
                  //     )
                  //   ],
                  //   borderRadius: BorderRadius.circular(10),),
                  //   child: Expanded(child: Expanded(child: TextField(
                  //     controller: c2,
                  //     keyboardType: TextInputType.emailAddress,
                  //     decoration: InputDecoration(
                  //       hintText: "Email",
                  //       border: InputBorder.none,
                  //       hoverColor: Colors.red
                  //     ),
                  //   ))),
                  // ),
                  // ---------------------------------- email ^
                   Container(
                    height: 50,
                    // width: double.infinity,
                    margin: EdgeInsets.only(left: 20),
                    alignment: Alignment.centerLeft,
                    child: Text("Phone"),
                  ),
                   Container(
                    height: 50,
                    // width: double.infinity,
                    margin: EdgeInsets.only(left: 20,right: 20),
                    padding: EdgeInsets.only(left: 15,right: 15),
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(border: Border.all(width: .1),
                     boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10,
                        spreadRadius: 1,
                        blurStyle: BlurStyle.outer,
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),),
                    child: Expanded(child: Expanded(child: TextField(
                      controller: c3,
                       keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "ContactNumber",
                        border: InputBorder.none,
                        hoverColor: Colors.red
                      ),
                    ))),
                  ),
                   // ---------------------------------- contact number ^
                    Container(
                    height: 50,
                    // width: double.infinity,
                    margin: EdgeInsets.only(left: 20),
                    alignment: Alignment.centerLeft,
                    child: Text("Place"),
                  ),
                   Container(
                    height: 50,
                    // width: double.infinity,
                    margin: EdgeInsets.only(left: 20,right: 20),
                    padding: EdgeInsets.only(left: 15,right: 15),
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(border: Border.all(width: .1),
                     boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10,
                        spreadRadius: 1,
                        blurStyle: BlurStyle.outer,
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),),
                    child: Expanded(child: Expanded(child: TextField(
                      controller: c4,
                       keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: "Place,District",
                        border: InputBorder.none,
                        hoverColor: Colors.red
                      ),
                    ))),
                  ),
                   // ---------------------------------- place ^
                
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                                  height: 50,
                                                  width: 130,
                                                  margin: EdgeInsets.only(left: 20),
                                                  alignment: Alignment.centerLeft,
                                                  child: Text("Blood Group"),
                                                ),
                                                 Container(
                                                  height: 50,
                                                  width: 130,
                                                  margin: EdgeInsets.only(left: 20,right: 20),
                                                  padding: EdgeInsets.only(left: 15,right: 15),
                                                  alignment: Alignment.centerLeft,
                                                  decoration: BoxDecoration(border: Border.all(width: .1),
                                                   boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 10,
                                spreadRadius: 0,
                                blurStyle: BlurStyle.outer,
                              )
                                                  ],
                                                  borderRadius: BorderRadius.circular(10),),
                                                  child:
                               Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Text(seletedgroup==null?'Group':'$seletedgroup'),
                                  //  SizedBox(width: 90,),
                                   DropdownButton(
                                    underline: Container(height: 0,),
                                    items: ls.map(
                                    (String bloodgrp){
                                      return DropdownMenuItem(
                                        value: bloodgrp,
                                        child: Text(bloodgrp),);
                                    }
                                   ).toList(),
                                   onChanged: (value) {
                                    setState(() {
                                      seletedgroup=value;
                                    });
                                   },),
                                  
                                 ],
                               )
                              ,
                                                ),
                            ],
                          ),

 Column(
   children: [
     Container(
                        height: 50,
                        width: 150,
                        margin: EdgeInsets.only(left: 20),
                        alignment: Alignment.centerLeft,
                        child: Text("Date of Birth"),
                      ),
                       Container(
                        height: 50,
                        width: 150,
                        margin: EdgeInsets.only(left: 20,right: 20),
                        padding: EdgeInsets.only(left: 15,right: 15),
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(border: Border.all(width: .1),
                         boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10,
                            spreadRadius: 1,
                            blurStyle: BlurStyle.outer,
                          )
                        ],
                        borderRadius: BorderRadius.circular(10),),
                        child: Expanded(child: Expanded(child: TextField(
                          controller: c5,
                           keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: "dd-mm-yy",
                            border: InputBorder.none,
                            hoverColor: Colors.red
                          ),
                        ))),
                      ),
   ],
 ),

                        ],
                      ),
// =========================================>>
SizedBox(height: 3),
Row(
  children: [
    // Column(
    //    children: [
    //      Container(
    //                         height: 40,
    //                         width: 130,
    //                         margin: EdgeInsets.only(left: 20),
    //                         alignment: Alignment.centerLeft,
    //                         child: Text("Weight"),
    //                       ),
    //                        Container(
    //                         height: 50,
    //                         width: 130,
    //                         margin: EdgeInsets.only(left: 20,right: 20),
    //                         padding: EdgeInsets.only(left: 15,right: 15),
    //                         alignment: Alignment.centerLeft,
    //                         decoration: BoxDecoration(border: Border.all(width: .1),
    //                          boxShadow: [
    //                           BoxShadow(
    //                             color: Colors.grey,
    //                             blurRadius: 10,
    //                             spreadRadius: 1,
    //                             blurStyle: BlurStyle.outer,
    //                           )
    //                         ],
    //                         borderRadius: BorderRadius.circular(10),),
    //                         child: Expanded(child: Expanded(child: TextField(
    //                           controller: c6,
    //                            keyboardType: TextInputType.number,
    //                           decoration: InputDecoration(
    //                             hintText: "Weight",
    //                             border: InputBorder.none,
    //                             hoverColor: Colors.red
    //                           ),
    //                         ))),
    //                       ),
    //    ],
    //  ),
     Column(
       children: [
         Container(
                            height: 40,
                            width: 130,
                            margin: EdgeInsets.only(left: 20),
                            alignment: Alignment.centerLeft,
                            child: Text("Age"),
                          ),
                           Container(
                            height: 50,
                            width: 130,
                            margin: EdgeInsets.only(left: 20,right: 20),
                            padding: EdgeInsets.only(left: 15,right: 15),
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(border: Border.all(width: .1),
                             boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 10,
                                spreadRadius: 1,
                                blurStyle: BlurStyle.outer,
                              )
                            ],
                            borderRadius: BorderRadius.circular(10),),
                            child: Expanded(child: Expanded(child: TextField(
                              controller: c7,
                               keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                hintText: "age",
                                border: InputBorder.none,
                                hoverColor: Colors.red
                              ),
                            ))),
                          ),
       ],
     ),
  ],
),



                    // ---------------------------------- blood group ^
                  //       Container(
                  //   height: 50,
                  //   // width: double.infinity,
                  //   margin: EdgeInsets.only(left: 20),
                  //   alignment: Alignment.centerLeft,
                  //   child: Text("Location"),
                  // ),
                  //  Container(
                  //   height: 50,
                  //   // width: double.infinity,
                  //   margin: EdgeInsets.only(left: 20,right: 20),
                  //   padding: EdgeInsets.only(left: 15,right: 15),
                  //   alignment: Alignment.centerLeft,
                  //   decoration: BoxDecoration(border: Border.all(width: .1),
                  //    boxShadow: [
                  //     BoxShadow(
                  //       color: Colors.grey,
                  //       blurRadius: 10,
                  //       spreadRadius: 1,
                  //       blurStyle: BlurStyle.outer,
                  //     )
                  //   ],
                  //   borderRadius: BorderRadius.circular(10),),
                  //   child: Expanded(child: Expanded(child: TextField(
                  //     controller: c8,
                  //      keyboardType: TextInputType.text,
                  //     decoration: InputDecoration(
                  //       hintText: "location",
                  //       border: InputBorder.none,
                  //       hoverColor: Colors.red
                  //     ),
                  //   ))),
                  // ),
                    // ---------------------------------- DOB ^
                    // =================================== checkbox v
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        SizedBox(width: 5,),
                        Checkbox(value:chkbx , onChanged: (value) {
                          setState(() {
                            chkbx=true;
                          });
                        },),
                        Text("I Accept the Terms & conditions ")
                      ],
                    ),
                    SizedBox(height: 25,),
                    Container(
                      child: Center(
                        child: TextButton(
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.only(left: 55,right: 55,top: 6,bottom: 6),
                            backgroundColor: const Color.fromARGB(255, 172, 13, 13),
                            foregroundColor: Colors.white,
                            side: BorderSide(width: 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),elevation: 10,overlayColor: Colors.blue,

                            
                          ),
                          onPressed: () {
                            int agee=int.parse(c7.text);
                              if(chkbx==true){
                              if(agee>=18){
                              
                                // if(_image!=null){
                                  // if(weii>=45){
                                    if(c1.text!=null&&c3.text!=null){
                                        // savedata();
                                        save();

                                        Navigator.pop(context);
                                    }else{
                                      showDialog(context: context, builder: (context) {
                                  return AlertDialog(
                                    title: Text("OOPS!!!"),
                                    content: Text("All Input Fields Must Want to Fill...."),
                                    actions: [
                                      TextButton(onPressed: () {
                                        Navigator.pop(context);
                                      }, child: Text("OK"))
                                    ],
                                  );
                                },);
                                    }
                                //   }else{
                                //      showDialog(context: context, builder: (context) {
                                //   return AlertDialog(
                                //     title: Text("OOPS!!!"),
                                //     content: Text("Your Weight Is Too LESS...."),
                                //     actions: [
                                //       TextButton(onPressed: () {
                                //         Navigator.pop(context);
                                //       }, child: Text("OK"))
                                //     ],
                                //   );
                                // },);
                                //   }
                                // }else{
                                //   showDialog(context: context, builder: (context) {
                                //   return AlertDialog(
                                //     title: Text("SORRY!!!"),
                                //     content: Text("Image Is Mandotory...."),
                                //     actions: [
                                //       TextButton(onPressed: () {
                                //         Navigator.pop(context);
                                //       }, child: Text("OK"))
                                //     ],
                                //   );
                                // },);
                                // }

                              }else{
                                showDialog(context: context, builder: (context) {
                                  return AlertDialog(
                                    title: Text("OOPS!!!"),
                                    content: Text("You Must Above 18.."),
                                    actions: [
                                      TextButton(onPressed: () {
                                        Navigator.pop(context);
                                      }, child: Text("OK"))
                                    ],
                                  );
                                },);
                              }}
                              else{
                                 showDialog(context: context, builder: (context) {
                                  return AlertDialog(
                                    title: Text("OOPS!!!"),
                                    content: Text("You Must Agree the Terms & Conditions..."),
                                    actions: [
                                      TextButton(onPressed: () {
                                        Navigator.pop(context);
                                      }, child: Text("OK"))
                                    ],
                                  );
                                },);
                              }


                          // savedata();
                        }, child: Text("  SUBMIT  ")),
                      ),
                    ),
                    SizedBox(height: 25,),

                    // ================================================ padding containers end
          ],
        )
      ),
    );
  }
}