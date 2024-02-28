import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Transcription extends StatefulWidget {
  final String languge;
  const Transcription({super.key, required this.languge});

  @override
  State<Transcription> createState() => _TranscriptionState();
}

class _TranscriptionState extends State<Transcription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Transcription Screen')),
      body: Center(
          child: ListView(children: [
        const Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            'Start speaking to transcribe. Any audio will be recorded and transcribed.',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        // const Padding(padding: EdgeInsets.only(top: 100.0)),
        const Padding(
          padding: EdgeInsets.only(left: 7, right: 7),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Tap to start dictation',
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(padding: EdgeInsets.all(10.0)),
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () => {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 105, 57, 188),
                      textStyle: const TextStyle(
                          fontSize: 22,
                          color: Color.fromRGBO(255, 255, 255, 1)),
                      fixedSize: const Size(double.maxFinite, 30.0),
                      shape: const BeveledRectangleBorder(
                          borderRadius: BorderRadius.zero)),
                  child: const Text('start',
                      style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
          ],
        ),
      ])),
    );
  }
}
