import 'dart:convert';
import 'dart:typed_data';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
Uint8List? _image;
List ls = [];
List data=[];
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
void getdata()async{
  var res=await http.get(Uri.parse('http://jandk.tech/api/getdonors'));
  setState(() {
    data=json.decode(res.body);
  });
  print(data);
}

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    // detail();
    getdata();
  }

  @override
  Widget build(BuildContext context) {
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
              height: 680,
              // color: Colors.red,
              child: ListView.builder(itemCount: data.length,
                itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(top: 5,bottom: 5,left: 15,right: 15),
                  padding: EdgeInsets.only(left: 15),
                  height: 120,
                  width: double.infinity,
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(15),
                  //    color: const Color.fromARGB(255, 250, 181, 176),
                  // ),
                 
                  child: Card(
                    child: Row(
                      children: [
                        SizedBox(width: 3,),
                         Container(
                          height: 100,
                          width: 100,
                          child: Card(
                            color: const Color.fromARGB(255, 255, 210, 207),
                            child: Icon(Icons.perm_identity_rounded,size: 75,),
                          ),
                          //  child: ClipRRect(
                          //                     //  child: Image.memory(_image=base64Decode(data![index]["image"]),fit: BoxFit.cover),
                          //                      borderRadius: BorderRadius.circular(15),
                          //                    ),
                          
                         ),
                         SizedBox(width: 15,),
                    
                         Container(
                          height: 100,
                          width: 160,
                          
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(data[index]["name"].toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,letterSpacing:.0),)
                            ,SizedBox(height: 10,)
                             ,Text(data[index]["place"],style: TextStyle(fontWeight: FontWeight.w600),)
                             ,SizedBox(height: 5,)
                              ,Text(data[index]["phone"].toString(),style: TextStyle(fontWeight: FontWeight.w500),)
                            ],
                          ),
                         ),
                    
                         Container(
                          height: 100,
                          width: 55,
                          child: Column(children: [
                            Container(width: 50,height: 50,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.red[600]),
                            child: Center(child: Text(data[index]["blood_group"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,
                            color: Colors.white,shadows: [Shadow(color: const Color.fromARGB(255, 255, 255, 255),blurRadius: 5,offset: Offset(1, 1))]),),),
                            
                            ),
                             Container(
                          height: 50,
                          width: 50,
                          child: IconButton(onPressed: () {
                            String argu=data[index]["_id"].toString();
                            Navigator.pushNamed(context, "editfile",arguments: argu.toString());
                          }, icon: Icon(Icons.edit)),
                         )
                          ],),
                         ),
                        
                      ],
                    ),
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