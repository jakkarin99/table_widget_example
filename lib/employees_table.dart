import 'package:flutter/material.dart';

import 'employee_cell.dart';
import 'employee.dart';

class EmployeesTable extends StatelessWidget {
  const EmployeesTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: <TableRow>[
        TableRow(
          decoration: BoxDecoration(
            color: Colors.green[200],
          ),
          children: const <Widget>[
            EmployeeCell(title: 'Name', isHeader: true),
            EmployeeCell(title: 'Role', isHeader: true),
            EmployeeCell(title: 'Hourly rate', isHeader: true),
          ],
        ),
        ...Employee.getEmployees().map((employee) {
          return TableRow(children: [
            EmployeeCell(title: employee.name),
            EmployeeCell(title: employee.role),
            EmployeeCell(title: '\$ ${employee.hourlyRate}'),
          ]);
        }),
      ],
    );
  }
}