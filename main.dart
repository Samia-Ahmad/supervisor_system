
import './models/employee.dart';
import './models/supervisor.dart';
import './system/enterprise_system.dart';

void main() {
var enterprise = EnterpriseSystem();

var employee1 = Employee(name: "ahmad", id: 1, checkinTime: "9:00");
var employee2 = Employee(name: "Ali", id: 2, checkinTime: "9:10");

var supervisor1 = Supervisor(id: 1, name: "mohammad");

enterprise.addEmployees(employee1);
enterprise.addEmployees(employee2);
enterprise.addSupervisors(supervisor1);

enterprise.assignSupervisorToEmployee("mohammad", "ahmad"); 


enterprise.checkIn(1, "9:00");
}