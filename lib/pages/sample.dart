
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home Page'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             // Navigate to the SecondPage and pass a parameter
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => SecondPage(parameter: 'Hello World!'),
//               ),
//             );
//           },
//           child: Text('Go to Second Page'),
//         ),
//       ),
//     );
//   }
// }

// class SecondPage extends StatefulWidget {
//   final String parameter;

//   const SecondPage({super.key, required this.parameter});

//   @override
//   State<SecondPage> createState() => _SecondPageState();
// }

// class _SecondPageState extends State<SecondPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Second Page'),
//       ),
//       body: Center(
//         child: Text(widget.parameter),
//       ),
//     );
//   }
// }
