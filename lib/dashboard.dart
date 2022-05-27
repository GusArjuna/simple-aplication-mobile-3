import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pertemuan_3/halaman1.dart';
import 'package:pertemuan_3/rincian.dart';

class dashboard extends StatefulWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  _dashboardState createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Catalogue'),
        ),
        body: Column(children: <Widget>[
          Container(
              height: (MediaQuery.of(context).size.height) - 80,
              color: Colors.white,
              child: Column(children: <Widget>[
                Row(children: <Widget>[
                  Container(
                      margin: EdgeInsets.all(1),
                      child: Column(children: <Widget>[
                        Image.asset(
                          'assets/image/tisu.jpg',
                          width: 200,
                          height: 200,
                        ),
                        ElevatedButton(
                            child: Text('Details'),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => rincian(
                                      gambar: 'assets/image/tisu.jpg',
                                      harga: 20000,
                                      nama: 'Tisu'),
                                ),
                              );
                            }),
                      ])),
                  Container(
                      margin: EdgeInsets.all(1),
                      child: Column(children: <Widget>[
                        Image.asset(
                          'assets/image/masker.jpg',
                          width: 200,
                          height: 200,
                        ),
                        ElevatedButton(
                            child: Text('Details'),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => rincian(
                                      gambar: 'assets/image/masker.jpg',
                                      harga: 10000,
                                      nama: 'Masker'),
                                ),
                              );
                            }),
                      ])),
                ]),
                Row(children: <Widget>[
                  Container(
                      margin: EdgeInsets.all(1),
                      child: Column(children: <Widget>[
                        Image.asset(
                          'assets/image/celana.jpg',
                          width: 200,
                          height: 200,
                        ),
                        ElevatedButton(
                            child: Text('Details'),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => rincian(
                                      gambar: 'assets/image/celana.jpg',
                                      harga: 200000,
                                      nama: 'Celana'),
                                ),
                              );
                            }),
                      ])),
                  Container(
                      margin: EdgeInsets.all(1),
                      child: Column(children: <Widget>[
                        Image.asset(
                          'assets/image/haram.jpg',
                          width: 200,
                          height: 200,
                        ),
                        ElevatedButton(
                            child: Text('Details'),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => rincian(
                                      gambar: 'assets/image/haram.jpg',
                                      harga: 100000,
                                      nama: 'Baju Haram'),
                                ),
                              );
                            }),
                      ])),
                ]),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: ElevatedButton(
                      child: Text('Logout'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const halaman1(),
                          ),
                        );
                      }),
                )
              ])),
        ]));
  }
}
