import 'package:flutter/material.dart';
import 'package:pertama/DataBeritaModel.dart';

class DetailBerita extends StatelessWidget {
  final DataBeritaModel dataBeritaModel;

  const DetailBerita({Key? key, required this.dataBeritaModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(dataBeritaModel.name),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                  height: 250,
                  child: Image.network(
                    dataBeritaModel.ImageUrl,
                    width: 400,
                    fit: BoxFit.fill,
                    height: 50,
                  )),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        dataBeritaModel.name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Divider(),
                      Text(dataBeritaModel.desc,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 13))
                    ]),
              ),
            ],
          ),
        ));
  }
}
