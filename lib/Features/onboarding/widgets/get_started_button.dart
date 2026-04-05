import 'package:doctor_app/Core/Theming/colors.dart';
import 'package:doctor_app/Core/helpers/extensions.dart';
import 'package:doctor_app/Core/routing/routes.dart';
import 'package:doctor_app/Core/theming/styles.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
         context.pushNamed(Routes.loginScreen);
      },
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(ColorsManager.mainBlue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: WidgetStatePropertyAll(const Size(double.infinity, 52)),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      child: Text('Get Started', style: TextStyles.font16WhiteSemiBold),
    );
  }
}
