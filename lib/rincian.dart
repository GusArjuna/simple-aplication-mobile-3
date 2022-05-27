import 'package:flutter/material.dart';
import 'package:pertemuan_3/dashboard.dart';
import 'package:pertemuan_3/halaman1.dart';

class rincian extends StatefulWidget {
  String gambar, nama;
  int harga;
  rincian(
      {Key? key, required this.gambar, required this.harga, required this.nama})
      : super(key: key);

  @override
  _rincianState createState() => _rincianState();
}

class _rincianState extends State<rincian> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Details'),
        ),
        body: Column(children: <Widget>[
          Container(
              height: (MediaQuery.of(context).size.height) - 80,
              width: (MediaQuery.of(context).size.width),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 40),
                  child: Image.network(
                    ${widget.gambar},
                    width: 200,
                    height: 200,
                  ),
                ),
                Container(
                    child: Column(children: <Widget>[
                  Text('Name : ${widget.nama}'),
                  Text('Price : ${widget.harga}')
                ])),
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: ElevatedButton(
                      child: Text('Back'),
                      onPressed: () {
                        Navigator.pop(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const dashboard(),
                          ),
                        );
                      }),
                ),
              ])),
        ]));
  }
}
