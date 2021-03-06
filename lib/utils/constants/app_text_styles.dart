import 'package:firebase1/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';


class AppTextStyles {
  static const TextStyle kInputTextMedium = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 16.0,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15,
  );
  static const TextStyle kSubtitle3Medium = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 14.0,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.15,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle kLogoBudget = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 72.0,
    fontStyle: FontStyle.normal,
    letterSpacing: -5,
    color: Colors.white,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle kLogoSubtitle = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 11.0,
    fontStyle: FontStyle.normal,
    color: Colors.white,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle kPoweredBy = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 12.0,
    fontStyle: FontStyle.italic,
    color: Color.fromRGBO(255, 255, 255, 0.5),
    fontWeight: FontWeight.w300,
  );

  static const TextStyle kNextButtonMedium = TextStyle(
    fontFamily: 'Roboto',
    color: AppColors.kWhite,
    fontWeight: FontWeight.w500,
    fontSize: 14.0,
    letterSpacing: 0.4,
  );

  static const TextStyle kPrimaryTextLoginPage = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 18,
    fontFamily: "Roboto",
    color: AppColors.kCyan,
  );

  static const TextStyle kSecondaryTextLoginPage = TextStyle(
    fontSize: 16,
    fontFamily: "Roboto",
    letterSpacing: 0.15,
    color: Color.fromRGBO(0, 0, 0, 0.58),
  );

  static const TextStyle kSecondaryBoldTextLoginPage = TextStyle(
    color: AppColors.kPurple,
    fontWeight: FontWeight.w400,
    fontSize: 16,
    letterSpacing: 0.15,
    fontFamily: "Roboto",
  );

  static const TextStyle kContinueTextButton = TextStyle(
    color: AppColors.kContinueTextButton,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    fontFamily: "Roboto",
  );

  static const TextStyle kLoginNextButton = TextStyle(
    color: AppColors.kWhite,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    fontFamily: "Roboto",
  );

  static const TextStyle kTextButtonGoogle = TextStyle(
    color: AppColors.kTextButtonColor,
    fontSize: 13,
    fontWeight: FontWeight.w500,
    fontFamily: "Roboto",
  );

  static const TextStyle kTextButtonFacebook = TextStyle(
    color: AppColors.kWhite,
    fontSize: 13,
    fontWeight: FontWeight.w500,
    fontFamily: "Roboto",
  );

  static const TextStyle kTitleHomeMedium = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 20.0,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.15,
    fontWeight: FontWeight.w500,
    color: Color.fromRGBO(52, 48, 144, 1),
  );
  static const TextStyle kAppBarName = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 24.0,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.15,
    fontWeight: FontWeight.w400,
    color: Color.fromRGBO(255, 255, 255, 1),
  );

  static const TextStyle kSubTitleHomeMedium = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 24.0,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.15,
    fontWeight: FontWeight.w400,
    color: Color.fromRGBO(0, 0, 0, 0.87),
  );

  static const TextStyle kTypeTransactions = TextStyle(
      fontFamily: 'Roboto',
      fontSize: 14,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
      color: Color.fromRGBO(0, 0, 0, 0.38));
  static const TextStyle kValueDayTransactions = TextStyle(
      fontFamily: 'Roboto',
      fontSize: 14,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.1,
      color: Color.fromRGBO(0, 0, 0, 0.38));

  static const TextStyle kSubTitleLastTransactions = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 24.0,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.15,
    fontWeight: FontWeight.normal,
    color: Color.fromRGBO(0, 0, 0, 0.54),
  );
  static const TextStyle kMoment = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 14.0,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.1,
    fontWeight: FontWeight.w500,
    color: Color.fromRGBO(196, 196, 196, 1),
  );

  static const TextStyle kTitleListLastTransictions = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 16.0,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.1,
    fontWeight: FontWeight.w500,
    color: Color.fromRGBO(52, 48, 144, 1),
  );

  static const TextStyle kDateLastTransictions = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 14.0,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.1,
    fontWeight: FontWeight.w400,
    color: Color.fromRGBO(196, 196, 196, 1),
  );
  static const TextStyle kValueLastTransictions = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 16.0,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.1,
    fontWeight: FontWeight.w400,
    color: Color.fromRGBO(0, 0, 0, 0.87),
  );
  static const TextStyle kNoConnection = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 48.0,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.1,
    fontWeight: FontWeight.normal,
    color: AppColors.kCyan,
  );
  static const TextStyle kLabelItemDrawer = TextStyle(
      color: Color.fromRGBO(0, 0, 0, 0.54),
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15,
      fontSize: 14);

  static const TextStyle kSubTitleSignUpText = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w500,
    fontSize: 20.0,
    color: AppColors.kPurple,
    letterSpacing: 0.15,
  );

  static const TextStyle kBackSignUpButton = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w500,
    fontSize: 14.0,
    letterSpacing: 0.4,
  );

  static const TextStyle kPaginationSignUpButton = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w400,
    fontSize: 14.0,
    letterSpacing: 0.15,
  );

  static const TextStyle kForwadSignUpButton = TextStyle(
    color: AppColors.kWhite,
    fontWeight: FontWeight.w500,
    fontFamily: 'Roboto',
    fontSize: 14.0,
    letterSpacing: 0.4,
  );

  static const TextStyle kRecoverPassword = TextStyle(
    fontFamily: 'Roboto',
    color: AppColors.kPurple,
    fontWeight: FontWeight.w500,
    fontSize: 13.0,
    letterSpacing: 0.46,
  );

  static const TextStyle kContinuePassword = TextStyle(
    fontFamily: 'Roboto',
    color: AppColors.kWhite,
    fontWeight: FontWeight.w500,
    fontSize: 14.0,
    letterSpacing: 0.4,
  );
  static const TextStyle kOnBoardingText = TextStyle(
      color: AppColors.kCyan,
      fontFamily: 'Roboto',
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w700,
      fontSize: 34,
      letterSpacing: 0.25);
  static const TextStyle kTextTrasanctionHeader = TextStyle(
    color: AppColors.kWhite,
    fontSize: 26,
    fontWeight: FontWeight.w700,
    fontFamily: "Roboto",
  );

  static const TextStyle kInputLabel = TextStyle(
    fontFamily: "Roboto",
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: Color.fromRGBO(52, 48, 144, 1),
    letterSpacing: 0.15,
  );

  static const TextStyle kPasswordTextLogin = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w400,
    fontSize: 16.0,
    letterSpacing: 0.15,
    color: Color.fromRGBO(0, 0, 0, 0.54),
  );

  static const TextStyle kSaveData = TextStyle(
    color: AppColors.kWhite,
    fontSize: 15,
    fontFamily: 'Roboto',
    letterSpacing: 0.46,
  );

  static const TextStyle kTextTransactions = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w400,
    fontSize: 16.0,
    letterSpacing: 0.15,
    color: AppColors.kPurple,
  );
  static const TextStyle kLastTransaction = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.15,
    color: Color.fromRGBO(0, 0, 0, 0.87),
  );
  static const TextStyle kOutTextStyle = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 16.0,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15,
    color: Color.fromRGBO(255, 255, 255, 0.6),
  );
  static const TextStyle kInTextStyle = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 16.0,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15,
    color: Colors.white,
  );
  static const TextStyle kAllTextStyle = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 16.0,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15,
    color: Color.fromRGBO(255, 255, 255, 0.6),
  );
}