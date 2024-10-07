import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: const HomeActivity(),
     debugShowCheckedModeBanner: false,
     title: "Floating Action",
     theme: ThemeData(primarySwatch: Colors.amber),
     darkTheme: ThemeData(primarySwatch: Colors.green),
   );
  }

}

class HomeActivity  extends StatelessWidget{
  const HomeActivity({super.key});

  onPressed(message, context){
      ScaffoldMessenger.of(context).showSnackBar(
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
        title: const Text("Floating Action Button"),
        backgroundColor: Colors.redAccent,
        foregroundColor: Colors.white,
        // centerTitle: true,
        elevation: 10,
        actions: [
          IconButton(onPressed: (){onPressed("Person Btn Pressed", context);}, icon: const Icon(Icons.person)),
          IconButton(onPressed: (){onPressed("Home Btn Pressed", context);}, icon: const Icon(Icons.home)),
          IconButton(onPressed: (){onPressed("Call Btn Pressed", context);}, icon: const Icon(Icons.call)),
          IconButton(onPressed: (){onPressed("Info Btn Pressed", context);}, icon: const Icon(Icons.info)),
        ],
      ),
      body: const Center(
        child: Text("Floating Button Body"),
      ),
      floatingActionButton: FloatingActionButton(
          elevation: 10,
          backgroundColor: Colors.redAccent,
          foregroundColor: Colors.white,
          onPressed: (){
            // ScaffoldMessenger.of(context).showSnackBar(
            //   const SnackBar(
            //     content: Text("Floating Button Clicked"),
            //     duration: Duration(milliseconds: 700),
            //   )
            // );
            onPressed("Floating Button Clicked", context);
          },
          shape: const CircleBorder(),
          hoverColor: Colors.green,
          child: const Icon(Icons.add)),
    );
  }
}