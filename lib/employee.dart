class Employee {
  final String name;
  final String role;
  final int hourlyRate;

  Employee(this.name, this.role, this.hourlyRate);

  static List<Employee> getEmployees() {
    return [
      Employee('Waylon Smithers, Jr', 'Assistant', 5),
      Employee('Homer J. Simpson', 'Safety inspector', 22),
      Employee(
          'Carlton "Carl" Carlson, Jr', 'Safety operations supervisor', 25),
      Employee('Lenford "Lenny" Leonard', 'Safety inspector', 22),
      Employee('Charlie', 'Dangerous emissions supervisor', 21),
      Employee('Mindy Simmons', 'Safety inspector', 23),
    ];
  }
}
