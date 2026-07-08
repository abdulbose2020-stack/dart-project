
//Student Management System



class Student {
  String name;
  int age;
  String country;

  Student(this.name, this.age, this.country);
}


  List<Student> students = [];

  void addStudents() {
    students.add(Student('Ahmad', 20, 'Nigeria'));
    students.add(Student('Ali', 22, 'Egypt'));
    students.add(Student('John', 19, 'Ghana'));
  }

  void viewStudents() {
    for (Student student in students) {
      print('Name: ${student.name}');
      print('Age: ${student.age}');
      print('Country: ${student.country}');
      print('---------');
    }
  }

  void searchStudent(String name) {
    bool found = false;

    for (Student student in students) {
      if (student.name == name) {
        print('Student Found: ${student.name}');
        found = true;
      }
    }

    if (!found) {
      print('Student Not Found');
    }
  }



void main() {
  addStudents();
  viewStudents();

  searchStudent('Ali');
  searchStudent('David');
}