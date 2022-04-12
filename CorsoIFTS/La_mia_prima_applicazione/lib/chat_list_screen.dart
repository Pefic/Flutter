import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'model.dart';

class ChatListScreen extends StatefulWidget {
  const ChatListScreen({Key? key}) : super(key: key);

  @override
  State<ChatListScreen> createState() => _ChatListScreenState();
}

class _ChatListScreenState extends State<ChatListScreen> {

  late Future<List<Contatto>> _futureListaContattii;

  Future<List<Contatto>> getContatti() async {
    var response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
    if (response.statusCode == 200){
      List<Contatto> contatti = [];
      var list = jsonDecode(response.body);
      for(Map<String, dynamic> cont in list){
        contatti.add(Contatto.fromJson(cont));
      }
      return contatti;
    }else{
      throw Exception("Non è stato possibile caricare i dati dal server");
    }
  }

  @override
  void initState() {
    super.initState();
    _futureListaContattii = getContatti();
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Contatti"),
          centerTitle: true,
          actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.add))],
        ),
        body: FutureBuilder<List<Contatto>>(
          future: _futureListaContattii,
          builder: (context, snapshot){
            if (snapshot.hasData){
              var contatti = snapshot.data;
              return SafeArea(
                  child: ListView.separated(
                    itemCount: contatti!.length,
                    separatorBuilder: (context, index) {
                      return const Divider(height: 2);
                    },
                    itemBuilder: (context, index) {
                      Contatto contatto = contatti[index];
                      return ListTile(
                        leading: CircleAvatar(
                          radius: 30.0,
                          child: Text(contatto.name[0]),
                        ),
                        title: Text(contatto.name),
                        subtitle: Text(contatto.phone),
                        trailing: Icon(Icons.arrow_forward),
                        onTap: () {
                          Navigator.pushNamed(context, "/infoContatto", arguments: contatto.id);
                        },
                      );
                    },
                  ));
            }
            else if (snapshot.hasError){
              return Text("Errore durante il caricamento");
            }
            return Center(child: CircularProgressIndicator());
          },
        ),
      );
  }
}
