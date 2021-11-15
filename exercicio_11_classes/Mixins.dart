mixin Instrumentista on Musico {
  bool tocaCordas = false;
  bool tocaTeclas = false;
  bool tocaSopro = false;

  void skills() {
    if (tocaCordas) {
      print('Cordas');
      return;
    }
    if (tocaTeclas) {
      print('Teclas');
      return;
    }
    if (tocaSopro) {
      print('Sopro');
      return;
    }
    print('Não toca Nada');
  }
}

class Musico extends Person {
  late final bool instrumentista;
  late final bool arranjador;
  Musico(String nome,this.arranjador,this.instrumentista) : super(nome);
}

class Person {
  late String nome;

  Person(this.nome);
}

class Maestro extends Musico with Instrumentista {
  Maestro(String nome, bool arranjador, bool instrumentista) : super(nome, arranjador, instrumentista);

}
