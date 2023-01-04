import 'package:agrisakthi_vivasayam/registration_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class RolebasedEntry extends StatefulWidget {
  const RolebasedEntry({Key? key}) : super(key: key);

  @override
  _RolebasedEntryState createState() => _RolebasedEntryState();
}

class _RolebasedEntryState extends State<RolebasedEntry> {
  @override
  Widget build(BuildContext context) {
    final UserButton=ElevatedButton(
        onPressed: () async{
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Registration()));
        }, child: Text("பயனர்"),
        style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
        )
    );
    final AdminButton=ElevatedButton(
        onPressed: () async{
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Registration()));
        }, child: Text("நிர்வாகம்"),
        style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
        )
    );
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
          height: 200,
          decoration: BoxDecoration(border: Border.all(width: 2)),
          child: Image.asset("assets/Farmer.jfif",)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 1, 0),
                child: SizedBox(height: 15),
              ),
              UserButton,
              Padding(
                padding: const EdgeInsets.fromLTRB(4, 0, 0, 0),
                child: SizedBox(height: 25),
              ),
              AdminButton,
            ],
          ),
          SizedBox(height: 6,),
        ],
      ),
    );
  }
}
