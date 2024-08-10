import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyHomePage(),
    theme: ThemeData(primarySwatch: Colors.purple)
  );
  }
}
class MyHomePage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
   return MyHomePageState();
  }
}
class MyHomePageState extends State<MyHomePage>{

  @override
  Widget build(BuildContext context) {
  return Scaffold(
   
    body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 3,
                child: tipBox1()),
            Expanded(
              flex: 7,
                child: tipBox2()),
            Expanded(
              flex: 3,
                    child:tipBox3()
          ),
            Expanded(
                flex: 4,
                child:tipBox4()
            ),

            Expanded(
              flex: 3,
                child: tipBox5()),

          ],
        ),
      ),
    ),

  );
  }
}
  Widget tipBox1(){
  return Container(
child: Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Image.asset("assets/images/tip_image.png"),
SizedBox(width:10),
RichText(text: TextSpan(
children: [
TextSpan(
text: "Mr ",style: TextStyle(fontSize:20,fontWeight: FontWeight.w500,color: Colors.black ),
),
TextSpan(
text: "TIP\n",style: TextStyle(fontWeight: FontWeight.w800,color: Colors.black,fontSize: 30)
),
TextSpan(text: "Calculator",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w500))
]
))

],
),

);
}

   Widget tipBox2(){
  return Padding(
  padding: const EdgeInsets.all(20.0),
  child: Container(

    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30)
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(text: TextSpan(
                children: [
                  TextSpan(
                    text: "Total ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),
                  ),
                  TextSpan(text:"p/person",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20,color: Colors.black))
                ]
            ))
          ],
        ),
        RichText(text: TextSpan(
            children: [
              TextSpan(
                  text: "\$",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700,color: Colors.black)
              ),
              TextSpan(
                  text: "000",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 50,color: Colors.black)
              )
            ]
        )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Divider(),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  RichText(text: TextSpan(
                      children:
                      [
                        TextSpan(
                            text: "Total bill\n",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w500)
                        ),
                        TextSpan(
                            text: "\$",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.greenAccent)
                        ),
                        TextSpan(
                            text: "000",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.greenAccent)
                        )

                      ]
                  ))
                ],
              ),
              Column(
                children: [
                  RichText(text: TextSpan(
                      children:
                      [
                        TextSpan(
                            text: "Total tip\n",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w500)
                        ),
                        TextSpan(
                            text: "\$",style: TextStyle(fontSize:12,fontWeight: FontWeight.w500,color: Colors.greenAccent)
                        ),
                        TextSpan(
                            text: "000",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.greenAccent)
                        )

                      ]
                  ))
                ],
              ),
            ],
          ),
        )

      ],
    ),
  ),
  );
}
   Widget tipBox3(){
  return Container(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(text: TextSpan(
                      children: [
                        TextSpan(  text: "Enter\n",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: Colors.black),
                        ),
                        TextSpan(
                            text: "your bill",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black)
                        )
                      ]
                  )
                  )
                ],
              ),
            ),
            Expanded(flex: 3,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(color: Colors.white,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      prefixText: "\$",prefixStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.transparent
                            )
                        )
                    ),
                  ),
                ),
              ),
            )
          ]
      ));
   }

   Widget tipBox4(){
  return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RichText(text: TextSpan(
                      children: [
                        TextSpan(  text: "Choose\n",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: Colors.black),
                        ),
                        TextSpan(
                            text: "your tip",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black)
                        )
                      ]
                  )
                  )
                ],
              ),
            ),
            Expanded(flex: 3,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(flex: 1,
                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:[
                                Expanded(flex: 2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.greenAccent
                                    ),
                                    child: Center(child: Text("10%",style:TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color:Colors.white,backgroundColor: Colors.greenAccent))),
                                  ),
                                ),
                                SizedBox(width: 11,),
                                Expanded(flex:2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.greenAccent
                                    ),
                                    child: Center(child: Text("15%",style:TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color:Colors.white,backgroundColor: Colors.greenAccent))),
                                  ),
                                ),
                                SizedBox(width: 11,),
                                Expanded(flex: 2,
                                  child: Container(

                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.greenAccent
                                    ),
                                    child: Center(child: Text("20%",style:TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color:Colors.white,backgroundColor: Colors.greenAccent))),
                                  ),
                                ),

                              ]

                          ),
                        ),
                        SizedBox(height: 11,),
                        Expanded(flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.greenAccent
                            ),
                            child: Center(child: Text("Custom Tip",style:TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color:Colors.white,backgroundColor: Colors.greenAccent))),
                          ),
                        )
                      ],
                    )
                ),
              ),
            )
          ]
      ));
   }
   Widget tipBox5(){
  return Container(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(text: TextSpan(
                      children: [
                        TextSpan(  text: "Split\n",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: Colors.black),
                        ),
                        TextSpan(
                            text: "the total",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black)
                        )
                      ]
                  )
                  )
                ],
              ),
            ),
            Expanded(flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                child: Container(color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(flex: 1,
                        child: Container(color: Colors.greenAccent,
                          child:Center(
                            child: Text("-",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color: Colors.white)
                        ),
                          ),
                      )
                      ),
                      Expanded(flex: 2,
                          child:  Container(color: Colors.white,
                            child:Center(
                              child: Text("2",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color: Colors.black)
                              ),
                            ),
                          )),
                      Expanded(flex: 1,
                          child: Container(color: Colors.greenAccent,
                            child:Center(
                              child: Text("+",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color: Colors.white)
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            )
          ]
      ));
   }