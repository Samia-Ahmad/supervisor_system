
import '../models/employee.dart';
import '../models/supervisor.dart';

class EnterpriseSystem {
  List<Employee>employees = [];
  List<Supervisor>supervisors = [];

  void addEmployees(Employee employee) {
   employees.add(employee);
   print("The Employee added to the system successfully");
  }

  void addSupervisors(Supervisor supervisor) {
  supervisors.add(supervisor);
   print("The Supervisor added to the system successfully");
  }

  // void assignSupervisorToEmployee(String employeeId , Employee employee ,String SupervisorID) {
  //  for (var employee in employees ) {
  //   if employee.id == employeeId {
  //   SupervisorID.addEmployee(employee);
  //   }
  //   else {
  //     print("employee not found");
  //   }
  //  }
  // }


// void assignSupervisorToEmployee(Supervisor supervisor, Employee employee, String employeeName , String supervisorName ) {
//     final SupervisorName = supervisors.firstWhere((s) => s.name == supervisorName , 
//   orElse: () => throw Exception("The supervisor not found"),);

//     SupervisorName.addEmployee(employee);
  
// }

void assignSupervisorToEmployee(String supervisorName, String employeeName) {
  final supervisor = supervisors.firstWhere((s) => s.name == supervisorName,
      orElse: () => throw Exception("Supervisor not found"));

  final employee = employees.firstWhere((e) => e.name == employeeName,
      orElse: () => throw Exception("Employee not found"));

  supervisor.addEmployee(employee);
}


  void checkIn(int employeeId , String checkinTime) {
  final emp = employees.firstWhere((e) => e.id == employeeId , 
  orElse: () => throw Exception("The Employee not found"),);

  
    emp.checkinTime = checkinTime; 
  print("the Employee is checkin at : ${emp.checkinTime}");

}


}