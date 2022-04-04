Appunti Dart/Flutter
// in questo caso inizializzo una variabile mappa senza un valore attuale con chiave numero e valore stringhe.
//late Map<int, List<String>> mappa2;
//
Es 1:
void main(){
List<String> listaDiStringhe = ['ciao', 'Giuseppe'];
  print(listaDiStringhe);
}

Es 2:
void main(){
List<String> listaDiStringhe = ['ciao', 'Giuseppe'];
  var listaDiNumeri = [1,2,3,4,5,6,7,8,9,10];
  print(listaDiStringhe);
  print(listaDiNumeri);
  List<String>lista = List.of(['ciao','marco']);
  print(lista);
}

Es 3:
void main(){
List<String> listaDiStringhe = ['ciao', 'Giuseppe'];
  var listaDiNumeri = [1,2,3,4,5,6,7,8,9,10];
  print(listaDiStringhe);
  print(listaDiNumeri);
  List<String>lista = List.of(listaDiStringhe);
  print(lista);
}

Es 4:
void main(){
List<String> listaDiStringhe = ['ciao', 'Giuseppe'];
  var listaDiNumeri = [1,2,3,4,5,6,7,8,9,10];
  print(listaDiStringhe);
  print(listaDiNumeri);
  List<String>lista = List.of(listaDiStringhe);
  listaDiStringhe.add('luca');
  print(lista);
  print(listaDiStringhe);
}

Es 5:
//L’istruzione Set non permette duplicati
void main(){
  Set<String> stringSet = {'','ciao','ciao'};
  print(stringSet);
}
//Risultato
{, ciao}

Es 6:
void main(){
  //Set<String> stringSet = {'','ciao','ciao'};
  var stringSet = {'lala','lolo','ciaociao'};
  print(stringSet);
}

Es 7:
void main(){
  //Set<String> stringSet = {'','ciao','ciao'};
  var stringSet = <String>{};
  stringSet.add('ciao');
  print(stringSet);
}

Es 8:
void main(){
  //Set<String> stringSet = {'','ciao','ciao'};
  var stringSet = <String>{};
  stringSet.add('ciao');
  stringSet.addAll([“”,’Ciao']);
  print(stringSet);
}
//Risultato
{ciao, Ciao}

Es 9:
//varie possibilità di inizializzare una Mappa.
void main(){
  var mappa = Map<String, List<String>>();
  mappa = new Map<String, List<String>>();
  mappa = <String, List<String>>{};
  print(mappa);
}

Es 10:
void main(){
  var mappa = Map<String, List<String>>();
  mappa = new Map<String, List<String>>();
  mappa = <String, List<String>>{};
  mappa.putIfAbsent("ciao",()=>["",""]);
  print(mappa);
}
// Risultato
{ciao: [, ]}

Es 10:
void main(){
  var mappa = Map<String, List<String>>();
  mappa = new Map<String, List<String>>();
  mappa = <String, List<String>>{};
  mappa.putIfAbsent("ciao",()=>["",""]);
  mappa["string"]=['ciao','ciaociao'];
  print(mappa);
}
//Risultato
{ciao: [, ], string: [ciao, ciaociao]}









1
