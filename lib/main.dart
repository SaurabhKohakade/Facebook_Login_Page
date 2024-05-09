import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook Login',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 10, 77, 131)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Login Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {




  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      
      body: Center(          
        
        child: Container(
          height: 500,
          width: 370,
          color: Colors.white,
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(               
                height: 120,
                width: 400,
                child:  Image.asset('assets/Facebook.png'),
              ),

              Container( 
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                       color: Color.fromARGB(255, 206, 201, 201),
                       spreadRadius: 3,
                       blurRadius: 5,
                    )
                  ]
                   ),

                child: Column(

                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                        child: const Center(
                          child: Text('Log in to Facebook',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                        )
                    ),
                    
                    Container(height: 20,),
                    
                    
                     Container(
                       height: 50,
                       width: 350,
                       margin: EdgeInsets.only(right: 10,left: 10),

                       child: TextField(

                         decoration: InputDecoration(
                           hintText: 'Email address or phone number',

                          focusedBorder:  OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide: const BorderSide(color: Color.fromARGB(255, 2, 136, 245))
                            ),
                           
                            border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                )
              ),
            ),
            ),
            
            Container(height: 20,),
            
              Container(
              height: 50,
              width: 350,
              margin: const EdgeInsets.only(right: 10,left: 10),

              child: TextField(

                obscureText: true,
              
              decoration: InputDecoration(
                hintText: 'Password',

                focusedBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(7),
                   borderSide: const BorderSide(color: Colors.blue)
                   ),
                 
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7),
                )
              ),
            )
            ),

            Container(height: 20,),

            Container(
               width: 350,
               height: 50,
               margin: EdgeInsets.only(right: 10,left: 10),

               child:  ElevatedButton(
               onPressed: () {},

                style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: const RoundedRectangleBorder(
                         borderRadius: BorderRadius.all(Radius.circular(7)),
                         ),
               ),
             
              child: const Text(
                  'Log in',
                  style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                  fontWeight: FontWeight.bold),
                  ),
               )
            ),

            Container(height: 13,),
            
            Container(

              child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
             
              children: [
                InkWell(
                  onTap: () {},
                  child : Text('Forgotten account?',style: TextStyle(color: Colors.blue,),),
                ),

                Container(width: 10),

                 InkWell(
                  onTap: () {},
                  child : Text('Sign up for Facebook',style: TextStyle(color: Colors.blue,)),
                )
              ]       
            )
            ),
            
             Container(height: 25,)

                  ] 
                ),
              ),
          ],),
        ),
      )
      );
  }
}
