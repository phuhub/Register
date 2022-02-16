

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "My App",
        home: MyHomePage(),
        theme: ThemeData(primarySwatch: Colors.blueGrey));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("My Profile"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.30),
          child: Form(
            child: SingleChildScrollView( 
              padding: const EdgeInsets.all(10.30),
              child: Column( 
                children: [
                   Image.asset(
                  "assets/picture/phu.jpg",
                  height: 180,
                  
                  ),
                  
                  TextField( 
                    decoration: InputDecoration( 
                        labelText: "Username\n",
                        prefixIcon: Icon(Icons.person),
                        border: myinputborder(),
                        enabledBorder: myinputborder(),
                        focusedBorder: myfocusborder(),
                        
                  )
                ),
                  
                  
                  TextField( 
                    decoration: InputDecoration( 
                        labelText: "Email Address\n",
                        prefixIcon: Icon(Icons.email),
                        border: myinputborder(),
                        enabledBorder: myinputborder(),
                        focusedBorder: myfocusborder(),
                  )
                ),

                  
                  TextField( 
                    decoration: InputDecoration( 
                        labelText: "Password\n",
                        prefixIcon: Icon(Icons.lock),
                        border: myinputborder(),
                        enabledBorder: myinputborder(),
                        focusedBorder: myfocusborder(),
                        
                  )
                  
                ),
                  
                  TextField( 
                    decoration: InputDecoration( 
                        labelText: "Confirm Password\n",
                        prefixIcon: Icon(Icons.lock),
                        border: myinputborder(),
                        enabledBorder: myinputborder(),
                        focusedBorder: myfocusborder(),
                  )
                ),
                  
                  TextField( 
                    decoration: InputDecoration( 
                        labelText: "Mobile\n",
                        prefixIcon: Icon(Icons.phone),
                        border: myinputborder(),
                        enabledBorder: myinputborder(),
                        focusedBorder: myfocusborder(),
                  )
                ),
                
                Container(
                padding: const EdgeInsets.all(10.30),
                child: TextButton(
                  child: Text(
                    "REGISTER",
                    style: TextStyle(fontSize: 20),
                  ),
                  style: TextButton.styleFrom( 
                    primary: Colors.white,
                    backgroundColor: Colors.blueAccent,
                  ),
                  onPressed: () {},
                ),
              ),

                  Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Already have an Account ?",
                      style: TextStyle(
                    fontSize: 16,
                    ),
                    ),
              ),

              Container(
                alignment: Alignment.centerRight,
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
                  
                  
                ],
              ),
            ),
          ),
        ),
      ),
      
    );
  }
  OutlineInputBorder myinputborder(){ //return type is OutlineInputBorder
    return OutlineInputBorder( //Outline border type for TextFeild
      
      borderRadius: BorderRadius.all(Radius.circular(5)),
      borderSide: BorderSide(
          color:Colors.blueAccent,
          width: 1,
        )
        
    );
  }

  OutlineInputBorder myfocusborder(){
    return OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(5)),
      borderSide: BorderSide(
          color:Colors.blueAccent,
          width: 1,
        )
    );
  }
}

          