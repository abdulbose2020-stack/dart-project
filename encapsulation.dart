class Person {
    String name = '';
    int _age = 0;

    int get age {
        return _age;
    }
    set age (int value) {
      if (value >= 0) {
        _age = value;
      }
    }
}


void main() {
  Person person = Person();
  person.name = 'Ahmad';
  person.age = 20;

  print(person.name);
  print(person.age);

  person.age = -5;
  print(person.age);

}