import './employee.dart';
class Supervisor {
  String name;
  int id;
  List<Employee> ListOfEmployees= [];

  Supervisor({required this.id, required this.name});

  void addEmployee(Employee employee ) {
  ListOfEmployees.add(employee);
  }

  
}