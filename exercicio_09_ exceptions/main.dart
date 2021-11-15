/*
    Exceptions in Dart
    https://dart.dev/guides/language/language-tour#exceptions
 */

void main(List<String> args) {
  try {
    firstCustomException();
    // secondCustomException();
  } on FirstCustomException catch (e, s) {
    print(e.cause.toUpperCase());
    print('Stack trace:\n $s');
  } on SecondCustomException catch (e) {
    print(e.cause.toUpperCase());
  } catch (e, s) {
    print('Exception details:\n $e');
    print('Stack trace:\n $s');
  } finally {
    print('BLOCO SEMPRE SERÁ EXECUTADO, TENDO OU NÃO ERRO');
  }
  print('END MAIN');
}

/// Custom Exception
/// Duas maneiras diferentes de declarar o método de lançar o erro.
/// Como um método normal ou usando o operador "=>"
/// Os métodos tem de chamar uma classe que deve implementar "Exception"

class FirstCustomException implements Exception {
  String cause;
  FirstCustomException(this.cause);
}

Never firstCustomException() {
  throw FirstCustomException('Frase personalizada do erro 0');
}

class SecondCustomException implements Exception {
  String cause;
  SecondCustomException(this.cause);
}

Never secondCustomException() =>
    throw SecondCustomException('Frase personalizada do erro 1');
