import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class TextScreen extends StatelessWidget {

  // Instantiate FlutterTts
  final FlutterTts flutterTts = FlutterTts();

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController =  TextEditingController();

    Future speak(String text) async{

      // If You Want To Speak In Your Desired Language

      // print(await flutterTts.getLanguages);
      // await flutterTts.setLanguage("ur-PK");
      // await flutterTts.setPitch(1);
      // print(await flutterTts.getVoices);
      // await flutterTts.speak("حسن خان کہاں جا رہے ہو خان صاحب");

      await flutterTts.setLanguage("en-US");
      await flutterTts.setPitch(1);
      await flutterTts.getVoices;
      await flutterTts.speak(text);
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade400,
        title: Center(child: Text("Text To Speech", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),)),
      ),
      body: Material(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: textEditingController,
                  decoration: InputDecoration(
                    hintText: "Type Your Text Here",
                    prefixIcon: Icon(Icons.text_fields, color: Colors.orange,)
                  ),
                ),
              ),
              MaterialButton(
                onPressed: () => speak(textEditingController.text),
                color: Colors.orange,
                child: Text("Press The Button To Say Hello"),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
