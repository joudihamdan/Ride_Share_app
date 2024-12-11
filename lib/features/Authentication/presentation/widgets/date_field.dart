// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../core/utils/string_manager.dart';

class DateField extends StatefulWidget {
  final TextEditingController birthDate;
  const DateField(
    this.birthDate,
  );

  @override
  State<DateField> createState() => _DateFieldState();
}

class _DateFieldState extends State<DateField> {
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2030),
    );
    if (selectedDate != null) {
      setState(() {
        widget.birthDate.text = DateFormat('yyyy-MM-dd').format(selectedDate);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: () {
        _selectDate(context);
      },
      readOnly: true,
      controller: widget.birthDate,
      decoration: InputDecoration(
        labelText: StringManager.birthdate,
      ),
    );
  }
}
