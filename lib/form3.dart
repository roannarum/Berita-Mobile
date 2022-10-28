import 'package:flutter/material.dart';

class formApp extends StatefulWidget {
  @override
  _formAppState createState() => _formAppState();
}

class _formAppState extends State<formApp> {
  TextEditingController controllernama = new TextEditingController();

  @override
  void initState() {
    super.initState();
    _dropDownlanjut = getDropDownMenuItems();
    _currentlanjut = _currentlanjut;
  }

  List _lanjut = ["-- Status Intervensi --", "Lanjut", "Selesai"];

  List<DropdownMenuItem<String>> _dropDownlanjut;
  String _currentlanjut = '-- Status Intervensi --';

  List<DropdownMenuItem<String>> getDropDownMenuItems() {
    List<DropdownMenuItem<String>> items = new List();
    for (String proses in _lanjut) {
      items.add(new DropdownMenuItem(value: proses, child: new Text(proses)));
    }
    return items;
  }

  void changedDropDownLanjut(String selectedLanjut) {
    //print("Selected city $selectedJk, we are going to refresh the UI");
    setState(() {
      _currentlanjut = selectedLanjut;
    });
  }

  void _kirimdata() {
    AlertDialog alertDialog = new AlertDialog(
      content: new Container(
        height: 200.0,
        child: new Column(
          children: [
            new Text("Nama Lengkap : ${controllernama.text}"),
            new Text("Pilihan : ${_currentlanjut}"),
            RaisedButton(
              child: new Text("OK"),
              onPressed: () => Navigator.pop(context),
            )
          ],
        ),
      ),
    );
    showDialog(context: context, child: alertDialog);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Form App"),
      ),
      body: new Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: controllernama,
              decoration: new InputDecoration(
                hintText: "Nama User",
                labelText: "Nama",
                icon: Icon(Icons.people),
                border: OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(10.0)),
              ),
              keyboardType: TextInputType.numberWithOptions(),
            ),
            SizedBox(height: 18.0),
            // alamat
            new DropdownButton(
              value: _currentlanjut,
              items: _dropDownlanjut,
              onChanged: changedDropDownLanjut,
            ),
            RaisedButton(
              child: Text(
                "Submit",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: () {
                _kirimdata();
              },
            ),
          ],
        ),
      ),
    );
  }
}
