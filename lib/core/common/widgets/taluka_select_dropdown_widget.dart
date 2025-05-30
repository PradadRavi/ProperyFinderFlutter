import 'package:flutter/material.dart';
import 'package:propertyfinder/core/common/widgets/drop_down_widget.dart';

class TalukaSelectDropdownWidget extends StatelessWidget {
  const TalukaSelectDropdownWidget({
    super.key,
    required this.fieldName,
    required this.hintName,
  });
  final String fieldName;
  final String hintName;

  @override
  Widget build(BuildContext context) {
    return DropDownWidget(fieldName: fieldName, hintName: hintName);
  }
}
