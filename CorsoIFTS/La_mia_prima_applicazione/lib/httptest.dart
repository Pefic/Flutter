import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'model.dart';
import 'dart:convert';

class InfoContatto extends StatefulWidget {
  const InfoContatto({Key? key}) : super(key: key);

  @override
  State<InfoContatto> createState() => _InfoContattoState();
}

class _InfoContattoState extends State<InfoContatto> {
  late Future<Contatto> _futureContatto;

  Future<Contatto> getContatto(int id) async {
    var response = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/users/$id"));

    return Contatto.fromJson(jsonDecode(response.body));
  }

  void initState() {}

  @override
  Widget build(BuildContext context) {
    int idContatto = ModalRoute.of(context)?.settings.arguments as int;
    _futureContatto = getContatto(idContatto);
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: const Text('Contatto'),
        centerTitle: true,
      ),
      body: FutureBuilder<Contatto>(
          future: _futureContatto,
          builder: (context, snapshot) {
            var contatto = snapshot.data;
            return Center(
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.greenAccent,
                      //border: Border.all(width: 10),
                      //borderRadius: BorderRadius.only(
                      //topRight: Radius.circular(40.0),
                      //topLeft: Radius.circular(40.0),
                      //),
                    ),
                    child: Row(
                        //border: Border.all(width: 10),
                        //borderRadius: const BorderRadius.all(Radius.circular(50)),
                      children: [
                        Center(child: Container(
                            margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 20.0),
                            child: Text('Nome: ' + contatto!.name))),
                      ],
                    ),
                  ),
                  Center(child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.green,
                              //border: Border.all(width: 10),
                              //borderRadius: BorderRadius.only(
                                //topRight: Radius.circular(40.0),
                                //topLeft: Radius.circular(40.0),
                              //),
                            ),
                    child: Row(
                      children: [
                        Container(
                            margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 20.0),
                            child: Text('eMail: ' + contatto!.email)),
                      ],
                    ),
                  )),
                  Center(child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.greenAccent,
                      //border: Border.all(width: 10),
                      //borderRadius: BorderRadius.only(
                        //bottomLeft: Radius.circular(40.0),
                        //bottomRight: Radius.circular(40.0),
                      //),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.phone),
                        Container(
                            margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 20.0),
                            child: Text('Telefono: ' + contatto!.phone)),
                      ],
                    ),
                  )),
                  Center(child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      //border: Border.all(width: 10),
                      //borderRadius: BorderRadius.only(
                        //bottomLeft: Radius.circular(40.0),
                        //bottomRight: Radius.circular(40.0),
                      //),
                    ),
                    child: Row(
                      children: [
                        Container(
                            margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 20.0),
                            child: Text('UserName: ' + contatto.username)),
                      ],
                    ),
                  )),

                ],
              ),
            );
          }),
    );
  }
}
