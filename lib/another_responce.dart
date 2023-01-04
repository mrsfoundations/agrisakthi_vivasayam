import 'package:agrisakthi_vivasayam/registration_screen.dart';
import 'package:flutter/material.dart';
class AnotherResponce extends StatefulWidget {
  const AnotherResponce({Key? key}) : super(key: key);

  @override
  _AnotherResponceState createState() => _AnotherResponceState();
}

class _AnotherResponceState extends State<AnotherResponce> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("AgriSakthi_Vivasayam"),
      ),
    body: Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
      child: Column(
        children: [
          Container(
              height: 200,
              child: Image.asset("assets/agrisakthi.jpg")
          ),
          Card(
            elevation: 50,
            shadowColor: Colors.black,
            color: Colors.greenAccent[100],
            child: SizedBox(
              width: 500,
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ), //SizedBox
                    Text(
                      "தரவு சமர்ப்பிக்கப்பட்டது\n👍🏻",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.green[700],
                        fontWeight: FontWeight.w900,
                      ), //Textstyle
                    ),
                  ],
                ), //Column
              ), //Padding
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Card(elevation: 50,
            shadowColor: Colors.black,
            color: Colors.greenAccent[100],
            child: SizedBox(
              width: 350,
              height: 150,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                   const SizedBox(
                      height: 10,
                    ), //SizedBox
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Registration()));
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          "மற்றொரு பதிலைச் சமர்ப்பிக்க வேண்டுமா?",
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.w800,
                              fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ), //Column
              ), //Padding
            ),),
        ],
      ),
    ),
    );
  }
}
