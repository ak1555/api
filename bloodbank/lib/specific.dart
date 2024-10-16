// import 'dart:convert';
// import 'dart:typed_data';

// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class Details1 extends StatefulWidget {
//   const Details1({super.key});

//   @override
//   State<Details1> createState() => _Details1State();
// }

// class _Details1State extends State<Details1> {
//   String? bldkey;
// Uint8List? _image;
// List ls = [];
// List aplus=[];

// void detail() async{
// final prefs=await SharedPreferences.getInstance();
// final res=prefs.getString("bloodbank");
// if(res!=null){
//  setState(() {
//     ls=json.decode(res);
//     for (int i=0;i<=ls.length;i++){
    
//   if(ls[6]["group"]==bldkey){
//     aplus.add(ls[i]);
//   }
//     }
//  });
// }
// print(ls);
// }


// @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     detail();
//   }

//   @override
//   Widget build(BuildContext context) {
//     bldkey=ModalRoute.of(context)?.settings.arguments as String;
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.red,
//         actions: [Container(
//           margin: EdgeInsets.only(right: 15),
//           decoration: BoxDecoration(borderRadius: BorderRadius.circular(100,),
//           color: Colors.grey[400]),
//           child: Icon(Icons.perm_identity_sharp,size: 35,),
//         )],
//         title: Center(child: Text("DETAILS")),
//         leading: IconButton(onPressed: () {
//           Navigator.pop(context);
//         }, icon: Icon(Icons.arrow_back)),
//       ),
      
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
       
//         child: Column(
//           children: [

//             Container(
//               height: 65,
//               width: double.infinity,
//               color: Colors.red,
//               child: Container(
//                 height: 40,
//                 width: double.infinity,
//                  margin: EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 10),
//                  padding: EdgeInsets.only(left: 15),
//                  decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(100),
//                   color: Colors.white
//                  ),
//                 child: Row(
//                   children: [
//                     Icon(Icons.search),SizedBox(width: 10,),
//                     Text("SEARCH......")
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(height: 5,),
//             Container(
//               height: 50,
//               width: double.infinity,
//               child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Container(height: 50,width: 50,decoration: BoxDecoration(
//                     color: Colors.red,borderRadius: BorderRadius.circular(8)
//                   ),child: Center(child: Text("A+",style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: "edu"),),),),
//                     Container(height: 50,width: 50,decoration: BoxDecoration(
//                     color: Colors.red,borderRadius: BorderRadius.circular(8)
//                   ),child: Center(child: Text("O+",style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: "edu"),),),),
//                     Container(height: 50,width: 50,decoration: BoxDecoration(
//                     color: Colors.red,borderRadius: BorderRadius.circular(8)
//                   ),child: Center(child: Text("B+",style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: "edu"),),),),
//                     Container(height: 50,width: 50,decoration: BoxDecoration(
//                     color: Colors.red,borderRadius: BorderRadius.circular(8)
//                   ),child: Center(child: Text("AB+",style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: "edu"),),),),
//                     Container(height: 50,width: 50,decoration: BoxDecoration(
//                     color: Colors.red,borderRadius: BorderRadius.circular(8)
//                   ),child: Center(child: Text("A-",style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: "edu"),),),),
//                     Container(height: 50,width: 50,decoration: BoxDecoration(
//                     color: Colors.red,borderRadius: BorderRadius.circular(8)
//                   ),child: Center(child: Text("AB-",style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: "edu"),),),),
//                 ],
//               ),
//             ),

//             SizedBox(height: 10,),

//             Container(
//               width: double.infinity,   
//               height: 550,
//               // color: Colors.red,
//               child: ListView.builder(itemCount: ls.length,
//                 itemBuilder: (context, index) {
//                 return Container(
//                   margin: EdgeInsets.only(top: 5,bottom: 5,left: 15,right: 15),
//                   padding: EdgeInsets.only(left: 15),
//                   height: 120,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(15),
//                      color: const Color.fromARGB(255, 241, 113, 103),
//                   ),
                 
//                   child: Row(
//                     children: [
//                        Container(
//                         height: 100,
//                         width: 100,
//                          child: ClipRRect(
//                                              child: Image.memory(_image=base64Decode(aplus![index]["image"]),fit: BoxFit.cover),
//                                              borderRadius: BorderRadius.circular(15),
//                                            ),
//                        ),
//                        SizedBox(width: 10,),

//                        Container(
//                         height: 100,
//                         width: 130,
                        
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(aplus[index]["name"].toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,letterSpacing:.0),)
//                           ,SizedBox(height: 5,)
//                            ,Text(aplus[index]["place"],style: TextStyle(fontWeight: FontWeight.w600),)
//                            ,SizedBox(height: 5,)
//                             ,Text(aplus[index]["phone"],style: TextStyle(fontWeight: FontWeight.w500),)
//                           ],
//                         ),
//                        ),

