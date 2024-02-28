import 'package:flutter/material.dart';
// import './SecondPage.dart';
import './Transcription.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 105, 57, 188)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Multilingual Transcription'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

const List<String> list = <String>[
  'Hindi',
  'Assamese',
  'Bengali',
  'Gujarati',
  'Kannada',
  'Kashmiri',
  'Konkani',
  'Malayalam',
  'Manipuri',
  'Marathi',
  'Nepali',
  'Oriya',
  'Punjabi',
  'Sanskrit',
  'Sindhi',
  'Tamil',
  'Telugu',
  'Urdu',
  'Bodo',
  'Santhali',
  'Maithili',
  'Dogri'
];

class _MyHomePageState extends State<MyHomePage> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(children: [
          // const Padding(padding: EdgeInsets.all(12.0)),
          // Container(
          //   height: 60,
          // ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'Choose a language',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                height: 5,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 100.0)),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(Icons.arrow_downward),
                elevation: 16,
                style: const TextStyle(color: Colors.black, fontSize: 22),
                underline: Container(
                  height: 2,
                  color: const Color.fromARGB(255, 105, 57, 188),
                ),
                onChanged: (String? value) {
                  setState(() {
                    dropdownValue = value!;
                  });
                },
                items: list.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              const Padding(padding: EdgeInsets.all(10.0)),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: ElevatedButton(
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            Transcription(languge: dropdownValue),
                      ),
                    ),
                    // context.goNamed('details', queryParameters: {'languge': dropdownValue}),
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 105, 57, 188),
                      textStyle: const TextStyle(
                          fontSize: 22,
                          color: Color.fromRGBO(255, 255, 255, 1))),
                  child: const Text('continue',
                      style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
