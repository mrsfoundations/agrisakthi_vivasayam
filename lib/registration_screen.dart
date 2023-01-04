import 'package:agrisakthi_vivasayam/another_responce.dart';
import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  String? Name;
  String? Phonenumber;
  String? Address;
  String? District;
  String? Role;
  @override
  Widget build(BuildContext context) {
    final TextEditingController NameControler = TextEditingController();
    final TextEditingController PhonenumberControler= TextEditingController();
    final TextEditingController AddressControler = TextEditingController();
    final TextEditingController DistrictControler = TextEditingController();
    //Name
    final NameField = TextFormField(
      onChanged: (value) {
        Name = value;
      },
      autofocus: false,
      controller: NameControler,
      onSaved: (value) {

      },
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        labelText:"பெயர்",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
    //Address
    final AddressField = TextFormField(
      onChanged: (value) {
        Address= value;
      },
      autofocus: false,
      controller: AddressControler,
      onSaved: (value) {

      },
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        labelText:"முகவரி",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
    //District
    final DistrictField = TextFormField(
      onChanged: (value) {
        District = value;
      },
      autofocus: false,
      controller: DistrictControler,
      onSaved: (value) {

      },
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        labelText:"மாவட்டம்",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
    //PhoneNumber
    final PhonenumberField = TextFormField(
      onChanged: (value) {
        Phonenumber = value.toString();
      },
      autofocus: false,
      controller: PhonenumberControler,
      onSaved: (value) {

      },
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        labelText:"தொலைபேசி எண்",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
    //Submit
    final LoginButton=ElevatedButton(
          onPressed: () async{
            print(Name);
            print(Address);
            print(Phonenumber);
            print(District);
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => AnotherResponce()));
          }, child: Text("சமர்ப்பிக்கவும்"),
          style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
        )
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("AgriSakthi_Vivasayam"),
      ),
      body:Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
        child: Column(
          children: [
            //BackgroundDesign(),
            Padding(
              padding: const EdgeInsets.all(0),
              child: Container(
                  height: 200,
        child: Image.asset("assets/agrisakthi.jpg")),
            ),
                  SizedBox(height: 5),
                  NameField,
                  SizedBox(height: 10),
                  PhonenumberField,
                  SizedBox(height: 15),
                  AddressField,
                  SizedBox(height: 10),
                  DistrictField,
                  SizedBox(height: 10),
                  LoginButton,
                ],
              ),

          ),
        );
  }
}
