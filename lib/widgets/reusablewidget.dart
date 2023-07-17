import 'package:flutter/material.dart';

class CustomDropDownWidget extends StatelessWidget {
  // const CustomDropDownWidget({super.key});
  List<String> values;
  double width;
  // ignore: use_key_in_widget_constructors
  CustomDropDownWidget({required this.values, required this.width});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: width,
      decoration: BoxDecoration(
        color: const Color.fromARGB(66, 32, 27, 27),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButton(
        value: values.first,
        items: values
            .map(
              (e) => DropdownMenuItem(
                value: e,
                child: Text(e),
              ),
            )
            .toList(),
        onChanged: (_) {},
        underline: Container(),
        dropdownColor: const Color.fromRGBO(53, 53, 53, 1.0),
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
