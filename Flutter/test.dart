void main() {
  print_label(true, "starter_func");
  
  //starter_func();
  //func_help_2();
  //if_else_functions();
  //switch_case_break_funcs(10);
  //switch_case_break_funcs(20);
  //switch_case_break_funcs(50);
  //for_loop_func();
  //while_loop_func();
  //list_func();
  //for_each_func();
  //maps_func();
  //functions_func();
  //functions_return_func();
  test_class();
  
  print_label(false, "starter_func");  
}

class Person{
  String name;
  //this makes it private
  String _privateVar;
  int age;
  
  Person(this.name, this._privateVar, this.age);
}

class OptionalPerson{
  String name;
  int age;
  
  OptionalPerson({this.name, this.age});
}

class PersonWithMethod{
  String name;
  int age;
  
  PersonWithMethod(this.name, this.age);
  
  void walks(){
    print(name + " is walking");
  }
}

class PersonNull{
  String name;
  
  PersonNull(this.name);
}

test_class() {
  print("testing Person class:");
  var abdi = Person("abdi", "timer", 27);
  // you can also use the new keyword
  var tom = new Person("tom","jones", 45);
  print(abdi.name);
  print(tom.name);
  
  print("testing optional person class:");
  var opt_abdi = OptionalPerson(name:"abdi");
  // you can also use the new keyword
  var opt_tom = new OptionalPerson(age:45);
  print(opt_abdi.name);
  print(opt_tom.name);
  
  print("testing methods:");
  var mabdi = PersonWithMethod("abdi", 27);
  var mtom = new PersonWithMethod("tom", 43);
  mabdi.walks();
  mtom.walks();
  
  print("testing null inputs to class");
  var nullAbdi = PersonNull(null);
  print(nullAbdi.name); //returns null
  print(nullAbdi?.name);
  print(nullAbdi?.name??"placeholder name");
  
}

functions_return_func() {
  var name = "abdi";
  
  String return_name(String name2){
    return name2;
  }
  
  var returned_name = return_name(name);
  print(returned_name);
}

functions_param_func() {
  var x = 10;
  
  void printIt() {
    print(x);
  }
  
  void printName(String name) {
    print(x);
    print(name);
  }
  
  void optionalParam(String name, [String optional]) {
    // use [] on func parameter to specify that its optional
    print(x);
    print(name);
    // ?? means if it is null, display what is to the right
    print(optional);
    print(optional??"");
    print(optional??optional);
  }
  
  //printIt();
  //printName("abdi");
  optionalParam("abdi");
  optionalParam("abdi", "optional");
}


maps_func() {
  var map1 = {
    "name" : "abdi",
    "age" : 27
  };
  
  print(map1);
  print(map1["name"]);
  
  print(map1.keys);
}

for_each_func() {
  var list1 = [
    "a",
    "b",
    "c"
  ];
  
  list1.forEach( (item) {
    print(item);
  });
}

list_func() {
  var list1 = [
    "a",
    "b",
    "c"
  ];
  print(list1);
  print(list1[0]);
}

while_loop_func(){
  var x = 10;
  while(x<20){
    print(x);
    x++;
  }
}

for_loop_func(){
  for (int x = 1; x <= 5; x ++) {
    //print(x);
  }
  for (int x = 100; x >= 95; x--){
    //print(x);
  }
  // with if else
  for (int x = 1; x <= 10; x ++) {
    if (x == 5){
      print("I found 5"); 
      // break will break the loop
      //break;
      // continue will continue on
      continue;
    }
    print(x);
  }
}

void switch_case_break_funcs(var input) {
  var x = input;
  switch(x){
    case 10:
      print("value is 10");
      break;
    case 20:
      print("value is 20");
      break;
    default:
      print("I dont know");
  }
}

void if_else_functions() {
  var x = 18;
  if (x<18) {
    print("not eligble to vote.");
  } else if (x ==18) {
    print("just became eligble.");
  } else {
    print("Eligble");
  }
}

void func_help_2() {
  var x = "abdi";
  print(x);
  var y = 5;
  print(y);
  // find data type
  print(x.runtimeType);
  print(y.runtimeType);
  
  //final variable cant be reassigned
  final z = "z";
  // you cant do this: z = "tom";
  
  //constant values
  const pi = 3.14;
  // you cant do this: pi = 5.6;
  
  //final can be modified, but const can't. 
}

void print_label(bool isHeader, String funcName) {
  if (isHeader) {
    print('*' * 10);
    print("Starting with $funcName...");
  } else {
    print("\n" + ('*' * 10));
    print("$funcName ended.");
  }
  print('*' * 10 + "\n");
}

void starter_func() {
  // simple numerical data types
  int a = 5;
  double b = 5.5;
  // when you are unsure of the data type
  // int and double are subclass of num
  num c = 100.56;
  
  // print values
  print(a);
  print(b);
  print(c);
  
  // string datatype
  String abdi = "abdi";
  print(abdi);
  
  // compare str with str number
  int two_num = 2;
  String two_str = "2";
  print(two_num == two_str);
  print(two_num.toString() == two_str);
  
  // booleans
  bool flag = false;
  print(flag);
  
  // combining int and strings
  int no_5 = 5;
  String str_050 = "050";
  // converting int to str to append to str
  print(no_5.toString() + str_050);
  
  // combing str and ints
  String name = "abdi";
  num number = 123.45;
  // use $ in string to represent variable
  // string interpolation
  print("$name $number");
  //use {} to capture strings
}