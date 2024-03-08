class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);
}

void main() {

  Person person1 = Person("sami endale", 22, "kara kore");
  Person person2 = Person("misami enda", 21, "6 kilo");

  print("person1: ${person1.name}, ${person1.age}, ${person1.address}");
  print("person2: ${person2.name}, ${person2.age}, ${person2.address}");

  person1.age = 24;
  person2.address = "5 kilo";

  print("person1: ${person1.name}, ${person1.age}, ${person1.address}");
  print("person2: ${person2.name}, ${person2.age}, ${person2.address}");
}