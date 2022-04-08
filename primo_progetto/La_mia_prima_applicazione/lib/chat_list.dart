import 'package:flutter/material.dart';
class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Contatto> contatti = [
      Contatto("Giuseppe", "3332352525"),
      Contatto("Chiara", "5464545646546"),
      Contatto("Giulio", "547987641321"),
      Contatto("Michele", "45648912132"),
      Contatto("Daniela", "48464113546546")
    ];
    return Scaffold(
      appBar: AppBar(title: const Text("Contatti"), centerTitle: true,),
      body: SafeArea(
          child: ListView.builder(
            itemCount: contatti.length,
            itemBuilder: (context, index) {
              Contatto contatto = contatti[index];
              return ListTile(
                leading: const CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      "https://gravatar.com/avatar/7b0c5d1850c460319e9140c921672a4a?s=400&d=robohash&r=x"),
                ),
                title: Text(contatto.nominativo),
                subtitle: Text(contatto.numeroDiTelefono),
                trailing: Icon(Icons.arrow_forward),
                onTap: (){
                  Navigator.pushNamed(context, "/chatDetail", arguments: contatto);
                  //Route route = MaterialPageRoute(builder:(context){
                    //return ChatDetailScreen(contatto);
                  //});

                },
              );
            },
          )),
    );
  }
}

class Contatto {
  String nominativo;
  String numeroDiTelefono;
  Contatto(this.nominativo, this.numeroDiTelefono);
}