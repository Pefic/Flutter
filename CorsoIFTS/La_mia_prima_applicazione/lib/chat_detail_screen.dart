/*import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:mio_primo/theme.dart';

import 'model.dart';

class ChatDetailScreen extends StatefulWidget {
  const ChatDetailScreen({Key? key}) : super(key: key);

  @override
  State<ChatDetailScreen> createState() => _ChatDetailScreenState();
}

class _ChatDetailScreenState extends State<ChatDetailScreen> {
  List<Messaggio>? _messaggi;
  var txtController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Contatto contatto = ModalRoute.of(context)?.settings.arguments as Contatto;
    double size = MediaQuery.of(context).size.height;

    _messaggi = _messaggi ?? [Messaggio("Ciao, come stai?", 1, 2, DateTime.now()),
      Messaggio("Bene, tu?", 2, 1, DateTime.now())];

    return Scaffold(
      appBar: AppBar(
        title: Text(contatto.name),
        centerTitle: true,
        actions: [
          CircleAvatar(
            radius: 25,
            child: Text(contatto.name[0]),
          )
        ],
      ),
      body: Stack(
        children: [
          Container(
            color: const Color.fromRGBO(233, 233, 233, 1),
            height: size,
            child: ListView.builder(
              itemCount: _messaggi!.length,
              itemBuilder: (context, index) {
                var messaggio = _messaggi![index];
                return Bubble(
                  style: messaggio.senderId == 1 ? TemaMiaPrimaApp.styleMe : TemaMiaPrimaApp.styleSomebody,
                  child: Text(messaggio.testo),
                );
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: txtController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Scrivi il tuo messaggio"),
                    ),
                  ),
                  const SizedBox(width: 15),
                  FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          var testo = txtController.value.text;
                          _messaggi!.add(Messaggio(testo, 1, 2, DateTime.now()));
                          txtController.text = "";
                        });
                      }, child: const Icon(Icons.send))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
*/