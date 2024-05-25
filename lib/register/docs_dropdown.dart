import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';
import 'package:bookmywarehouse_partner/constants/colors/colors.dart';
import 'package:bookmywarehouse_partner/constants/styles/styles.dart';
import 'package:bookmywarehouse_partner/getx/getx_services.dart';

class DocumnentsDropDown extends StatefulWidget {
  const DocumnentsDropDown({super.key});

  @override
  State<DocumnentsDropDown> createState() => _DocumnentsDropDownState();
}

class _DocumnentsDropDownState extends State<DocumnentsDropDown> {
  List<ValueItem<int>> selectedOptions = [];
  final AppSevervicesController appServicesController = Get.find();

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    return SizedBox(
      height: height * 0.06,
      child: Center(
        child: MultiSelectDropDown<int>(
          borderRadius: 10,
          onOptionSelected: (List<ValueItem<int>> selected) {
            setState(() {
              selectedOptions = selected;
              if (selected.isNotEmpty) {
                appServicesController.selectedDocument.value =
                    selected.first.value!;
              } else {
                appServicesController.selectedDocument.value = 0;
              }
            });
          },
          hint: 'Select Documents',
          hintStyle: Styles.textStyleTwo,
          options: const <ValueItem<int>>[
            ValueItem<int>(label: 'AADHAR CARD', value: 1),
            ValueItem<int>(label: 'PAN CARD', value: 2),
          ],
          selectionType: SelectionType.single,
          chipConfig: const ChipConfig(wrapType: WrapType.wrap),
          fieldBackgroundColor: AppColor.textfieldBackground,
          hintColor: AppColor.fontBlack,
          dropdownHeight: 100,
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
