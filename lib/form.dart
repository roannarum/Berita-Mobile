import 'package:flutter/material.dart';

class BelajarForm extends StatefulWidget {
  @override
  _BelajarFormState createState() => _BelajarFormState();
}

class _BelajarFormState extends State<BelajarForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BelajarFlutter.com"),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextFormField(
                decoration: new InputDecoration(
                    hintText: "Masukan Nama Lengkap Anda",
                    labelText: "Nama Lengkap",
                    icon: Icon(Icons.people)),
              ),
              // tambahkan komponen seperti input field disini
            ],
          ),
        ),
      ),
    );
  }
}
