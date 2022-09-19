import 'package:arm_chats/presentation/auth/view_model.dart';
import 'package:arm_chats/utils/custom_colors.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../utils/custom_button.dart';
import '../../../utils/general_functions.dart';

class LoginView extends ConsumerStatefulWidget {
  static const routeName = '/login_view';
  const LoginView({Key? key}) : super(key: key);

  @override
  ConsumerState<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends ConsumerState<LoginView> {
  final phoneController = TextEditingController();
  Country? country;

  @override
  void dispose() {
    super.dispose();
    phoneController.dispose();
  }

  void pickCountry() {
    showCountryPicker(
        context: context,
        onSelect: (Country _country) {
          setState(() {
            country = _country;
          });
        });
  }

  void sendPhoneNumber() {
    String phoneNumber = phoneController.text.trim();
    if (phoneNumber.isNotEmpty) {
      ref
          .read(authControllerProvider)
          .signInWithPhone(context, '+${country != null? country!.phoneCode : "+234"}$phoneNumber');
    } else {
      showSnackBar(context: context, content: 'Fill out all the fields');
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: CustomColors.grayBackgroundColor,
      appBar: AppBar(
        title: const Text('Enter your phone number'),
        elevation: 0,
        backgroundColor: CustomColors.primaryAccentColor,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('ARMChat will need to verify your phone number.'),
              const SizedBox(height: 10),
              Row(
                children: [
                  TextButton(
                    onPressed: pickCountry,
                    style: TextButton.styleFrom(
                        backgroundColor: CustomColors.goldColor),
                    child:  Text(country != null? '+${country!.phoneCode}':'+234'),
                  ),
                  const SizedBox(height: 5),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      controller: phoneController,
                      decoration: const InputDecoration(
                        hintText: 'phone number',
                      ),
                    ),
                  ),
                ],
              ),
             Spacer(),
              CustomButton(
                onPressed: sendPhoneNumber,
                text: 'Verify Number',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
