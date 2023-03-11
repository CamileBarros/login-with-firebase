import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_app/login/widgets/button_primary.dart';
import 'package:my_app/login/widgets/input_text.dart';
import 'package:my_app/shared/colors/app_colors.dart';
import 'package:my_app/shared/textStyle/app_text_style.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();


  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final translate = AppLocalizations.of(context);
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 74, left: 16, right: 16, bottom: 32),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: AppColors.gradientLogo,
                ),
                borderRadius: BorderRadius.circular(100),
              ),
              height: 116,
              width: 116,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 26, 30, 24),
                child: SvgPicture.asset('assets/images/ic_flutter.svg'),
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            Text(
              textAlign: TextAlign.center,
              translate!.welcome,
              style: AppTextStyle.title,
            ),
            const SizedBox(
              height: 22,
            ),
            Text(
              textAlign: TextAlign.center,
              translate.descriptionLogin,
              style: AppTextStyle.subtitle,
            ),
            const SizedBox(
              height: 48,
            ),
            InputText(hintText: translate.emailHint, textController: emailController),
            const SizedBox(
              height: 16,
            ),
            InputText(hintText: translate.passwordHint, textController: passwordController),
            const SizedBox(
              height: 72,
            ),
            ButtonPrimary(
              onTap: () {},
              text: translate.enter,
            ),
            const SizedBox(
              height: 32,
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: translate.caption1,
                    style: AppTextStyle.caption.copyWith(
                      color: AppColors.textColorSecundary,
                    ),
                  ),
                  TextSpan(
                    recognizer: TapGestureRecognizer()..onTap = () async {},
                    text: translate.caption2,
                    style: AppTextStyle.caption.copyWith(
                      color: AppColors.secondaryColors,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
