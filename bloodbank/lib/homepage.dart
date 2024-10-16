import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool a=false;
   bool b=false;
    bool c=false;
     bool d=false;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    a=false;
    b=false;
    c=false;
    d=false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        // color: Colors.black38,
        child: ListView(
          children: [
            Container(
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 211, 12, 12),
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(50))
                ),
            child: Center(child: Image.asset("./images/bld.jpeg",width: 230,),),
            ),
              SizedBox(height: 15,),
            Container(child: Center(child: Text("Commonly Used Bloods",style: TextStyle(fontFamily: "olf"),))),
            SizedBox(height: 15,),
            // -------------------------------------------------------- row 1
                          Container(
                    margin: EdgeInsets.only(left: 15,right: 15),
                    padding: EdgeInsets.only(left: 15,right: 15),
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.red[800],
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(onTap: () {
                          // ontap
                           Navigator.pushNamed(context, "/details");
                        },
                          child: TextButton(onPressed: () {
                             Navigator.pushNamed(context, "/details");
                          }
                          , child:  Text("Search for your Group",style: TextStyle(
                            color: Colors.white,fontSize: 20),))
                            ),

                        IconButton(onPressed: () {
                          Navigator.pushNamed(context, "/details");
                        }, icon: Icon(Icons.search,size: 33,color: Colors.white,))
                      ],
                    ),
                   ),

                   SizedBox(height: 20,),
           
            // ====================================================================
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15),
                  height: 100,
                  width: 150,
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(
                      color: Colors.grey,blurRadius: 10,spreadRadius: 0
                    )]
                  ),
                child: Card(
                   color:a? Colors.red[900]:const Color.fromARGB(255, 253, 136, 128),
                   child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor:a? Colors.red[900]:const Color.fromARGB(255, 253, 136, 128),
                   shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(10))
                   ),
                    onPressed: (){
                    setState(() {
                        a=!a;
                          Navigator.pushNamed(context, "/details1",arguments: "A+" );
                    });
                    },
                     child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text("A+",style: TextStyle(color: Colors.white,fontSize: 22),),
                      SizedBox(width: 5,),
                      Icon(Icons.water_drop_outlined,color: Colors.white,size: 30,)],
                     ),
                   ),

                ),
                ),
                 Container(
                  margin: EdgeInsets.only(left: 15),
                  height: 100,
                  width: 150,
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(
                      color: Colors.grey,blurRadius: 10,spreadRadius: 0
                    )]
                  ),
                child: Card(
                   color:b? Colors.red[900]:const Color.fromARGB(255, 253, 136, 128),
                   child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: b? Colors.red[900]:const Color.fromARGB(255, 253, 136, 128),
                   shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(10))
                   ),
                    onPressed: (){
                     setState(() {
                        b=!b;
                          Navigator.pushNamed(context, "/details1",arguments: "B+" );
                     });
                    },
                     child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text("B+",style: TextStyle(color: Colors.white,fontSize: 22),),
                      SizedBox(width: 5,),
                      Icon(Icons.water_drop_outlined,color: Colors.white,size: 30,)],
                     ),
                   ),

                ),
                )
              ],
            ),
            // ------------------------------------------------------------ row 1 ^
            SizedBox(height: 20,),
             // -------------------------------------------------------- row 2 v
           
         
            // ======================================================= row 3 v
          
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15),
                  height: 100,
                  width: 150,
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(
                      color: Colors.grey,blurRadius: 10,spreadRadius: 0
                    )]
                  ),
                child: Card(
                   color:c? Colors.red[900]:const Color.fromARGB(255, 253, 136, 128),
                   child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor:c? Colors.red[900]:const Color.fromARGB(255, 253, 136, 128),
                   shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(10))
                   ),
                    onPressed: (){setState(() {
                      c=!c;
                      Navigator.pushNamed(context, "/details1",arguments: "O+" );
                    });},
                     child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text("O+",style: TextStyle(color: Colors.white,fontSize: 22),),
                      SizedBox(width: 5,),
                      Icon(Icons.water_drop_outlined,color: Colors.white,size: 30,)],
                     ),
                   ),

                ),
                ),
                 Container(
                  margin: EdgeInsets.only(left: 15),
                  height: 100,
                  width: 150,
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(
                      color: Colors.grey,blurRadius: 10,spreadRadius: 0
                    )]
                  ),
                child: Card(
                   color:d ? Colors.red[900]:const Color.fromARGB(255, 253, 136, 128),
                   child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor:d? Colors.red[900]:const Color.fromARGB(255, 253, 136, 128),
                   shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(10))
                   ),
                    onPressed: (){setState(() {
                      d=!d;
                        Navigator.pushNamed(context, "/details1",arguments: "AB+" );
                    });},
                     child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text("AB+",style: TextStyle(color: Colors.white,fontSize: 22),),
                      SizedBox(width: 5,),
                      Icon(Icons.water_drop_outlined,color: Colors.white,size: 30,)],
                     ),
                   ),

                ),
                )
              ],
            ),
              // -------------------------------------------------------- row 3 ^
                   SizedBox(height: 30,),
                  //  Container(
                  //   margin: EdgeInsets.only(left: 15,right: 15),
                  //   padding: EdgeInsets.only(left: 15,right: 15),
                  //   height: 50,
                  //   width: double.infinity,
                  //   decoration: BoxDecoration(
                  //     color: Colors.red[800],
                  //     borderRadius: BorderRadius.circular(15)
                  //   ),
                  //   child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       GestureDetector(onTap: () {
                  //         // ontap
                  //          Navigator.pushNamed(context, "/details");
                  //       },
                  //         child: TextButton(onPressed: () {
                  //            Navigator.pushNamed(context, "/details");
                  //         }
                  //         , child:  Text("Search for your Group",style: TextStyle(
                  //           color: Colors.white,fontSize: 20),))
                  //           ),

                  //       IconButton(onPressed: () {
                  //         Navigator.pushNamed(context, "/details");
                  //       }, icon: Icon(Icons.menu,size: 33,color: Colors.white,))
                  //     ],
                  //   ),
                  //  ),

                  //  SizedBox(height: 20,),
           
              Container(
                height: 300,
                width: double.infinity,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(left: 15,right: 15),
              decoration: BoxDecoration(
                      color: Colors.red[800],
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                    childAspectRatio: 01.19,crossAxisSpacing: 5,mainAxisSpacing: 10),
                    children: [
                      Card(
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Are You Donate?"),
                            Container(height: 33,
                              child: Center(
                              child: TextButton(onPressed: () {
                                Navigator.pushNamed(context, "/addfile");
                              }, child: Text("DONATE",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 8,right: 8),
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset("./images/bld_donation.jpeg",height: 50,),
                                  Icon(Icons.water_drop,color: Colors.red,)
                                ],
                              ),
                            )
                          ],
                        )
                      ),
                      // ==================================== card 2 v
                      Card(
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Insurance Enquiry"),
                            Container(height: 33,
                              child: Center(
                              child: TextButton(onPressed: () {
                                
                              }, child: Text("ENQUIRY",style: TextStyle(color: Colors.red,fontWeight: FontWeight.w600),)),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 8,right: 8),
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset("./images/insu.jpeg",height: 50,),
                                  Icon(Icons.playlist_add_check_circle_outlined,color: Colors.red,)
                                ],
                              ),
                            )
                          ],
                        )
                      ),
                      // =============================================== card 3 v
                       Card(
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Apperance"),
                            Container(height: 33,
                              child: Center(
                              child: TextButton(onPressed: () {
                                
                              }, child: Text("APPERANCES",style: TextStyle(color: Colors.red,fontWeight: FontWeight.w600),)),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 8,right: 8),
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset("./images/apperence.jpeg",height: 50,),
                                  Icon(Icons.vignette_sharp,color: Colors.red,)
                                ],
                              ),
                            )
                          ],
                        )
                      ),
                      

                      Card(
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Hospitality"),
                            Container(height: 33,
                              child: Center(
                              child: TextButton(onPressed: () {
                                
                              }, child: Text("CHECK",style: TextStyle(color: Colors.red,fontWeight: FontWeight.w600),)),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 8,right: 8),
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset("./images/hospitality.jpeg",height: 50,),
                                  Icon(Icons.local_hospital,color: Colors.red,)
                                ],
                              ),
                            )
                          ],
                        )
                      ),
                    ],
                    ),
              ),

              SizedBox(height: 25,)
            
          ],
        ),
      ) ,
    );
  }
}