class Contatto {
  final int id;
  final String name;
  final String email;
  final String phone;
  final String username;

  Contatto({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.username,
  });

  factory Contatto.fromJson(Map<String, dynamic> json){
    return Contatto(id:
      json["id"],
      name: json["name"],
      email: json["email"],
      phone: json["phone"],
      username: json['username'],
    );
  }
}

class Messaggio {
  String testo;
  int senderId;
  int recipientId;
  DateTime dateTime;

  Messaggio(this.testo, this.senderId, this.recipientId, this.dateTime);
}