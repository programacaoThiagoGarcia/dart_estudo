/*

    Generics in Dart
    https://dart.dev/guides/language/language-tour#generics

 */

void main() {
  var a = A();
  var _ = B();
  var c = C(a);
  var list = <A>[];
  list.add(a);
  list.add(a);
  list.add(a);
  list.add(a);
  list.add(a);
  print(c.firstItem(list));
}

class A {
  final String a = 'A';
}

class B {
  final String b = 'B';
}

class D extends A {
  final String d = 'D';
}

class C<T extends A> {
  C(T a) {
    assert(a is A);
  }
  T? firstItem<T>(List<T> list) {
    if (list.isEmpty) {
      return null;
    }
    return list.first;
  }
}
