import 'package:flutter/material.dart';
import 'package:mio_primo/chat_list.dart';
import 'package:mio_primo/theme.dart';

class ChatDetailScreen extends StatefulWidget {
  const ChatDetailScreen({Key? key}) : super(key: key);

  @override
  State<ChatDetailScreen> createState() => _ChatDetailScreenState();
}

class _ChatDetailScreenState extends State<ChatDetailScreen> {
  @override
  Widget build(BuildContext context) {
    Contatto contatto = ModalRoute.of(context)?.settings
        .arguments as Contatto;
    return Scaffold(
      appBar: AppBar(title: Text(contatto.nominativo), centerTitle: true,),
      body: Container(
        child: Column(
          chilren: [
            ListView(
              padding: EdgeInsets.all(0.0),
              children: [
                Bubble(
                  style: TemaMiaPrimaApp.styleMe,
                  child: const Text("whats'up"),
                  bubble(
                    style: TemaMiaPrimaApp.styleSomebody,
                    child: const Text("I've been having a problem with my computer"),
                  )
                ),
              ],
            ),
            Row(
              children: [
                const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "scrivi il tuo messaggio"
                ),
            ),
                IconButton(onPressed: (){}, icon: Icon(Icons.send))
              ],
            )
          ],
        ),
      ),
    );
  }
}




/*class ChatDetailScreen extends StatelessWidget {
  //Contatto contatto;//quando si usa questo metodo bisogno commentare il costruttore per evitare l'errore.
  //ChatDetailScreen(this.contatto);

  @override
  Widget build(BuildContext context) {
    Contatto contatto = ModalRoute.of(context)?.settings.arguments as Contatto;
    return Scaffold(
      appBar: AppBar(title: Text(contatto.nominativo), centerTitle: true,),
      body: Container(
        child: Column(
          children: [
            Text("Nome: " + contatto.nominativo),
            Text("Numero di Telefono: " + contatto.numeroDiTelefono),
          ],
        ),
      )
    );
    //return Scaffold(
      //appBar: AppBar(title: Text("${contatto.nominativo}"), centerTitle: true),
      //body: Container(
          //child : Text(contatto.nominativo),
      //),
    //);
  }
}*/
