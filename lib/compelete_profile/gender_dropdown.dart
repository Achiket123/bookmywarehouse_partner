import 'package:bookmywarehouse_partner/constants/colors/colors.dart';
import 'package:bookmywarehouse_partner/constants/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';

class GenderDropDown extends StatefulWidget {
  const GenderDropDown({super.key});

  @override
  State<GenderDropDown> createState() => _GenderDropDownState();
}

class _GenderDropDownState extends State<GenderDropDown> {
  List<ValueItem<int>> selectedOptions = [];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.06,
      child: Center(
        child: MultiSelectDropDown<int>(
          borderRadius: 10,
          onOptionSelected: (List<ValueItem<int>> selected) {
            setState(() {
              selectedOptions = selected;
            });
          },
          hintStyle: Styles.textStyleTwo,
          options: const <ValueItem<int>>[
            ValueItem<int>(label: 'Male', value: 1),
            ValueItem<int>(label: 'Female', value: 2),
            ValueItem<int>(label: 'Other', value: 3),
            ValueItem<int>(label: 'Prefer not to say', value: 4),
          ],
          selectionType: SelectionType.single,
          chipConfig: const ChipConfig(wrapType: WrapType.wrap),
          fieldBackgroundColor: AppColor.textfieldBackground,
          hintColor: AppColor.fontBlack,
          dropdownHeight: 200,
          dropdownBorderRadius: 10.0,
          borderWidth: 1,
          dropdownMargin: 10,
          maxItems: 1,
          optionTextStyle: const TextStyle(fontSize: 16),
          selectedOptionIcon: const Icon(Icons.check_circle),
        ),
      ),
    );
  }
}
