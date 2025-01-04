import 'package:flutter/material.dart';

import '../../domain/entities/hub.dart';

class CustomDropMenue extends StatelessWidget {
  const CustomDropMenue({super.key, required this.hubList, this.onSelected, required this.label, required this.icon});
 final List<Hub> hubList;
  final Function(int?)? onSelected;
  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      leadingIcon:  Icon(icon),
      label:  Text(label),
      width: MediaQuery.sizeOf(context).width,
      enableFilter: true,
      dropdownMenuEntries: hubList.map<DropdownMenuEntry<int>>((hub) {
        return DropdownMenuEntry(
          value: hub.id,
          label: hub.name,
        );
      }).toList(),
      onSelected: onSelected
    );
  }
}