//                        Container(
//                         height: 100,
//                         width: 55,
//                         child: Column(children: [
//                           Container(width: 50,height: 50,
//                           decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.red),
//                           child: Center(child: Text(aplus[index]["group"]),),
                          
//                           )
//                         ],),
//                        )
//                     ],
//                   ),
//                 );
//               },
//               ),
//             )
//           ],
//         ),
//       ),
      
//     );
//   }
// }
import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Details1 extends StatefulWidget {
  const Details1({super.key});

  @override
  State<Details1> createState() => _Details1State();
}

class _Details1State extends State<Details1> {
  String? bldkey;
Uint8List? _image;
List ls = [];

void detail() async{
final prefs=await SharedPreferences.getInstance();
final res=prefs.getString("bloodbank");
if(res!=null){
 setState(() {
    ls=json.decode(res);
 });
}
print(ls);
}


@override
  void initState() {
    // TODO: implement initState
    super.initState();
    detail();
  }

  @override
  Widget build(BuildContext context) {
    bldkey=ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        actions: [Container(
          margin: EdgeInsets.only(right: 15),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(100,),
          color: Colors.grey[400]),
          child: Icon(Icons.perm_identity_sharp,size: 35,),
        )],
        title: Center(child: Text("DETAILS")),
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),
      ),
      
      body: Container(
        height: double.infinity,
        width: double.infinity,
       
        child: Column(
          children: [

            Container(
              height: 65,
              width: double.infinity,
              color: Colors.red,
              child: Container(
                height: 40,
                width: double.infinity,
                 margin: EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 10),
                 padding: EdgeInsets.only(left: 15),
                 decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white
                 ),
                child: Row(
                  children: [
                    Icon(Icons.search),SizedBox(width: 10,),
                    Text("SEARCH......")
                  ],
                ),
              ),
            ),
            SizedBox(height: 5,),
            Container(
              height: 50,
              width: double.infinity,
              child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(height: 50,width: 50,decoration: BoxDecoration(
                    color: Colors.red,borderRadius: BorderRadius.circular(8)
                  ),child: Center(child: Text("A+",style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: "edu"),),),),
                    Container(height: 50,width: 50,decoration: BoxDecoration(
                    color: Colors.red,borderRadius: BorderRadius.circular(8)
                  ),child: Center(child: Text("O+",style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: "edu"),),),),
                    Container(height: 50,width: 50,decoration: BoxDecoration(
                    color: Colors.red,borderRadius: BorderRadius.circular(8)
                  ),child: Center(child: Text("B+",style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: "edu"),),),),
                    Container(height: 50,width: 50,decoration: BoxDecoration(
                    color: Colors.red,borderRadius: BorderRadius.circular(8)
                  ),child: Center(child: Text("AB+",style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: "edu"),),),),
                    Container(height: 50,width: 50,decoration: BoxDecoration(
                    color: Colors.red,borderRadius: BorderRadius.circular(8)
                  ),child: Center(child: Text("A-",style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: "edu"),),),),
                    Container(height: 50,width: 50,decoration: BoxDecoration(
                    color: Colors.red,borderRadius: BorderRadius.circular(8)
                  ),child: Center(child: Text("AB-",style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: "edu"),),),),
                ],
              ),
            ),

            SizedBox(height: 10,),

            Container(
              width: double.infinity,   
              height: 550,
              // color: Colors.red,
              child: ListView.builder(itemCount: ls.length,
                itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(top: 5,bottom: 5,left: 15,right: 15),
                  padding: EdgeInsets.only(left: 15),
                  height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                     color: const Color.fromARGB(255, 241, 113, 103),
                  ),
                 
                  child: Row(
                    children: [
                       Container(
                        height: 100,
                        width: 100,
                         child: ClipRRect(
                                             child: Image.memory(_image=base64Decode(ls![index]["image"]),fit: BoxFit.cover),
                                             borderRadius: BorderRadius.circular(15),
                                           ),
                       ),
                       SizedBox(width: 10,),

                       Container(
                        height: 100,
                        width: 130,
                        
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(ls[index]["name"].toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,letterSpacing:.0),)
                          ,SizedBox(height: 5,)
                           ,Text(ls[index]["place"],style: TextStyle(fontWeight: FontWeight.w600),)
                           ,SizedBox(height: 5,)
                            ,Text(ls[index]["phone"],style: TextStyle(fontWeight: FontWeight.w500),)
                          ],
                        ),
                       ),

                       Container(
                        height: 100,
                        width: 55,
                        child: Column(children: [
                          Container(width: 50,height: 50,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.red),
                          child: Center(child: Text(ls[index]["group"]),),
                          
                          )
                        ],),
                       )
                    ],
                  ),
                );
              },
              ),
            )
          ],
        ),
      ),
      
    );
  }
}