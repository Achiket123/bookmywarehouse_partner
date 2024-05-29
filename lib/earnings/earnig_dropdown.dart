import 'package:bookmywarehouse_partner/constants/colors/colors.dart';
import 'package:bookmywarehouse_partner/constants/styles/styles.dart';
import 'package:bookmywarehouse_partner/getx/getx_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';

class EarningDropDown extends StatefulWidget {
  const EarningDropDown({super.key});

  @override
  State<EarningDropDown> createState() => _EarningDropDownState();
}

class _EarningDropDownState extends State<EarningDropDown> {
  List<ValueItem<int>> selectedOptions = [];
  final AppSevervicesController appServicesController = Get.find();

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return SizedBox(
      height: height * 0.075,
      width: width * 0.5,
      child: Center(
        child: MultiSelectDropDown<int>(
          borderRadius: 10,
          onOptionSelected: (List<ValueItem<int>> selected) {
            setState(() {
              selectedOptions = selected;
              // if (selected.isNotEmpty) {
              //   appServicesController.selectedDocument.value =
              //       selected.first.value!;
              // } else {
              //   appServicesController.selectedDocument.value = 0;
              // }
            });
          },
          // hint: 'Select Documents',

          hintStyle: Styles.textStyleTwo,
          options: const <ValueItem<int>>[
            ValueItem<int>(label: 'Today', value: 1),
            ValueItem<int>(label: 'In past 1 months', value: 2),
            ValueItem<int>(label: 'In past 3 months', value: 2),
          ],
          selectionType: SelectionType.single,
          chipConfig: const ChipConfig(wrapType: WrapType.wrap),
          fieldBackgroundColor: AppColor.backgroundColorOne,
          hintColor: AppColor.fontBlack,
          dropdownHeight: 150,
          dropdownBorderRadius: 10.0,
          borderWidth: 1,
          dropdownMargin: 0,
          maxItems: 1,
          optionTextStyle: const TextStyle(fontSize: 16),
          selectedOptionIcon: const Icon(Icons.check_circle),
        ),
      ),
    );
  }
}
