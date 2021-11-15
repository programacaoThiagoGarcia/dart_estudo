
class SuperClass{
  String? arg_1;
  String? arg_2;

  SuperClass(String arg_1,arg_2){
    this.arg_1 = arg_1;
    this.arg_2 = arg_2;
  }
  SuperClass.fromJson({required String arg_1 ,required String arg_2 }){
   this.arg_1 = arg_1;
   this.arg_2  = arg_2;
  }

  SuperClass.withLog(){
    print('SuperClassInit');
  }

}

// Construtor não vai por herança

class SubClass extends SuperClass{
  String? arg_3;
  String? arg_4;
  SubClass(String arg_1, arg_2) : super(arg_1, arg_2);

  //Named Constructor
  SubClass.All(String arg_1, arg_2, this.arg_3, this.arg_4) : super(arg_1,arg_2);

}