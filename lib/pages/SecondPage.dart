import 'package:flutter/material.dart';


class DetailsScreen extends StatefulWidget {
  final String languge;
  // const DetailsScreen({super.key, required this.languge, required String parameter});
  // final String parameter;
  const DetailsScreen({super.key, required this.languge});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Details Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => {
            print(widget.languge)
            // context.go('/'),
          },
          child: Text(widget.languge),
        ),
      ),
    );
  }
}

// class DetailsScreen extends StatelessWidget {
//   final String? languge;

//   const DetailsScreen({super.key, required this.languge});

//   // _DetailsScreenState(String? languge) {

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Details Screen')),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () => {
//             print(languge)
//             // context.go('/'),
//           },
//           child: const Text("tx"),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

// class DetailsScreen extends StatefulWidget {
//   final String? languge;

//   const DetailsScreen({super.key, required this.languge});

//   @override
//   State<DetailsScreen> createState() => _DetailsScreenState(lang: this.languge);
// }

// class _DetailsScreenState extends State<DetailsScreen> {
//   // _DetailsScreenState(String? languge) {
//   //   this.languge = languge;
//   // }

//   // _DetailsScreenState(String? key) {
//   //   print(key);
//   // }

//   String? lang;
//   _DetailsScreenState({this.lang});

//   } //code continues below
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Details Screen')),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () => {
//             // context.go('/'),
//               print(lang)
//             },
//           child: const Text("tx"),
//         ),
//       ),
//     );
//   }
// }
