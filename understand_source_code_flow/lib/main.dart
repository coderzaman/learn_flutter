//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// main(){
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget{
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//       return const MaterialApp(home:HomeActivity());
//   }
// }
//
// class HomeActivity extends StatelessWidget {
//   const HomeActivity({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//       ),
//       body: Text("Bismillahir Rahmainr Rahim"),
//
//     );
//   }
//
// }
//


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
     return const MaterialApp(home: HomeActivity());
  }

}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});



  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Bismillah"),
          backgroundColor: Colors.black54,
          foregroundColor: Colors.white,
        ),
        body: const Center(
          child: Text("Welcome To you"),
        ),
      );
  }
}

