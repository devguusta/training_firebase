import 'package:firebase1/utils/constants/app_colors.dart';
import 'package:firebase1/utils/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class SignUpFooter extends StatelessWidget {
  final VoidCallback onNext;
  final VoidCallback onBack;
  bool loading;
  SignUpFooter({
    Key? key,
    required this.onNext,
    required this.onBack,
    this.loading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: SizedBox(
          height: 48,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: GestureDetector(
                    onTap: loading ? null : onBack,
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_back,
                          color: Color.fromRGBO(0, 0, 0, 26),
                        ),
                        SizedBox(
                          width: 11,
                        ),
                        Text(
                          "Voltar".toUpperCase(),
                          style: AppTextStyles.kBackSignUpButton,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                borderRadius: BorderRadius.all(Radius.circular(24)),
                onTap: loading ? null : onNext,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: AppColors.kblueGradientAppBar,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(6),
                    child: loading
                        ? Container(
                            height: 20,
                            width: 20,
                            child: Center(
                              child: CircularProgressIndicator(
                                color: Colors.white,
                              ),
                            ),
                          )
                        : Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Continuar".toUpperCase(),
                                style: AppTextStyles.kForwadSignUpButton,
                              ),
                              const SizedBox(width: 12.0),
                              const SizedBox(width: 0.0),
                              const Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              ),
                            ],
                          ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
