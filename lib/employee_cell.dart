import 'package:flutter/material.dart';

import 'employee.dart';

class EmployeeCell extends StatelessWidget {
  final String title;
  final bool isHeader;

  const EmployeeCell({
    Key? key,
    required this.title,
    this.isHeader = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isHeader ? Alignment.center : Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Text(title,
            style: TextStyle(
                fontWeight: isHeader ? FontWeight.bold : FontWeight.normal)),
      ),
    );
  }
}
