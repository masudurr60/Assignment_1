
import 'dart:io';
abstract class Role {
  void displayRole();
}
class Person implements Role {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);

  @override
  void displayRole() {
  }
}

class Student extends Person {
  String studentID;
  String grade;
  List<int> courseScores;

  Student(super.name,super.age, super.address, this.studentID, this.grade, this.courseScores);

  @override
  void displayRole() {
    print("Role: Student");
  }
  double averageScore() {
    return courseScores.reduce((a, b) => a + b) / courseScores.length;
  }

  void displayInfo() {
    print("\nStudent Information:");
    displayRole();
    print("Name: $name");
    print("Age: $age");
    print("Address: $address");
    print("Average Score: ${averageScore().toStringAsFixed(1)}");
  }
}

class Teacher extends Person {
  String teacherID;
  List<String> coursesTaught;

  Teacher(super.name,super.age, super.address, this.teacherID, this.coursesTaught);

  @override
  void displayRole() {
    print("Role: Teacher");
  }
  void displayInfo() {
    print("\nTeacher Information:");
    displayRole();
    print("Name: $name");
    print("Age: $age");
    print("Address: $address");
    print("Courses Taught:");
    for(int i = 0; i < coursesTaught.length; i++) {
        print("- ${coursesTaught[i]}");
      }
    }
  }
  class StudentManagementSystem{}
void main() {
  Student student = Student('John Doe', 20, "123 Main St", "S123", "A", [90, 85, 82]);
  Teacher teacher = Teacher('Mrs.Smith', 35, "456 Oak St", "T456", ["Math", "English", "Bangla"]);

  student.displayInfo();
  teacher.displayInfo();
}
