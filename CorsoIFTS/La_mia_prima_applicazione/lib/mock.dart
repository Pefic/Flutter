import 'package:mio_primo/chat_detail_screen.dart';

import 'model.dart';

class Urls {
  static const String avatar1 =
      "https://gravatar.com/avatar/7b0c5d1850c460319e9140c921672a4a?s=400&d=robohash&r=x";
  static const String avatar2 =
      "https://gravatar.com/avatar/443fe3b412ea61efc90e42c350eee0a5?s=400&d=robohash&r=x";
  static const String avatar3 =
      "https://gravatar.com/avatar/7e4196793dbc32d818434261208bb8ce?s=400&d=robohash&r=x";
  static const String avatar4 =
      "https://gravatar.com/avatar/46dec43b2473eebf5e7a6fc70e9c116f?s=400&d=robohash&r=x";
}

class ContattiMock {
  static int whoiam = 9;

  static final List<Messaggio> _messaggi = [
    Messaggio("Ciao, come stai?", 2, whoiam, DateTime.now()),
    Messaggio("Bene, grazie! Tu come stai?", whoiam, 2, DateTime.now()),
    Messaggio(
        "Bene, un po' stanco di lavorare ma per il resto tutto alla grande.",
        2,
        whoiam,
        DateTime.now()),
    Messaggio("Dove vai in vacanza?", 2, whoiam, DateTime.now()),
  ];

  static List<Messaggio> getMessaggiByContattoId(int contattoId) {
    var messaggi = <Messaggio>[];
    for (Messaggio messaggio in _messaggi) {
      if (messaggio.senderId == 2) {
        messaggi.add(Messaggio(messaggio.testo, contattoId,
            messaggio.recipientId, messaggio.dateTime));
      } else {
        messaggi.add(Messaggio(messaggio.testo, messaggio.senderId, contattoId,
            messaggio.dateTime));
      }
    }
    return messaggi;
  }

  static Messaggio newMessage(String testo, int contattoId) {
    return Messaggio(testo, whoiam, contattoId, DateTime.now());
  }
}
