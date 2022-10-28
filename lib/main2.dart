import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tugas Formulir',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Formulir'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _jk = "";

  TextEditingController controllerNPM = TextEditingController();
  TextEditingController controllerNama = TextEditingController();
  TextEditingController controllerAlamat = TextEditingController();

  List<String> jurusan = [
    "Sistem Informasi",
    "Teknologi Informasi",
    "Informatika",
    "Teknik Industri",
    "Akuntansi",
    "Manajemen",
    "Hukum",
    "Psikologi"
  ];
  String _jurusan = "Sistem Informasi";

// HASIL DATANYAAAAAAA
  void kirimdata() {
    AlertDialog alertDialog = AlertDialog(
        content: SizedBox(
          height: 300.0,
          child: Column(
            children: <Widget>[Text("NPM : ${controllerNPM.text}"),
              Text("Nama Lengkap : ${controllerNama.text}"),
              Text("Jenis Kelamin : ${_jk}"),
              Text("Jurusan : ${_jurusan}"),
              Text("Alamat : ${controllerAlamat.text}"),
              ElevatedButton(
                  onPressed: () => Navigator.pop(context), child: new Text("OK"))
        ],
      ),
    ));

    showDialog(
        context: context,
        builder: (context) => AlertDialog(content: alertDialog));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.all(20.0)),
            TextField(
                controller: controllerNPM,
                decoration: new InputDecoration(
                    hintText: "NPM",
                    labelText: "NPM",
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(20.0)))),
            Padding(
                padding: new EdgeInsets.only(
                  top: 20.0
                )),
            new TextField(
                controller: controllerNama,
                decoration: new InputDecoration(
                    hintText: "Nama Lengkap",
                    labelText: "Nama Lengkap",
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(20.0)))),
            new Padding(
              padding: new EdgeInsets.only(top: 20.0),
            ),
            new RadioListTile(
              value: "Laki-laki",
              title: new Text("Laki-laki"),
              groupValue: _jk,
              onChanged: (String? newValue) {
                setState(() {
                  _jk = newValue!;
                });
              },
              activeColor: Colors.redAccent,
            ),
            new RadioListTile(
              value: "Perempuan",
              title: new Text("Perempuan"),
              groupValue: _jk,
              onChanged: (String? newValue) {
                setState(() {
                  _jk = newValue!;
                });
              },
              activeColor: Colors.blueGrey,
            ),
            new Padding(padding: new EdgeInsets.only(top: 20.0)),
            new Row(children: <Widget>[
              new Text("Pilih jurusan : ",
                  style: new TextStyle(fontSize: 18.0, color: Colors.black)),
              new DropdownButton(
                  hint: Text("Pilih jurusan: "),
                  dropdownColor: Color.fromARGB(255, 127, 192, 245),
                  icon: Icon(Icons.arrow_drop_down),
                  iconSize: 36,
                  style: TextStyle(color: Colors.black, fontSize: 18),
                  items: jurusan.map((valueItem) {
                    return DropdownMenuItem(
                        value: valueItem, child: Text(valueItem));
                  }).toList(),
                  value: _jurusan,
                  onChanged: (newValue) {
                    setState(() {
                      _jurusan = newValue!;
                    });
                  }),
            ]),
            new Padding(padding: new EdgeInsets.only(top: 20.0)),
            new TextField(
                controller: controllerAlamat,
                maxLines: 3,
                decoration: new InputDecoration(
                    hintText: "Alamat",
                    labelText: "Alamat",
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(20.0)))),
            new Padding(padding: new EdgeInsets.only(top: 20.0)),
            ElevatedButton(
                onPressed: () {
                  kirimdata();
                },
                child: const Text("Kirim"))
          ],
        ),
      ),
    );
  }
}
