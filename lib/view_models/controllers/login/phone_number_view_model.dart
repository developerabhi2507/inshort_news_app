import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PhoneNumberViewModel extends GetxController {
  final RxBool loading = false.obs;

  final phoneNoController = TextEditingController().obs;
  final phoneNoFocusNode = FocusNode().obs;
  final countryCodeController = TextEditingController().obs;
  final countryCodeFocusNode = FocusNode().obs;

  final RxBool isContinueButtonPressed = false.obs;
  var phoneNumber = ''.obs;

  void updatePhoneNumber(String value) {
    phoneNumber.value = value;
  }

  // void selectCountry(BuildContext context) {
  //   showCountryPicker(
  //       context: context,
  //       onSelect: (Country country) {
  //         country.countryCode;
  //       },
  //       countryListTheme: CountryListThemeData(
  //         borderRadius: const BorderRadius.only(
  //           topLeft: Radius.circular(40.0),
  //           topRight: Radius.circular(40.0),
  //         ),
  //         // Optional. Styles the search field.
  //         inputDecoration: InputDecoration(
  //           labelText: 'Search',
  //           hintText: 'Start typing to search',
  //           prefixIcon: const Icon(Icons.search),
  //           border: OutlineInputBorder(
  //             borderSide: BorderSide(
  //               color: const Color(0xFF8C98A8).withOpacity(0.2),
  //             ),
  //           ),
  //         ),
  //       ));
  // }

  // var selectedCountry = Countr

  // void updatePhoneNumber(String value) {
  //   phoneNoController.value.text = value;
  // }

  // void selectCountry(BuildContext context) {
  //   showCountryPicker(
  //     context: context,
  //     onSelect: (Country country) {
  //       selectedCountry.value = (name: country.name, isoCode: country.countryCode, phoneCode: country.phoneCode);
  //     },
  //   );
  // }

  // void submitPhoneNumber() {
  //   // Implement your phone authentication logic here
  //   // You can use Firebase, Twilio, or any other service for phone authentication
  //   // For simplicity, let's just print the phone number with the country code
  //   if (kDebugMode) {
  //     print('Phone Number: ${selectedCountry.value.phoneCode} ${phoneNoController.value.text}');
  //   }
  // }
}
