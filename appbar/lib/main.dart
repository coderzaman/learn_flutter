import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(primarySwatch: Colors.amber),
      title: "App Bar",
      debugShowCheckedModeBanner: false,
      home: const HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  onPressed(message, context){
      //Snack Bar
      return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text(message),
            duration: const Duration(milliseconds: 700),
        )
      );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //Set App Bar Title With title property
        title: const Text("App Bar"),
        //set background color
        backgroundColor: Colors.red,
        // set foreground color or text color
        foregroundColor: Colors.white,
        //title spacing: space the
        //titleSpacing: 400,
        // Center the title
        // centerTitle: true,
        //We can control toolbar opacity which  0 -> 1
        // toolbarOpacity: 0.9,
        //

        // Evaluation: To achieve a flat AppBar
        elevation: 15,

        // In action we can Icon Button
        actions: [
          /*
          IconButton(onPressed: () {mySnackBar("Home Icon Pressed", context);}, icon: const Icon(Icons.home)),
          IconButton(onPressed: (){mySnackBar("Person Icon Pressed", context);}, icon: const Icon(Icons.person)),
          IconButton(onPressed: (){mySnackBar("Call Icon Pressed", context);}, icon: const Icon(Icons.add_ic_call)),
          IconButton(onPressed: (){mySnackBar("Email Icon Pressed", context);}, icon: const Icon(Icons.email)),
          IconButton(onPressed: () {mySnackBar("Info Icon Pressed", context);}, icon: const Icon(Icons.info))
          */
          
          IconButton(onPressed: (){onPressed("Person Icon Pressed", context);}, icon: const Icon(Icons.person),),
          IconButton(onPressed: (){onPressed("Home Icon Pressed", context);}, icon: const Icon(Icons.home)),
          IconButton(onPressed: (){onPressed("Call Icon Pressed", context);}, icon: const Icon(Icons.call),),
          IconButton(onPressed: (){onPressed("Info Icon Pressed", context);}, icon: const Icon(Icons.info))
        ],
      ),
      body: const Center(
        child: Text("Body"),
      ),
    );
  }
}
