abstract class Employee {
  void work();
}

class Teacher extends Employee {
  @override
  void work() {
    print('Teacher is teaching.');
  }
}

class Doctor extends Employee {
  @override
  void work() {
    print('Doctor is treating patients.');
  }
}

class Engineer extends Employee {
  @override
  void work() {
    print('Engineer is building software.');
  }
}

class Driver extends Employee {
  @override
  void work() {
    print('Driver is driving a car.');
  }
}


void main() {
  List<Employee> employees = [
    Teacher(),
    Doctor(),
    Engineer(),
    Driver(),
  ];

  for (Employee employee in employees) {
    employee.work();
  }
}